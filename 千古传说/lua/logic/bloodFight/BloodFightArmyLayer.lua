--[[
******布阵*******

    -- by Stephen.tao

]]


local BloodFightArmyLayer = class("BloodFightArmyLayer", BaseLayer);

CREATE_SCENE_FUN(BloodFightArmyLayer);
CREATE_PANEL_FUN(BloodFightArmyLayer);

-- BloodFightArmyLayer.LIST_ITEM_HEIGHT = 200; 
BloodFightArmyLayer.LIST_ITEM_HEIGHT = 180;

function BloodFightArmyLayer:ctor(data)
    self.super.ctor(self,data);
    -- EmployManager:initHireRoleList()
    self.fightType = EnumFightStrategyType.StrategyType_BLOOY

    -- self.roleList = CardRoleManager.cardRoleList
    self:initRoleList()
    self:initMercenaryList()
    self:init("lua.uiconfig_mango_new.yongbing.ChooseMercenary");

    self.employ_cost_tip =  tonumber(CCUserDefault:sharedUserDefault():getStringForKey("employ_cost_tip")) or 0;
    local date_time = os.date("*t", MainPlayer:getNowtime())
    -- print("date_time = ",date_time)
    date_time.hour = 0
    date_time.min  = 0
    date_time.sec  = 1
    self.tip_time = os.time(date_time)
    -- print("self.employ_cost_tip = ",self.employ_cost_tip)
    -- print("self.tip_time = ",self.tip_time)

    Public:addBtnWaterEffect(self.btn_challenge, true,1)
end

function BloodFightArmyLayer:onShow()
    self.super.onShow(self)
    self:refreshBaseUI();
    self:refreshUI();
    if self.assistFightView then
        self.assistFightView:onShow()
    end
end

function BloodFightArmyLayer:refreshBaseUI()

end

function BloodFightArmyLayer:initRoleList()
    self.roleList = self.roleList or TFArray:new()
    self.roleList:clear()

    for v in CardRoleManager.cardRoleList:iterator() do
        --if v.level >= 10 then
        if v.level >= 1 then
            self.roleList:pushBack(v)
        end
    end
end
function BloodFightArmyLayer:initMercenaryList()
    self.mercenaryList = self.mercenaryList or TFArray:new() --EmployManager.employRoleList
    self.mercenaryList:clear()

    local mercenary = EmployManager:getMyHireRoleDetailsByType( self.fightType )
    if mercenary ~= nil then
        self.mercenaryList:pushBack(mercenary)
        return
    end
    for v in EmployManager.employRoleList:iterator() do
        if EmployManager:isEmployRoleByPlayerId( v.playerId ) == false then
            self.mercenaryList:pushBack(v)
        end
    end
end
function BloodFightArmyLayer:sortMercenaryList( sort_type )
    function cmp_power( role1 ,role2 )
        local pos1 = ZhengbaManager:getMercenaryIndexByGmId( self.fightType,role1.instanceId ) 
        local pos2 = ZhengbaManager:getMercenaryIndexByGmId( self.fightType,role2.instanceId )
        if pos2 ~= 0 and pos1 == 0 then
            return false
        end
        if role1.power < role2.power then
            return false
        end
        if role1.power == role2.power then
            local info1 = RoleData:objectByID(role1.roleId)
            local info2 = RoleData:objectByID(role2.roleId)
            if info2.quality > info1.quality then 
                return false
            end
        end
        return true
    end

    function cmp_quality( role1 ,role2 )
        local pos1 = ZhengbaManager:getMercenaryIndexByGmId( self.fightType,role1.instanceId ) 
        local pos2 = ZhengbaManager:getMercenaryIndexByGmId( self.fightType,role2.instanceId )
        if pos2 ~= 0 and pos1 == 0 then
            return false
        end
        local info1 = RoleData:objectByID(role1.roleId)
        local info2 = RoleData:objectByID(role2.roleId)
        if info2.quality > info1.quality then
            return false
        end
        if role1.quality == role2.quality then
            if role1.power < role2.power then
                return false
            end
        end
        return true
    end
    if sort_type == 1 then
        self.mercenaryList:sort(cmp_power)
    else
        self.mercenaryList:sort(cmp_quality)
    end
end


function BloodFightArmyLayer:refreshUI()
    if not self.isShow then 
        return;
    end

    local  armylist = ZhengbaManager:getFightList(self.fightType)
    -- print("armylist = ",armylist)
    for pos in pairs(armylist) do
        self:updateIcon(pos)
    end
    self:updateStrategyBaseMsg();

    if not self.table_roleList then
        -- ZhengbaManager:reSortStrategy(self.fightType,self.roleList)
        -- CardRoleManager:setSortBloodStrategyForQuality()
        CardRoleManager:setSortStrategyForQuality(self.fightType,self.roleList);
        local  tableView   =  TFTableView:create();
        self.table_roleList  = tableView;

        tableView.logic    = self;
        tableView:setTableViewSize(self.bg_table:getContentSize());
        tableView:setDirection(TFTableView.TFSCROLLVERTICAL);
        tableView:setVerticalFillOrder(0);

        tableView:addMEListener(TFTABLEVIEW_SIZEFORINDEX, self.cellSizeForTable);
        tableView:addMEListener(TFTABLEVIEW_SCROLL, self.scrollForTable);
        tableView:addMEListener(TFTABLEVIEW_SIZEATINDEX, self.tableCellAtIndex);
        tableView:addMEListener(TFTABLEVIEW_NUMOFCELLSINTABLEVIEW, self.numberOfCellsInTableView);
        Public:bindScrollFun(tableView);
        self.bg_table:addChild(tableView,2);
        self.table_roleList:reloadData();
        self.table_roleList:scrollToYTop(0);
        self.table_roleList:setVisible(false)
    else
        self:refreshTable();
    end

    if not self.table_mercenaryList then
        self:sortMercenaryList( 1 )
        local  tableView   =  TFTableView:create();
        self.table_mercenaryList  = tableView;

        tableView.logic    = self;
        tableView:setTableViewSize(self.bg_table:getContentSize());
        tableView:setDirection(TFTableView.TFSCROLLVERTICAL);
        tableView:setVerticalFillOrder(0);

        tableView:addMEListener(TFTABLEVIEW_SIZEFORINDEX, self.mercenary_cellSizeForTable);
        -- tableView:addMEListener(TFTABLEVIEW_SCROLL, self.mercenary_scrollForTable);
        tableView:addMEListener(TFTABLEVIEW_SIZEATINDEX, self.mercenary_tableCellAtIndex);
        tableView:addMEListener(TFTABLEVIEW_NUMOFCELLSINTABLEVIEW, self.mercenary_numberOfCellsInTableView);
        Public:bindScrollFun(tableView);
        self.bg_table:addChild(tableView,2);
        self.table_mercenaryList:reloadData(); 
        self.table_mercenaryList:scrollToYTop(0);
        -- self.table_mercenaryList:setVisible(false)
    else
        self:refreshMercenaryTable();
    end

    self:onBtnXiaKeChoiceClickHandle(self.btn_xiake)

    if self.roleList:length() == 0 then
        toastMessage(localizable.bloodFightArmyLayer_join)
    end
end

function BloodFightArmyLayer:updateStrategyBaseMsg()
    self.txt_RoleNum:setText(BloodFightManager:getFightRoleNum()  .. "/" .. ZhengbaManager:getMaxNum());
    -- self.txt_power:setText(BloodFightManager:getPower());
    self.txt_power:setText(ZhengbaManager:getPower(self.fightType));
end

function BloodFightArmyLayer:initUI(ui)
	self.super.initUI(self,ui);


    self.currLineUpType = LineUpType.LineUp_BloodyBattle
    -- self.currLineUpType = LineUpType.LineUp_HIRE_TEAM
    self.assistFightView = CommonManager:addAssistFightView(self,self.currLineUpType)

    self.btn_close      = TFDirector:getChildByPath(ui, 'btn_close');

    self.txt_RoleNum = TFDirector:getChildByPath(ui, 'txt_shangzhenrenshu');
    self.txt_power   = TFDirector:getChildByPath(ui, 'txt_zhanlizhi_word');
    self.btn_auto    = TFDirector:getChildByPath(ui, 'btn_yijianshangzhen');

    self.button = {};
    for i=1,9 do
        local btnName = "panel_item" .. i;
        local cell = TFDirector:getChildByPath(ui, btnName)
        self.button[i] = cell

        -- btnName = "btn_icon"..i;
        -- self.button[i].bg = TFDirector:getChildByPath(ui, btnName);
        -- self.button[i].bg:setVisible(false);

        -- self.button[i].icon = TFDirector:getChildByPath(self.button[i].bg ,"img_touxiang");
        -- self.button[i].icon:setVisible(false);
        -- self.button[i].icon:setFlipX(true);

        -- self.button[i].quality  = TFDirector:getChildByPath(ui, btnName);
        -- self.button[i].img_zhiye = TFDirector:getChildByPath(self.button[i], "img_zhiye");
        -- self.button[i].img_zhiye:setVisible(false);

        -- self.button[i].img_death = TFDirector:getChildByPath(ui, "img_death"..i);
        -- self.button[i].img_death:setVisible(false);

        -- self.button[i].img_yong = TFDirector:getChildByPath(self.button[i], "img_yong");
        -- self.button[i].img_yong:setVisible(false);

        -- self.button[i].bg.logic = self;
        -- self.button[i].bg.posIndex = i;
        -- self.button[i].bg.hasRole = false;

        -- self.button[i].logic = self;
        -- self.button[i].posIndex = i;
        -- self.button[i].hasRole = false;

        cell.spawn = TFDirector:getChildByPath(cell, "Panel_Body")
        cell.img_zhiye = TFDirector:getChildByPath(cell, "img_zhiye")
        cell.img_zhiye:setVisible(false)
        cell.logic = self
        cell.posIndex = i
        cell.hasRole = false

        cell.posName = TFDirector:getChildByPath(cell, "img_zhenming")
        cell.img_death = TFDirector:getChildByPath(cell, "img_death" .. i)
        cell.img_death:setVisible(false)
        cell.img_yong = TFDirector:getChildByPath(cell, "img_yong")
        cell.img_yong:setVisible(false)
    end

    self.bg_table      = TFDirector:getChildByPath(ui, 'panel_cardregional');

    self.btn_sort            = TFDirector:getChildByPath(ui, 'btn_xiala');
    self.btn_sort_pos        = TFDirector:getChildByPath(ui, 'btn_zhuangbei');
    self.btn_sort_power      = TFDirector:getChildByPath(ui, 'btn_zhanli');
    self.btn_sort_quality    = TFDirector:getChildByPath(ui, 'btn_pinzhi');
    self.img_select          = TFDirector:getChildByPath(ui, 'img_select');

    self.img_quality_select          = TFDirector:getChildByPath(ui, 'btn_pinzhi-press');
    self.img_power_select          = TFDirector:getChildByPath(ui, 'btn_zhanli-press');
    
    self.bg_sort             = TFDirector:getChildByPath(ui, 'panel_bg');
    -- self.bg_sort:setSwallowTouch(false);
    self.node_menu           = TFDirector:getChildByPath(ui, 'panel_menu');
    self.groupButtonManager  = GroupButtonManager:new( {[1] = self.btn_sort_power, [2] = self.btn_sort_quality});
    Public:addEffect("pinzhizhanli", self.btn_sort_power, 0, 0, 1):setVisible(false)
    Public:addEffect("pinzhizhanli", self.btn_sort_quality, 0, 0, 1):setVisible(false)
    self.groupButtonManager:selectBtn(self.btn_sort_power);

    self.img_quality_select:setVisible(false);
    self.img_power_select:setVisible(true);
    self.node_menu:setVisible(false);
    self.btn_sort:setVisible(true);

    --挑战
    self.btn_challenge       = TFDirector:getChildByPath(ui, 'btn_challenge');

    self.cellModel = createUIByLuaNew("lua.uiconfig_mango_new.bloodybattle.BloodybattleArmyRoleItem")
    self.cellModel:retain()

    self.cellMercenaryModel = createUIByLuaNew("lua.uiconfig_mango_new.yongbing.RoleItem")
    self.cellMercenaryModel:retain()

    self.btn_xiake       = TFDirector:getChildByPath(ui, 'btn_xiake');
    self.btn_yongbing       = TFDirector:getChildByPath(ui, 'btn_yongbing');

    self.btn_xiake:setTextureNormal("ui_new/yongbing/tab_8.png")
    self.btn_yongbing:setTextureNormal("ui_new/yongbing/tab_7h.png")
    self.btn_type_choice = self.btn_yongbing

    self.btn_equipchange = TFDirector:getChildByPath(ui, 'Button_ArmyLayer_1');
end

function BloodFightArmyLayer.onShowSortMenuClickHandle(sender)
    local self = sender.logic;
    self.node_menu:setVisible(not self.node_menu:isVisible());

    -- self.btn_sort:setVisible(false);
end

function BloodFightArmyLayer.onSortSelectClickHandle(sender)
    local self = sender.logic;

    self.node_menu:setVisible(false);
    -- self.btn_sort:setVisible(true);

    if (self.groupButtonManager:getSelectButton() == sender) then
       return;
    end

    self.img_quality_select:setVisible(false);
    self.img_power_select:setVisible(false);

   if sender == self.btn_sort_pos then
        -- CardRoleManager:setSortStrategyForPos(self.fightType,self.roleList);
        self.img_power_select:setVisible(true);
        -- self:sortMercenaryList( 1 )
   elseif sender == self.btn_sort_power then
        -- CardRoleManager:setSortStrategyForPower(self.fightType,self.roleList);
        self.img_power_select:setVisible(true);
        -- self:sortMercenaryList( 1 )
   elseif sender == self.btn_sort_quality then
        -- CardRoleManager:setSortStrategyForQuality(self.fightType,self.roleList);
        self.img_quality_select:setVisible(true);
        -- self:sortMercenaryList( 2 )
   end

   self.groupButtonManager:selectBtn(sender);
   self:refreshTable();
   self:refreshMercenaryTable();
end

function BloodFightArmyLayer.onSortCancelClickHandle(sender)
    local self = sender.logic;
    self.node_menu:setVisible(false);
    self.btn_sort:setVisible(true);
end


function BloodFightArmyLayer.scrollForTable(tableView)
    local self = tableView.logic;
    -- self:removeLongTouchTimer();
end

function BloodFightArmyLayer.cellSizeForTable(tableView,idx)
    return BloodFightArmyLayer.LIST_ITEM_HEIGHT,960
end

function BloodFightArmyLayer.tableCellAtIndex(tableView, idx)
    local self = tableView.logic;
    local cell = tableView:dequeueCell()
    if nil == cell then
        tableView.cells = tableView.cells or {}
        cell = TFTableViewCell:create()
        tableView.cells[cell] = true

        local item_node = TFPanel:create();
        cell:addChild(item_node);
        cell.item_node = item_node;

        for i=1,3 do
            -- local m_node = createUIByLuaNew("lua.uiconfig_mango_new.role.ArmyRoleItem")
            local m_node = self.cellModel:clone()

            m_node.panel_empty = TFDirector:getChildByPath(m_node, 'panel_empty');
            m_node.panel_info  = TFDirector:getChildByPath(m_node, 'panel_info');
            m_node.bar_xuetiao = TFDirector:getChildByPath(m_node, 'bar_xuetiao');
            m_node.img_xuetiao = TFDirector:getChildByPath(m_node, 'img_xuetiao');
            m_node.img_xuetiao:setVisible(false)
            m_node:setName("m_role" .. i);
            m_node:setPosition(ccp(10 + 150 * (i - 1) ,0));

            item_node:addChild(m_node);
            item_node.m_node = m_node;
        end
    end

    for i=1,3 do
        local roleIndex = idx*3 + i;

        local m_node = TFDirector:getChildByPath(cell.item_node, 'm_role' .. i);
        local roleItem = self.roleList:objectAt(roleIndex);
        if  roleItem then
            m_node.panel_empty:setVisible(true);
            m_node.panel_info:setVisible(true);
            self:loadItemNode(m_node,roleItem);
        else
            m_node.panel_empty:setVisible(true);
            m_node.panel_info:setVisible(false);
        end
    end

    return cell
end

function BloodFightArmyLayer.numberOfCellsInTableView(tableView)
    local self = tableView.logic;
    return math.max(math.ceil(self.roleList:length()/3)  ,3);
end



function BloodFightArmyLayer.mercenaryCellClickHandle(cell)
    local playerId = cell.playerId
    local roleId = cell.gmId
    local name = cell.name
    -- print("mercenaryCellClickHandle ",playerId,roleId)
    if playerId and roleId then
        RankManager:requestRoleDataById( playerId, roleId ,{name = name})
    end
end


--添加玩家节点
function BloodFightArmyLayer:loadItemNode(item_node,roleItem)
    
    local btn_icon = TFDirector:getChildByPath(item_node, 'btn_pingzhianniu');
    btn_icon.logic = self;
    btn_icon:setTag(roleItem.gmId);

    btn_icon:addMEListener(TFWIDGET_TOUCHBEGAN, self.cellTouchBeganHandle);
    btn_icon:addMEListener(TFWIDGET_TOUCHMOVED, self.cellTouchMovedHandle);
    btn_icon:addMEListener(TFWIDGET_TOUCHENDED, self.cellTouchEndedHandle);
    btn_icon:addMEListener(TFWIDGET_CLICK,  self.cellClickHandle);

    btn_icon.posIndex = -1;  
    btn_icon.hasRole = true;  
    btn_icon.gmId  = roleItem.gmId;
    btn_icon.roleId  = roleItem.id;

    local img_icon = TFDirector:getChildByPath(item_node, 'img_touxiang');

    -- img_icon:setTexture(roleItem:getHeadPath());
    img_icon:setTexture(roleItem:getIconPath());
    local img_quality = TFDirector:getChildByPath(item_node, 'img_pinzhiditu');
    img_quality:setTexture(GetColorIconByQuality(roleItem.quality));
    -- img_quality:setTexture(GetRoleBgByWuXueLevel(roleItem.martialLevel));


    local txt_name = TFDirector:getChildByPath(item_node, 'txt_name');
    local roleStar = ""
    if roleItem.starlevel > 0 then
        roleStar = roleStar .. " +" .. roleItem.starlevel
    end
    txt_name:setText(roleItem.name..roleStar);

    -- txt_name:setColor(GetColorByQuality(roleItem.quality))

    local img_zhiye = TFDirector:getChildByPath(item_node, 'img_zhiye');
    img_zhiye:setTexture("ui_new/fight/zhiye_".. roleItem.outline ..".png");



    local img_fight = TFDirector:getChildByPath(item_node, 'img_zhan');
    local role_pos = ZhengbaManager:getIndexByRole(self.fightType,roleItem.gmId )
    if role_pos and role_pos ~= 0 then
        img_fight:setVisible(true);
    else
        img_fight:setVisible(false);
    end
    --添加助战标识
    local img_zhu = TFDirector:getChildByPath(item_node, 'img_zhu')
    if AssistFightManager:isInAssist( self.currLineUpType, roleItem.gmId ) then
        img_zhu:setVisible(true)
    else
        img_zhu:setVisible(false)
    end
    
    local txt_level = TFDirector:getChildByPath(item_node, 'txt_lv_word');
    txt_level:setText(roleItem.level);

    item_node.img_xuetiao:setVisible(true)

    local img_wuxuelevel = TFDirector:getChildByPath(item_node, 'img_wuxuelevel');
    img_wuxuelevel:setTexture(GetFightRoleIconByWuXueLevel(roleItem.martialLevel))


    local maxHp = roleItem.blood_maxHp
    local curHp = roleItem.blood_curHp
    item_node.bar_xuetiao:setPercent(curHp/maxHp * 100)

    local bGray = false
    if curHp <= 0 then
        bGray = true
    end
    img_icon:setGrayEnabled(bGray)

end

function BloodFightArmyLayer:removeUI()
	self.super.removeUI(self);

	self.button      = nil;
    self.btn_close   = nil;
    self.lastPoint   = nil;
    self.curIndex    = nil;

    if self.cellModel then
        self.cellModel:release()
        self.cellModel = nil
    end
    if self.cellMercenaryModel then
        self.cellMercenaryModel:release()
        self.cellMercenaryModel = nil
    end
end


function BloodFightArmyLayer.cellClickHandle(sender)
    local self = sender.logic;
    local gmId = sender.gmId;

    if sender.isClick == true then
        play_press()
    end
end


function BloodFightArmyLayer.cellTouchBeganHandle(cell)
    local self = cell.logic;
    if cell.hasRole ~= true then
        print(" == nil ")
        return;
    end

    cell.isClick = true;
    cell.isDrag  = false;
    self.isMove = false;

    -- self.offest = self.table_roleList:getContentOffset();

    self.onLongTouch = function(event)
        if self.isMove == false then
            return;
        end

        local pos = cell:getTouchMovePos();
          
        local v = ccpSub(cell:getTouchStartPos(), cell:getTouchMovePos());
       
        if (v.x < 30 and v.y < 30 )  then
            -- if (v.x < 0 or v.y < 0 ) then
            --     self:removeLongTouchTimer();  
            --     cell.isDrag  = false;
            -- end
            -- self:removeLongTouchTimer();
            -- self.longTouchTimerId = TFDirector:addTimer(0.001, 1, nil, self.onLongTouch); 

        else 
            self:removeLongTouchTimer();    
            if (v.x - v.y > -10) then
                cell.isDrag  = true;
                self.table_roleList:setTouchEnabled(false);
                -- self.table_mercenaryList:setTouchEnabled(false);
            else
                cell.isDrag  = false;
                self.table_roleList:setTouchEnabled(true);
                -- self.table_mercenaryList:setTouchEnabled(true);
            end
        end
    end;

    if (cell.posIndex == -1) then
        self:removeLongTouchTimer();
        self.longTouchTimerId = TFDirector:addTimer(0.001, -1, nil, self.onLongTouch); 
    end

end

function BloodFightArmyLayer.cellTouchMovedHandle(cell)
    local self = cell.logic;
    self.isMove = true;

    if cell.hasRole ~= true then
        return;
    end

  
    local v = ccpSub(cell:getTouchStartPos(), cell:getTouchMovePos());

    if (v.y < 30) then
        -- self.table_roleList:setContentOffset(self.offest );
    end

    local pos = cell:getTouchMovePos();

    if self.selectCussor == nil then
        if (cell.posIndex ~= -1 or cell.isDrag == true ) then
            self:createSelectCussor(cell,pos);
        end
    end

    if cell.isClick == true then
        return;
    end
    -- self.table_roleList:setContentOffset(self.offest );
    self:moveSelectCussor(cell,pos);
end


function BloodFightArmyLayer.cellTouchEndedHandle(cell)
    local self = cell.logic;
    if self.selectCussor then
        self.selectCussor:removeFromParentAndCleanup(true);
        self.selectCussor = nil;
    end

    if cell.hasRole ~= true then
        return;
    end

    self:removeLongTouchTimer();

    local pos = cell:getTouchEndPos();

    self:releaseSelectCussor(cell,pos);
    self.table_roleList:setTouchEnabled(true);
    -- self.table_mercenaryList:setTouchEnabled(true);
end

function BloodFightArmyLayer:removeLongTouchTimer()
    if (self.longTouchTimerId) then
        TFDirector:removeTimer(self.longTouchTimerId);
        self.longTouchTimerId = nil;
    end
end

function BloodFightArmyLayer:createSelectCussor(cell,pos)
    -- play_press();

    -- cell.isClick = false;

    -- self.lastPoint = pos;

    -- local role = RoleData:objectByID(cell.roleId);
    -- print("cell.roleId=",cell.roleId)
    -- -- local role = CardRoleManager:getRoleByGmid(cell.gmId);
    -- self.selectCussor = TFImage:create();
    -- self.selectCussor:setFlipX(true);
    -- self.selectCussor:setTexture(role:getHeadPath());
    -- self.selectCussor:setScale(20 / 15.0);
    -- self.selectCussor:setPosition(pos);
    -- self:addChild(self.selectCussor);
    -- self.selectCussor:setZOrder(100);
   
    -- self.curIndex = cell.posIndex;

    play_press();

    cell.isClick = false;

    self.lastPoint = pos;

    local roleData = RoleData:objectByID(cell.roleId)
    local armatureID = roleData.image
    ModelManager:addResourceFromFile(1, armatureID, 1)
    local model = ModelManager:createResource(1, armatureID)
    model:setScale(0.5)
    self.selectCussor = model 
    self.selectCussor:setPosition(pos);
    self:addChild(self.selectCussor);
    self.selectCussor:setZOrder(100);

    self.curIndex = cell.posIndex;
    
end

function BloodFightArmyLayer:moveSelectCussor(cell,pos)
    local v = ccpSub(pos, self.lastPoint);
    self.lastPoint = pos;
    local scp = ccpAdd(self.selectCussor:getPosition(), v);
    self.selectCussor:setPosition(scp);
    self.selectCussor:setVisible(true);

    self.curIndex = nil;
    if  self.bg_table:hitTest(pos) then
        self.curIndex = -1;
    end
    for i=1,9 do
        if  self.button[i]:hitTest(pos) then
            self.curIndex = self.button[i].posIndex;
            break;
        end
    end

end

function BloodFightArmyLayer:releaseSelectCussor(cell,pos)

    if cell.isClick == false  then
        if (self.curIndex == nil) then
            return;
        end

        local dargRole      = CardRoleManager:getRoleByGmid(cell.gmId);
        if dargRole == nil then
            dargRole = EmployManager:getMercenaryInAllEmployRole( cell.gmId )
        end
        local toReplaceRole =  ZhengbaManager:getRoleByIndex(self.fightType,self.curIndex);
        if toReplaceRole == nil then
            local mercenary_id =  ZhengbaManager:getMercenaryGmIdByIndex(self.fightType,self.curIndex);
            if mercenary_id ~= 0 then
                toReplaceRole = EmployManager:getMercenaryInAllEmployRole( mercenary_id )
            end
        end
        --在阵中释放
        if (self.curIndex ~= -1) then 

            --从列表中拖到阵中
            if (cell.posIndex == -1) then
                local role_pos = ZhengbaManager:getIndexByRole(self.fightType,cell.gmId )
                --本来已经在阵中
                if role_pos and role_pos ~= 0 then

                    --且不是本角色目前所在的位置，做位置变更
                    if (toReplaceRole == nil or (toReplaceRole and toReplaceRole.gmId ~= dargRole.gmId)) then
                        self:ChangePos((role_pos - 1), (self.curIndex - 1))

                        play_buzhenyidong()

                    end
                --要上阵，但是已经到达上限
                elseif (toReplaceRole == nil and not ZhengbaManager:canAddFightRole(self.fightType)) then
                    if ZhengbaManager:getMaxNum() == 5 then
                        toastMessage(localizable.common_function_number_out);  
                    else
                        local needLevel = FunctionOpenConfigure:getOpenLevel(700 + (ZhengbaManager:getMaxNum() + 1))
                        if MainPlayer:getLevel() < needLevel then
                            toastMessage(stringUtils.format(localizable.common_function_up_number,needLevel, (BloodFightManager.maxNum + 1)) )
                        end
                    end
                else
                    --check是否为助战侠客
                    if AssistFightManager:isInAssist( self.currLineUpType, cell.gmId ) then
                        CommonManager:showOperateSureLayer(
                                        function()
                                            AssistFightManager:updateRoleOff(self.currLineUpType, cell.gmId)
                                            self:OnBattle(cell.gmId, (self.curIndex - 1))
                                            play_buzhenyidong()
                                        end,
                                        function()
                                            AlertManager:close()
                                        end,
                                        {
                                        title = localizable.common_tips ,
                                        msg = localizable.common_tips_zhuzhan,
                                        }
                                    )
                    else
                        self:OnBattle(cell.gmId, (self.curIndex - 1))

                        play_buzhenyidong()
                    end

                end

            --阵中操作，更换位置   
            else
                self:ChangePos((cell.posIndex - 1), (self.curIndex - 1))

                play_buzhenyidong()
            end

            return;
        end

        --在右边列表释放
        if (self.curIndex == -1) then

            if (cell.posIndex == -1 ) then
                --放弃上阵，不做操作

            else

                    self:OutBattle(cell.gmId)

                    play_buzhenluoxia();
                --end
            end
        end
    end

    if cell:hitTest(pos) then     
        -- BloodFightArmyLayer.cellClickHandle(cell);
    end
end


function BloodFightArmyLayer:registerEvents()
    self.super.registerEvents(self);

    ADD_ALERT_CLOSE_LISTENER(self,self.btn_close);
    self.btn_close:setClickAreaLength(100);

    for i=1,9 do
        self.button[i]:addMEListener(TFWIDGET_CLICK,  self.cellClickHandle,1);
        self.button[i]:addMEListener(TFWIDGET_TOUCHBEGAN, self.cellTouchBeganHandle,1);
        self.button[i]:addMEListener(TFWIDGET_TOUCHMOVED, self.cellTouchMovedHandle);
        self.button[i]:addMEListener(TFWIDGET_TOUCHENDED, self.cellTouchEndedHandle);
    end


    self.btn_sort.logic = self;
    -- self.btn_sort_pos.logic = self;
    self.btn_sort_power.logic = self;
    self.btn_sort_quality.logic = self;
    self.bg_sort.logic = self;

    self.btn_sort:addMEListener(TFWIDGET_CLICK,  audioClickfun(self.onShowSortMenuClickHandle));
    -- self.btn_sort_pos:addMEListener(TFWIDGET_CLICK,  audioClickfun(self.onSortSelectClickHandle),1);
    self.btn_sort_power:addMEListener(TFWIDGET_CLICK,  audioClickfun(self.onSortSelectClickHandle),1);
    self.btn_sort_quality:addMEListener(TFWIDGET_CLICK,  audioClickfun(self.onSortSelectClickHandle),1);
    -- self.bg_sort:addMEListener(TFWIDGET_CLICK,  audioClickfun(self.onSortCancelClickHandle));


    self.btn_challenge.logic = self
    self.btn_challenge:addMEListener(TFWIDGET_CLICK,audioClickfun(self.onBtnAttackClickHandle))

    self.btn_xiake.logic = self
    self.btn_xiake:addMEListener(TFWIDGET_CLICK,audioClickfun(self.onBtnXiaKeChoiceClickHandle))

    self.btn_yongbing.logic = self
    self.btn_yongbing:addMEListener(TFWIDGET_CLICK,audioClickfun(self.onBtnYongBingChoiceClickHandle))

    self.callEquipChange = function(sender)
        XiaKeExchangeManager:openEquipChangeLayer()
    end
    self.btn_equipchange:addMEListener(TFWIDGET_CLICK,audioClickfun(self.callEquipChange))

    if self.assistFightView then
        self.assistFightView:registerEvents()
    end


    self.AllEmployInfoMessageCallBack = function(event)
        self:initMercenaryList()
        self:refreshMercenaryTable()
        self:refreshUI()
    end

    TFDirector:addMEGlobalListener(EmployManager.AllEmployInfoMessage, self.AllEmployInfoMessageCallBack)
    self.EmploySingleRoleErrorCallBack = function(event)
        -- self:initMercenaryList()
        -- self:refreshMercenaryTable()
        EmployManager:requestAllEmployInfo()
    end

    TFDirector:addMEGlobalListener(EmployManager.EmploySingleRoleErrorNotice, self.EmploySingleRoleErrorCallBack)

    self.EmploySingleRoleSuccessNoticeCallBack = function(event)
        self:initMercenaryList()
        self:refreshMercenaryTable()
        self:refreshUI()
        local mercenary = EmployManager:getMyHireRoleDetailsByType(self.fightType)
        if mercenary then
            BloodFightManager:OnBattle(mercenary.instanceId, self.mercenary_pos)
        end
    end

    TFDirector:addMEGlobalListener(EmployManager.EmploySingleRoleSuccessNotice, self.EmploySingleRoleSuccessNoticeCallBack)

    -- self.updateFormationSucess = function(event)
    --     if self.clickCallBack then
    --         TFFunction.call(self.clickCallBack)
    --     end
    -- end

    -- TFDirector:addMEGlobalListener(EmployManager.UpdateEmployFormationMessage, self.updateFormationSucess)


    self.updatePosCallBack = function(event)
        self:updateIcon(event.data[1])
        self:updateStrategyBaseMsg();
    end;
    TFDirector:addMEGlobalListener(BloodFightManager.UPDATE_STARTEGY_POS ,self.updatePosCallBack ) ;




    self.updateGenerralCallBack = function(event)
        print("self.updateGenerralCallBack")
        self:refreshTable();
        self:refreshMercenaryTable()
    end;
    TFDirector:addMEGlobalListener(BloodFightManager.UPDATE_GENERRAL_LIST ,self.updateGenerralCallBack ) ;

    if XiaKeExchangeManager:IsOpenEquipChange() == true then
        self.btn_equipchange:setVisible(true)
    else
        self.btn_equipchange:setVisible(false)
    end
end


function BloodFightArmyLayer:refreshTable()
    if self.table_roleList == nil then
        return
    end
    local choice = self.groupButtonManager:getSelectButton()

    if choice == self.btn_sort_pos then
        CardRoleManager:setSortStrategyForPos(self.fightType,self.roleList);
    elseif choice == self.btn_sort_power then
        CardRoleManager:setSortStrategyForPower(self.fightType,self.roleList);
    elseif choice == self.btn_sort_quality then
        CardRoleManager:setSortStrategyForQuality(self.fightType,self.roleList);
    end

    -- ZhengbaManager:reSortStrategy(self.fightType ,self.roleList)
    local tb_pos = self.table_roleList:getContentOffset();
    self.table_roleList:reloadData();
    local currentSize = self.table_roleList:getContentSize()
    local tabSize = self.table_roleList:getSize()
    tb_pos.y = math.max(tb_pos.y , tabSize.height - currentSize.height)
    self.table_roleList:setContentOffset(tb_pos);
end
function BloodFightArmyLayer:refreshMercenaryTable()
    if self.table_mercenaryList == nil then
        return
    end

    local choice = self.groupButtonManager:getSelectButton()

    if choice == self.btn_sort_pos then
        self:sortMercenaryList( 1 )
    elseif choice == self.btn_sort_power then
        self:sortMercenaryList( 1 )
    elseif choice == self.btn_sort_quality then
        self:sortMercenaryList( 2 )
    end

    -- ZhengbaManager:reSortStrategy(self.fightType ,self.roleList)
    -- local tb_pos = self.table_mercenaryList:getContentOffset();
    self.table_mercenaryList:reloadData();
    -- local currentSize = self.table_mercenaryList:getContentSize()
    -- local tabSize = self.table_mercenaryList:getSize()
    -- tb_pos.y = math.max(tb_pos.y , tabSize.height - currentSize.height)
    -- self.table_mercenaryList:setContentOffset(tb_pos);
end

function BloodFightArmyLayer:removeEvents()
    self.super.removeEvents(self)

    if self.assistFightView then
        self.assistFightView:removeEvents()
    end
    TFDirector:removeMEGlobalListener(BloodFightManager.UPDATE_STARTEGY_POS, self.updatePosCallBack );
    self.updatePosCallBack = nil;
    TFDirector:removeMEGlobalListener(EmployManager.AllEmployInfoMessage, self.AllEmployInfoMessageCallBack)
    self.AllEmployInfoMessageCallBack = nil
    TFDirector:removeMEGlobalListener(EmployManager.EmploySingleRoleErrorNotice, self.EmploySingleRoleErrorCallBack)
    self.EmploySingleRoleErrorCallBack = nil
    TFDirector:removeMEGlobalListener(EmployManager.EmploySingleRoleSuccessNotice, self.EmploySingleRoleSuccessNoticeCallBack)
    self.EmploySingleRoleSuccessNoticeCallBack = nil


    TFDirector:removeMEGlobalListener(BloodFightManager.UPDATE_GENERRAL_LIST, self.updateGenerralCallBack );
    self.updateGenerralCallBack = nil;

    -- TFDirector:removeMEGlobalListener(EmployManager.UpdateEmployFormationMessage, self.updateFormationSucess)
    -- self.updateFormationSucess = nil
end

function BloodFightArmyLayer:updateIcon( index )
    local role, isMercenary= BloodFightManager:getRoleByIndex(index)
    local cell = self.button[index]
    local model = cell.model
    if model then
        cell.spawn:removeChild(model)
        cell.model = nil
    end

    local show = role ~= nil
    cell.posName:setVisible(not show)
    cell.img_zhiye:setVisible(show)
    cell.img_yong:setVisible(isMercenary == 1)

    if role and isMercenary == 0 then
        -- self.button[index].icon:setVisible(true);
        -- self.button[index].icon:setTexture(role:getHeadPath());

        -- self.button[index].bg:setVisible(true);
        -- self.button[index].quality:setTextureNormal(GetColorRoadIconByQuality(role.quality));
        -- -- self.button[index].quality:setTextureNormal(GetRoleBgByWuXueLevel_circle(role.martialLevel))

        -- self.button[index].img_zhiye:setVisible(true);
        -- self.button[index].img_zhiye:setTexture("ui_new/fight/zhiye_".. role.outline ..".png");

        -- self.button[index].img_yong:setVisible(false);

        -- self.button[index].bg.hasRole = true;
        -- self.button[index].bg.gmId  = role.gmId;
        -- self.button[index].bg.roleId  = role.id;

        -- local maxHp = role.blood_maxHp
        -- local curHp = role.blood_curHp
        -- local bGray = false
        -- if curHp <= 0 then
        --     bGray = true
        -- end
        -- self.button[index].icon:setGrayEnabled(bGray)
        -- self.button[index].img_death:setVisible(bGray)
        -- Public:addLianTiEffect(self.button[index].icon,role:getMaxLianTiQua(),true)

        cell.img_zhiye:setTexture("ui_new/fight/zhiye_".. role.outline ..".png");
        cell.hasRole = true;
        cell.gmId  = role.gmId;
        cell.roleId = role.id;

         -- local role = CardRoleManager:getRoleByGmid(role.gmId);
        local roleData =  RoleData:objectByID(role.id)
        local armatureID = roleData.image
        ModelManager:addResourceFromFile(1, armatureID, 1)
        local model = ModelManager:createResource(1, armatureID)
        model:setScale(0.6)
        cell.spawn:addChild(model)
        cell.model = model

        local maxHp = role.blood_maxHp
        local curHp = role.blood_curHp
        local bGray = false
        if curHp <= 0 then
            bGray = true
        else
            ModelManager:playWithNameAndIndex(model, "stand", -1, 1, -1, -1)
        end
        cell.spawn:setGrayEnabled(bGray)
        cell.img_death:setVisible(bGray)
        Public:addLianTiEffect(cell,role:getMaxLianTiQua(),true)
        return
    elseif role and isMercenary == 1 then

        local role_base = RoleData:objectByID(role.roleId)
        if role_base then
            -- self.button[index].icon:setVisible(true);
            -- self.button[index].icon:setTexture(role_base:getHeadPath());

            -- self.button[index].bg:setVisible(true);
            -- self.button[index].img_yong:setVisible(true);
            -- self.button[index].quality:setTextureNormal(GetColorRoadIconByQuality(role.quality));
            -- -- self.button[index].quality:setTextureNormal(GetRoleBgByWuXueLevel_circle(role_base.martialLevel))

            -- self.button[index].img_zhiye:setVisible(true);
            -- self.button[index].img_zhiye:setTexture("ui_new/fight/zhiye_".. role_base.outline ..".png");

            -- self.button[index].bg.hasRole = true;
            -- self.button[index].bg.gmId  = role.instanceId;
            -- self.button[index].bg.roleId     = role.roleId;

            -- local bGray = false
            -- if has_mercenary then
            --     local curHp = role.hp
            --     if curHp <= 0 then
            --         bGray = true
            --     end
            -- end
            -- self.button[index].icon:setGrayEnabled(bGray)
            -- self.button[index].img_death:setVisible(bGray)
            -- Public:addLianTiEffect(self.button[index].icon,role.forgingQuality,true)
            cell.img_zhiye:setTexture("ui_new/fight/zhiye_".. role_base.outline ..".png");
            cell.hasRole = true
            cell.gmId  = role.instanceId
            cell.roleId = role.roleId

            local armatureID = role_base.image
            ModelManager:addResourceFromFile(1, armatureID, 1)
            local model = ModelManager:createResource(1, armatureID)
            model:setScale(0.6)
            cell.spawn:addChild(model)
            cell.model = model

            local bGray = false
            if has_mercenary then
                local curHp = role.hp
                if curHp <= 0 then
                    bGray = true
                else
                    ModelManager:playWithNameAndIndex(model, "stand", -1, 1, -1, -1)
                end
            end
            cell.spawn:setGrayEnabled(bGray)
            cell.img_death:setVisible(bGray)
            Public:addLianTiEffect(cell,role.forgingQuality,true)
            return
        end
    end
    -- self.button[index].img_zhiye:setVisible(false);
    -- self.button[index].icon:setVisible(false);
    -- self.button[index].img_yong:setVisible(false);
    -- self.button[index].bg:setVisible(false);
    -- self.button[index].bg.hasRole = false;
    -- self.button[index].icon:setGrayEnabled(false)
    -- self.button[index].img_death:setVisible(false)
    -- Public:addLianTiEffect(self.button[index].icon,0,false)
    cell.hasRole = false;   
    Public:addLianTiEffect(cell,0,false)
end


-- 上阵
function BloodFightArmyLayer:OnBattle(gmid, posIndex)
    local role = CardRoleManager:getRoleByGmid(gmid)
    if role == nil then
        local mercenary = EmployManager:getMyHireRoleDetailsByType( self.fightType )
        if mercenary == nil then
            if EmployManager:isExistInAllEmployRole( gmid ) == false then
                toastMessage(localizable.common_nothis_hero)
                return
            end
            local _mercenary = self:findInfoInList( gmid )
            if _mercenary and self:isSameRoleID(_mercenary.roleId) then
                toastMessage(localizable.common_not_same_hero)
                return
            end

            local employInfo = EmployManager:getMercenaryInAllEmployRole( gmid )
            if EmployManager:isFirstHire() ==false and self.tip_time > self.employ_cost_tip then
                local layer = AlertManager:addLayerByFile("lua.logic.employ.EmploySureLayer",AlertManager.BLOCK_AND_GRAY,AlertManager.TWEEN_1);
                layer:setLayerInfo( employInfo.name,math.floor(employInfo.power*0.1+1000),function (ischoice)
                    EmployManager:employSingleRoleRequest( employInfo.playerId,gmid,self.fightType)
                    if ischoice then
                        self.employ_cost_tip = MainPlayer:getNowtime()
                        CCUserDefault:sharedUserDefault():setStringForKey("employ_cost_tip",self.employ_cost_tip)
                        CCUserDefault:sharedUserDefault():flush()
                    end
                end )
                AlertManager:show();
            else
                EmployManager:employSingleRoleRequest( employInfo.playerId,gmid,self.fightType )
            end
            self.mercenary_pos = posIndex
            return
        else
            if self:isSameRoleID(mercenary.roleId) then
                -- toastMessage("仅允许上阵同一个英雄")
                toastMessage(localizable.common_not_same_hero)
                return
            end
            
        end
        local curHp = mercenary.blood_curHp or mercenary.hp
        if mercenary.state ~= 1 or curHp <= 0 then
            toastMessage(localizable.common_dead)
            return
        end
    else
        if self:isSameRoleID(role.id) then
            -- toastMessage("仅允许上阵同一个英雄")
            toastMessage(localizable.common_not_same_hero)
            return
        end
        if role.blood_curHp <= 0 then
            toastMessage(localizable.common_dead)
            return
        end
    end
    BloodFightManager:OnBattle(gmid, posIndex)
end
function BloodFightArmyLayer:isSameRoleID( roleId )
    local list = ZhengbaManager:getFightList(self.fightType)
    for i=1,9 do
        if list[i] and list[i] ~= 0 then
            local role = CardRoleManager:getRoleByGmid(list[i])
            if role  then
                if role.id == roleId then
                    return true
                end
            else
                local mercenary = self:findInfoInList( list[i] )
                if mercenary then
                   if  mercenary.roleId == roleId then
                        return true
                    end
                end
            end
        end
    end
    return false
end
-- 下阵
function BloodFightArmyLayer:OutBattle(gmid)
    BloodFightManager:OutBattle(gmid)
end

-- 换位置
function BloodFightArmyLayer:ChangePos(oldPos, newPos)
    BloodFightManager:ChangePos(oldPos, newPos)
end

-- -- 下阵
-- function BloodFightArmyLayer:OutBattle(gmid)
--     local list = ZhengbaManager:getFightList(self.fightType)
--     for i=1,10 do
--         if list[i] and list[i] == gmid then
--             list[i] = 0
--         end
--     end
--     ZhengbaManager:qunHaoDefFormationSet(self.fightType, list )
--     self:refreshUI();
-- end

-- -- 换位置
-- function BloodFightArmyLayer:ChangePos(oldPos, newPos)
--     local list = ZhengbaManager:getFightList(self.fightType)
--     local temp = list[oldPos] or 0
--     list[oldPos] = list[newPos] or 0
--     list[newPos] = temp
--     ZhengbaManager:qunHaoDefFormationSet(self.fightType, list )
--     self:refreshUI();
-- end


function BloodFightArmyLayer:isEmptyArmy()
    local list = ZhengbaManager:getFightList(self.fightType)
    for i=1,10 do
        if list[i] and list[i] ~= 0 then
            return false
        end
    end
    return true
end

function BloodFightArmyLayer.onBtnAttackClickHandle(sender)
    local self      = sender.logic
    local section   = self.section

    if BloodFightManager:CheckAllRuleReachBeforeAttack() == false then
        return
    end
    
    -- AlertManager:close()
    -- AlertManager:close()
    AlertManager:close(AlertManager.TWEEN_NONE)
    AlertManager:close(AlertManager.TWEEN_NONE)
    BloodFightManager:Attack(section)

end

function BloodFightArmyLayer.onBtnXiaKeChoiceClickHandle(sender)
    local self = sender.logic
    if sender == self.btn_type_choice then
        return
    end
    self.btn_type_choice =sender
    self.btn_xiake:setTextureNormal("ui_new/yongbing/tab_8h.png")
    self.btn_yongbing:setTextureNormal("ui_new/yongbing/tab_7.png")
    self.table_roleList:setVisible(true)
    self.table_mercenaryList:setVisible(false)
end

function BloodFightArmyLayer.onBtnYongBingChoiceClickHandle(sender)
    local self = sender.logic
    if sender == self.btn_type_choice then
        return
    end
    self.btn_type_choice =sender
    self.btn_xiake:setTextureNormal("ui_new/yongbing/tab_8.png")
    self.btn_yongbing:setTextureNormal("ui_new/yongbing/tab_7h.png")

    self.table_roleList:setVisible(false)
    self.table_mercenaryList:setVisible(true)
end

function BloodFightArmyLayer.mercenary_cellSizeForTable(tableView,idx)
    return 235,960
end

function BloodFightArmyLayer.mercenary_tableCellAtIndex(tableView, idx)
    local self = tableView.logic;
    local cell = tableView:dequeueCell()
    if nil == cell then
        tableView.cells = tableView.cells or {}
        cell = TFTableViewCell:create()
        tableView.cells[cell] = true

        local item_node = TFPanel:create();
        cell:addChild(item_node);
        cell.item_node = item_node;

        for i=1,3 do
            -- local m_node = createUIByLuaNew("lua.uiconfig_mango_new.role.ArmyRoleItem")
            local m_node = self.cellMercenaryModel:clone()

            m_node.panel_empty = TFDirector:getChildByPath(m_node, 'panel_empty');
            m_node.panel_card = TFDirector:getChildByPath(m_node, 'panel_card');
            m_node.panel_card2 = TFDirector:getChildByPath(m_node, 'panel_card2');
            m_node.panel_card.img_huangdi = TFDirector:getChildByPath(m_node.panel_card, 'img_huangdi');

            m_node.panel_card.img_huangdi:addMEListener(TFWIDGET_TOUCHBEGAN, self.cellTouchBeganHandle);
            m_node.panel_card.img_huangdi:addMEListener(TFWIDGET_TOUCHMOVED, self.cellTouchMovedHandle);
            m_node.panel_card.img_huangdi:addMEListener(TFWIDGET_TOUCHENDED, self.cellTouchEndedHandle);
            m_node.panel_card.img_huangdi:addMEListener(TFWIDGET_CLICK, self.mercenaryCellClickHandle);

            m_node.panel_card2.img_huangdi = TFDirector:getChildByPath(m_node.panel_card2, 'img_huangdi');

            m_node.panel_card2.img_huangdi:addMEListener(TFWIDGET_TOUCHBEGAN, self.cellTouchBeganHandle);
            m_node.panel_card2.img_huangdi:addMEListener(TFWIDGET_TOUCHMOVED, self.cellTouchMovedHandle);
            m_node.panel_card2.img_huangdi:addMEListener(TFWIDGET_TOUCHENDED, self.cellTouchEndedHandle);

            m_node.panel_card2:setVisible(false)
            m_node.panel_card:setVisible(false)
            m_node.panel_empty:setVisible(true)
            m_node:setName("m_mercenary" .. i);
            m_node:setPosition(ccp(20 + 150 * (i - 1) ,0));

            item_node:addChild(m_node);
            item_node.m_node = m_node;
        end
    end

    for i=1,3 do
        local roleIndex = idx*3 + i;

        local m_node = TFDirector:getChildByPath(cell.item_node, 'm_mercenary' .. i);
        local roleItem = self.mercenaryList:objectAt(roleIndex);
        if  roleItem then
            local mercenary = EmployManager:getMyHireRoleDetailsByType( self.fightType)
            m_node.panel_empty:setVisible(false);
            if mercenary then
                m_node.panel_card2:setVisible(true)
                m_node.panel_card:setVisible(false)
                self:_loadMercenaryNode(m_node.panel_card2,roleItem);
            else
                m_node.panel_card:setVisible(true)
                m_node.panel_card2:setVisible(false)
                self:loadMercenaryNode(m_node.panel_card,roleItem);
            end
        else
            m_node.panel_empty:setVisible(true);
            m_node.panel_card:setVisible(false)
            m_node.panel_card2:setVisible(false)
        end

    end

    return cell
end

function BloodFightArmyLayer.mercenary_numberOfCellsInTableView(tableView)
    local self = tableView.logic;
    return math.ceil(self.mercenaryList:length()/3)
end



--[[
message EmployOtherRoleInfo
{
    required int64 instanceId = 1;      //角色实例id
    required int32 playerId = 2;        //佣兵主人id
    required string name = 3;           //佣兵主人名字
    required int32 relation  = 4;       //关系 二进制 00 表示没关系 01表示好友 10表示帮派 11表示好友和帮派
    required int32 roleId = 5;          //角色id
    required int32 level = 6;           //等级
    required int32 start = 7;           //星级
    required int32 martial = 8;         //秘籍重数
    required int32 power = 9;           //战斗力
}

]]




function BloodFightArmyLayer:_loadMercenaryNode(item_node,roleItem)

    local roleInfo = RoleData:objectByID(roleItem.roleId)
    if roleInfo == nil then
        item_node:setVisible(false)
        return
    end
    -- local btn_icon = TFDirector:getChildByPath(item_node, 'btn_pingzhianniu');
    item_node.img_huangdi.logic = self;
    item_node.img_huangdi:setTag(roleItem.instanceId);


    item_node.img_huangdi.posIndex = -1;  
    item_node.img_huangdi.hasRole = true;  
    item_node.img_huangdi.gmId  = roleItem.instanceId;
    item_node.img_huangdi.roleId  = roleItem.roleId;



    local img_icon = TFDirector:getChildByPath(item_node, 'img_icon');

    img_icon:setTexture(roleInfo:getIconPath());
    local img_quality = TFDirector:getChildByPath(item_node, 'img_quality');
    img_quality:setTexture(GetColorIconByQuality(roleItem.quality));
    -- img_quality:setTexture(GetRoleBgByWuXueLevel(roleItem.martialLevel));


    local txt_name = TFDirector:getChildByPath(item_node, 'txt_name');
    txt_name:setText(roleItem.name);

    local txt_role_name = TFDirector:getChildByPath(item_node, 'txt_time');
    local roleStar = ""
    if roleItem.starlevel > 0 then
        roleStar = roleStar .. " +" .. roleItem.starlevel
    end
    if IsPlayerRole(roleItem.roleId) then
        txt_role_name:setText(roleItem.name..roleStar);
    else
        txt_role_name:setText(roleInfo.name..roleStar);
    end

    -- txt_name:setColor(GetColorByQuality(roleItem.quality))

    local img_zhiye = TFDirector:getChildByPath(item_node, 'img_zhiye');
    img_zhiye:setTexture("ui_new/fight/zhiye_".. roleInfo.outline ..".png");



    local img_fight = TFDirector:getChildByPath(item_node, 'img_zhu');
    local role_pos = BloodFightManager:getPosByGmId(roleItem.instanceId ) 
    if role_pos and role_pos ~= 0 then
        img_fight:setVisible(true);
    else
        img_fight:setVisible(false);
    end

    local txt_level = TFDirector:getChildByPath(item_node, 'txt_lv_word');
    txt_level:setText(roleItem.level);

    local img_martialLevel = TFDirector:getChildByPath(item_node, 'img_martialLevel');
    img_martialLevel:setTexture(GetFightRoleIconByWuXueLevel(roleItem.martialLevel))

    local bar_xuetiao = TFDirector:getChildByPath(item_node, 'bar_xuetiao');

    local maxHp = roleItem.blood_maxHp
    local curHp = roleItem.blood_curHp
    if maxHp == nil or curHp == nil then
        local attributes = GetAttrByString(roleItem.attributes)
        maxHp = attributes[1]
        curHp = roleItem.hp
        roleItem.blood_maxHp = maxHp
        roleItem.blood_curHp = curHp
    end
    -- local attributes = GetAttrByString(roleItem.attributes)
    -- local maxHp = attributes[1]
    -- local curHp = roleItem.hp
    bar_xuetiao:setPercent(curHp/maxHp * 100)

    local bGray = false
    if curHp <= 0 then
        bGray = true
    end
    img_icon:setGrayEnabled(bGray)
end


--添加玩家节点
function BloodFightArmyLayer:loadMercenaryNode(item_node,roleItem)

    local roleInfo = RoleData:objectByID(roleItem.roleId)
    if roleInfo == nil then
        item_node:setVisible(false)
        return
    end
    -- local btn_icon = TFDirector:getChildByPath(item_node, 'btn_pingzhianniu');
    item_node.img_huangdi.logic = self;
    item_node.img_huangdi:setTag(roleItem.instanceId);

    item_node.img_huangdi.playerId  = roleItem.playerId;
    item_node.img_huangdi.name  = roleItem.name;

    item_node.img_huangdi.posIndex = -1;  
    item_node.img_huangdi.hasRole = true;  
    item_node.img_huangdi.gmId  = roleItem.instanceId;
    item_node.img_huangdi.roleId  = roleItem.roleId;

    local img_icon = TFDirector:getChildByPath(item_node, 'img_icon');

    img_icon:setTexture(roleInfo:getIconPath());
    local img_quality = TFDirector:getChildByPath(item_node, 'img_quality');
    img_quality:setTexture(GetColorIconByQuality(roleItem.quality));
    -- img_quality:setTexture(GetRoleBgByWuXueLevel(roleItem.martialLevel));


    local txt_name = TFDirector:getChildByPath(item_node, 'txt_name');
    txt_name:setText(roleItem.name);

    local txt_role_name = TFDirector:getChildByPath(item_node, 'txt_time');
    local roleStar = ""
    if roleItem.start > 0 then
        roleStar = roleStar .. " +" .. roleItem.start
    end
    if IsPlayerRole(roleItem.roleId) then
        txt_role_name:setText(roleItem.name..roleStar);
    else
        txt_role_name:setText(roleInfo.name..roleStar);
    end

    -- txt_name:setColor(GetColorByQuality(roleItem.quality))

    local img_zhiye = TFDirector:getChildByPath(item_node, 'img_zhiye');
    img_zhiye:setTexture("ui_new/fight/zhiye_".. roleInfo.outline ..".png");



    local img_fight = TFDirector:getChildByPath(item_node, 'img_zhu');
    local role_pos = ZhengbaManager:getMercenaryIndexByGmId( self.fightType,roleItem.instanceId ) 
    if role_pos and role_pos ~= 0 then
        img_fight:setVisible(true);
    else
        img_fight:setVisible(false);
    end

    local txt_level = TFDirector:getChildByPath(item_node, 'txt_lv');
    txt_level:setText(roleItem.level);


    local img_martialLevel = TFDirector:getChildByPath(item_node, 'img_martialLevel');
    img_martialLevel:setTexture(GetFightRoleIconByWuXueLevel(roleItem.martial))

    local txt_price = TFDirector:getChildByPath(item_node, 'txt_price');
    local txt_free = TFDirector:getChildByPath(item_node, 'txt_free');

    local mercenary = EmployManager:getMyHireRoleDetailsByType( self.fightType )
    local is_mercenary = mercenary and mercenary.instanceId == roleItem.instanceId or false


    if EmployManager:isFirstHire() or is_mercenary then
        txt_price:setVisible(false)
        txt_free:setVisible(true)
    else
        txt_price:setVisible(true)
        txt_free:setVisible(false)
        txt_price:setText(math.floor(roleItem.power*0.1+1000))
    end
end

function BloodFightArmyLayer:findInfoInList( gmId )
    for v in self.mercenaryList:iterator() do
        -- print("v.instanceId ",v.instanceId ,gmId)
        if v.instanceId == gmId then
            return v
        end
    end
end
return BloodFightArmyLayer;