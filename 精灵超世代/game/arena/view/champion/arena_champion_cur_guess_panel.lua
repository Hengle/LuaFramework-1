-- --------------------------------------------------------------------
-- @author: shiraho@syg.com(必填, 创建模块的人员)
-- @description:
--      当前可竞猜的面板
-- <br/>Create: new Date().toISOString()
--
-- --------------------------------------------------------------------
ArenaChampionCurGuessPanel = class("ArenaChampionCurGuessPanel", function()
	return ccui.Layout:create()
end)

local table_insert = table.insert
local string_format = string.format
local role_vo = RoleController:getInstance():getRoleVo()

function ArenaChampionCurGuessPanel:ctor(view_type)
    self.role_list = {}

    self.view_type = view_type or ArenaConst.champion_type.normal
    if self.view_type == ArenaConst.champion_type.normal then
        self.ctrl = ArenaController:getInstance()
        self.model = self.ctrl:getChampionModel()
    else
        self.ctrl = CrosschampionController:getInstance()
        self.model = self.ctrl:getModel()
    end

	self.root_wnd = createCSBNote(PathTool.getTargetCSB("arena/arena_champion_cur_guess_panel"))
	
	self.size = self.root_wnd:getContentSize()
	self:setContentSize(self.size)
	self.root_wnd:setAnchorPoint(0.5, 0.5)
	self.root_wnd:setPosition(self.size.width * 0.5, self.size.height * 0.5)
	self:addChild(self.root_wnd) 

    local container = self.root_wnd:getChildByName("container")

    local main_panel = container:getChildByName("main_panel")

    self.success_img = main_panel:getChildByName("success_img")      -- 胜利的标志
    self.success_img:setVisible(false)
    self.success_left_pos = cc.p(370,914)
    self.success_right_pos = cc.p(350,493)
    self.check_btn = main_panel:getChildByName("check_btn")
    self.check_btn:ignoreContentAdaptWithSize(true)
    self.check_btn_label = self.check_btn:getChildByName("label")
    self.check_btn_label:setString("")
    self.vs = main_panel:getChildByName("vs")

    for i=1,2 do
        local tmp_container = main_panel:getChildByName("role_container_"..i)
        if tmp_container then
            object = {}
            object.container = tmp_container
            -- object.form_lev = tmp_container:getChildByName("form_lev")          -- 阵法等级
            object.role_name = tmp_container:getChildByName("role_name")        -- 角色名字
            object.role_lev = tmp_container:getChildByName("role_lev")          -- 角色等级
            object.power = tmp_container:getChildByName("power")          -- 战力
            object.form_bg = tmp_container:getChildByName("form_bg")
            object.form_icon = object.form_bg:getChildByName("form_icon")       -- 阵法图标
            object.elfin_tree_bg = tmp_container:getChildByName("elfin_tree_bg") -- 精灵古树bg
            object.elfin_tree_lv = tmp_container:getChildByName("elfin_tree_lv") -- 精灵古树等级
            object.elfin_tree_bg:setLocalZOrder(998)
            object.elfin_tree_lv:setLocalZOrder(999)
            object.elfin_tree_lv:setString(TI18N("古树等级：0"))
            object.elfin_list = {}

            if IS_HIDE_ELFIN then
                object.elfin_tree_lv:setVisible(false)
                object.elfin_tree_bg:setVisible(false)
            end
            -- object.power = CommonNum.new(20, tmp_container, 99999, - 2, cc.p(0, 0.5))   -- 角色战力
            -- if i == 1 then
            --     object.power:setPosition(168, 342)
            -- else
            --     object.power:setPosition(184, 177)
            -- end

            object.role_head = PlayerHead.new(PlayerHead.type.circle)       -- 角色头像
            object.role_head:setHeadLayerScale(0.8)
            if i == 1 then
                object.role_head:setPosition(86, 418)
            else
                object.role_head:setPosition(102, 140)
            end
            tmp_container:addChild(object.role_head) 
            self.role_list[i] = object
        end
    end

    local guess_container = main_panel:getChildByName("guess_container")
    -- local backpack = guess_container:getChildByName("backpack")
    -- backpack:setContentSize(cc.size(SCREEN_WIDTH,143))
    guess_container:getChildByName("guess_label"):setString(TI18N("可竞猜"))

    self.left_guess_btn = guess_container:getChildByName("left_guess_btn")
    self.left_guess_btn_label = self.left_guess_btn:getChildByName("label")
    self.right_guess_btn = guess_container:getChildByName("right_guess_btn")
    self.right_guess_btn_label = self.right_guess_btn:getChildByName("label")

    self.guess_value = guess_container:getChildByName("guess_value")

    local item_img_2 = guess_container:getChildByName("item_img_2")
    if self.view_type == ArenaConst.champion_type.cross and Config.ItemData.data_get_data(33) then
        loadSpriteTexture(item_img_2, PathTool.getItemRes(Config.ItemData.data_get_data(33).icon), LOADTEXT_TYPE)
    end

    self.left_total_value = guess_container:getChildByName("left_total_value")
    self.right_total_value = guess_container:getChildByName("right_total_value")
    self.left_name = guess_container:getChildByName("left_name")
    self.right_name = guess_container:getChildByName("right_name")
    self.progress_bar = guess_container:getChildByName("progress_bar")
    self.progress_bar:setScale9Enabled(true) 

    -- self.recharge_value = guess_container:getChildByName("recharge_value")

    self.main_panel = main_panel

    self:createLeftPartnerList()
    self:createRightPartnerList()

    self:registerEvent()
end

function ArenaChampionCurGuessPanel:registerEvent()
    for i,object in ipairs(self.role_list) do
        if object.form_bg then
            -- object.form_bg:addTouchEventListener(function(sender, event_type) 
            --     if self.data then
            --         local data_vo = {}
            --         local other_vo = {}
            --         if i == 1 then
            --             data_vo = {self.data.a_formation_type or 1, self.data.a_formation_lev or 0}
            --             other_vo = {self.data.b_formation_type or 1, self.data.b_formation_lev or 0}
            --         else
            --             data_vo = {self.data.b_formation_type or 1, self.data.b_formation_lev or 0}
            --             other_vo = {self.data.a_formation_type or 1, self.data.a_formation_lev or 0}
            --         end             
            --         TipsManager:getInstance():hideTips()
            --         TipsManager:getInstance():showBattleTacticalTips(data_vo, 4, sender) 
            --     end
            -- end)
        end
    end

	self.left_guess_btn:addTouchEventListener(function(sender, event_type)
        customClickAction(sender, event_type)
		if event_type == ccui.TouchEventType.ended then
            playButtonSound2()
            if self.guess_bet_type ~= 0 then
                message(TI18N("已经竞猜过啦"))
            else
                local base_info = self.model:getBaseInfo()
                local role_info = self.model:getRoleInfo()
                if base_info and role_info and self.data then 
                    if base_info.round_status == ArenaConst.champion_round_status.guess then
                        local data = {}
                        data.name = self.data.a_name
                        data.srv_id = self.data.a_srv_id
                        data.rid = self.data.a_rid
                        data.can_bet = role_info.can_bet
                        data.bet_ratio = self.data.a_bet_ratio
                        data.bet_type = 1
                        ArenaController:getInstance():openArenaChampionGuessWindow(true, data, self.view_type) 
                    else
                        message(TI18N("当前阶段不可以押注"))
                    end
                end
            end
		end
	end)
	self.right_guess_btn:addTouchEventListener(function(sender, event_type)
        customClickAction(sender, event_type)
		if event_type == ccui.TouchEventType.ended then
			playButtonSound2()
            if self.guess_bet_type ~= 0 then
                message(TI18N("已经竞猜过啦"))
            else
                local base_info = self.model:getBaseInfo()
                local role_info = self.model:getRoleInfo()
                if base_info and role_info and self.data then 
                    if base_info.round_status == ArenaConst.champion_round_status.guess then
                        local data = {}
                        data.name = self.data.b_name
                        data.srv_id = self.data.b_srv_id
                        data.rid = self.data.b_rid
                        data.can_bet = role_info.can_bet
                        data.bet_ratio = self.data.b_bet_ratio
                        data.bet_type = 2
                        ArenaController:getInstance():openArenaChampionGuessWindow(true, data, self.view_type) 
                    else
                        message(TI18N("当前阶段不可以押注"))
                    end
                end
            end
		end
	end)
	self.check_btn:addTouchEventListener(function(sender, event_type)
        customClickAction(sender,event_type)
		if event_type == ccui.TouchEventType.ended then
			playButtonSound2()
            local base_info = self.model:getBaseInfo()
            if self.data and base_info then
                if self.data.ret == 0 then
                    if self.view_type == ArenaConst.champion_type.normal then
                        BattleController:getInstance():csRecordBattle(self.data.replay_id)
                    else
                        BattleController:getInstance():csRecordBattle(self.data.replay_id, base_info.srv_id)
                    end 
                else
                    ArenaController:getInstance():openArenaChampionReportWindow(true, self.data, self.view_type)
                end
            end
		end
	end)
end

--==============================--
--desc:创建左边的伙伴列表
--time:2018-08-02 11:06:31
--@return 
--==============================--
function ArenaChampionCurGuessPanel:createLeftPartnerList()
    local object = self.role_list[1]
    if object == nil then return end
    object.partner_list = {}
    local scale = 0.7
    local off = 10
    local start_x = 306
    local start_y = 100
    local row = 3
    local item_width = BackPackItem.Width * scale 
    for i=1,9 do
        local _x = start_x - item_width * 0.5 - (item_width + off) * (math.floor((i - 1)/row))
        local _y = start_y + (item_width * 0.5 + ((i - 1) % row) * (item_width + off)) 
        local item = HeroExhibitionItem.new(scale, false, true)
        item:setPosition(_x, _y)
        item:setOpacity(128)
        object.container:addChild(item)
        table_insert(object.partner_list, item) 
    end
end

--==============================--
--desc:创建右边的伙伴列表
--time:2018-08-02 11:22:28
--@return 
--==============================--
function ArenaChampionCurGuessPanel:createRightPartnerList()
	local object = self.role_list[2]
	if object == nil then return end
	object.partner_list = {}
	local scale = 0.7
	local off = 10
	local start_x = 110
	local start_y = 194
	local row = 3
	local item_width = BackPackItem.Width * scale
	for i = 1, 9 do
		local _x = start_x + item_width * 0.5 + (item_width + off) * (math.floor((i - 1) / row))
		local _y = start_y + (item_width * 0.5 + ((i - 1) % row) * (item_width + off))
		local item = HeroExhibitionItem.new(scale, false, true)
		item:setPosition(_x, _y)
        item:setOpacity(128)
		object.container:addChild(item)
		table_insert(object.partner_list, item)
	end
end 

function ArenaChampionCurGuessPanel:addToParent(status)
    self:setVisible(status)
    self:handleEvent(status)
end

--==============================--
--desc:主窗体事件更新之后，设置窗体显示内容
--time:2018-08-05 05:59:59
--@status:
--@return 
--==============================--
function ArenaChampionCurGuessPanel:updateInfo(status)
    local base_info = self.model:getBaseInfo()
    local role_info = self.model:getRoleInfo()

    if base_info == nil or role_info == nil then return end
    self.is_change_tab = status -- 是否是切换面板的,如果是切换面板,在收到20252协议之后,要判断base是2的就要根据20252的录像id进去查看录像
    if base_info.step == ArenaConst.champion_step.unopened or 
        (base_info.step == ArenaConst.champion_step.score and (base_info.round == 0 or (base_info.round == 1 and base_info.round_status == ArenaConst.champion_round_status.prepare))) then
        self.main_panel:setVisible(false)
    else
        self.main_panel:setVisible(true)
        if status == true or base_info.flag ~= 0 then
            if self.view_type == ArenaConst.champion_type.normal then
                self.ctrl:requestGuessChampionMatch()
            else
                self.ctrl:sender26203()
            end
        end 
    end
    self.guess_value:setString(role_info.can_bet)
    -- self.recharge_value:setString(role_vo.arena_guesscent)
end

function ArenaChampionCurGuessPanel:handleEvent(status)
    if status == true then
        if self.update_guess_match_event == nil then
            self.update_guess_match_event = GlobalEvent:getInstance():Bind(ArenaEvent.UpdateGuessMatchInfoEvent, function(data)
                self:updateFightInfo(data)
            end)
        end
        -- if self.role_vo_update_event == nil then
        --     self.role_vo_update_event = role_vo:Bind(RoleEvent.UPDATE_ROLE_ATTRIBUTE, function(key, value) 
        --         if key == "arena_guesscent" then
        --             self.recharge_value:setString(value)
        --         end
        --     end)
        -- end
        if self.update_role_info_bet_event == nil then
            self.update_role_info_bet_event = GlobalEvent:getInstance():Bind(ArenaEvent.UpdateRoleInfoBetEvent, function(can_bet, bet_type) 
                can_bet = can_bet or 0
                self.guess_value:setString(can_bet)
                self:changeGuessBtnStatus(bet_type)
            end)
        end
        if self.bet_match_value_event == nil then
            self.bet_match_value_event = GlobalEvent:getInstance():Bind(ArenaEvent.UpdateBetMatchValueEvent, function(data) 
                local a_bet = data.a_bet or 0
                local b_bet = data.b_bet or 0
                self.left_total_value:setString(string_format(TI18N("赔率:%0.2f"), data.a_bet_ratio / 1000))
                self.right_total_value:setString(string_format(TI18N("赔率:%0.2f"), data.b_bet_ratio / 1000))
                if self.data then
                    self.data.a_bet_ratio = data.a_bet_ratio
                    self.data.b_bet_ratio = data.b_bet_ratio
                end

                -- 设置竞猜值
                local total_bet = a_bet + b_bet
                if total_bet == 0 then
                    self.progress_bar:setPercent(50)
                else
                    self.progress_bar:setPercent(100 * a_bet / total_bet)
                end 
            end)
        end
    else
        if self.update_guess_match_event ~= nil then
            GlobalEvent:getInstance():UnBind(self.update_guess_match_event)
            self.update_guess_match_event = nil
        end
        -- if self.role_vo_update_event ~= nil then
        --     role_vo:UnBind(self.role_vo_update_event)
        --     self.role_vo_update_event = nil
        -- end
        if self.bet_match_value_event ~= nil then
            GlobalEvent:getInstance():UnBind(self.bet_match_value_event)
            self.bet_match_value_event = nil
        end
        if self.update_role_info_bet_event then
            GlobalEvent:getInstance():UnBind(self.update_role_info_bet_event)
            self.update_role_info_bet_event = nil
        end
    end
end

--==============================--
--desc:设置竞猜状态
--time:2018-08-07 07:53:03
--@bet_type:
--@return 
--==============================--
function ArenaChampionCurGuessPanel:changeGuessBtnStatus(bet_type)
    bet_type = bet_type or 0
    if self.guess_bet_type == bet_type then return end
    self.guess_bet_type = bet_type
    if bet_type == 0 then
        self.left_guess_btn_label:setString(TI18N("竞猜"))
        self.right_guess_btn_label:setString(TI18N("竞猜"))
    else
        if bet_type == 1 then
            self.left_guess_btn_label:setString(TI18N("已竞猜"))
            self.right_guess_btn_label:setString(TI18N("竞猜"))
        else
            self.left_guess_btn_label:setString(TI18N("竞猜"))
            self.right_guess_btn_label:setString(TI18N("已竞猜"))
        end
    end

    -- if bet_type ~= 0 then
    --     self.left_guess_btn:setTouchEnabled(false)
    --     setChildUnEnabled(true, self.left_guess_btn)
    --     self.right_guess_btn:setTouchEnabled(false)
    --     setChildUnEnabled(true, self.right_guess_btn)
    --     if bet_type == 1 then
    --         self.left_guess_btn_label:setString(TI18N("已竞猜"))
    --         self.right_guess_btn_label:setString(TI18N("竞猜"))
    --     else
    --         self.left_guess_btn_label:setString(TI18N("竞猜"))
    --         self.right_guess_btn_label:setString(TI18N("已竞猜"))
    --     end
    -- else
    --     self.left_guess_btn:setTouchEnabled(true)
    --     setChildUnEnabled(false, self.left_guess_btn)
    --     self.right_guess_btn:setTouchEnabled(true)
    --     setChildUnEnabled(false, self.right_guess_btn)
    --     self.left_guess_btn_label:setTextColor(cc.c4b(0xd6,0xfb,0xff,0xff))
    --     self.right_guess_btn_label:setTextColor(cc.c4b(0xd6,0xfb,0xff,0xff))
    --     self.left_guess_btn_label:setString(TI18N("竞猜"))
    --     self.right_guess_btn_label:setString(TI18N("竞猜"))
    -- end
end

--==============================--
--desc:更新竞猜的信息
--time:2018-08-05 06:07:56
--@data:
--@return 
--==============================--
function ArenaChampionCurGuessPanel:updateFightInfo(data)
    if data == nil then return end
    self:changeGuessBtnStatus(data.bet_type)

    -- 判断一下是否需要做数据的更新
    if self.data then
        if getNorKey(self.data.step, self.data.round, self.data.replay_id, self.data.a_power, self.data.ret) == getNorKey(data.step, data.round, data.replay_id, data.a_power, data.ret) then
            return
        end
    end
    local need_delay = (self.data and self.data.ret ~= data.ret and data.ret ~= 0)  
    self.data = data
    -- 非切换界面更新
    if self.is_change_tab == false then
        local base_info = self.model:getBaseInfo()
        if base_info and base_info.flag == 2 and data.replay_id ~= 0 and getNorKey(base_info.step, base_info.round) == getNorKey(data.step, data.round) then   -- 这个时候要切换观战模式
            if self.view_type == ArenaConst.champion_type.normal then
                BattleController:getInstance():csRecordBattle(data.replay_id)
            else
                BattleController:getInstance():csRecordBattle(data.replay_id, base_info.srv_id)
            end 
        end
    end
    self:setBothSidesBaseInfo(need_delay) 
    self:setLeftPartnerInfo()
    self:setRightPartnerInfo()
end


--==============================--
--desc:更新双方的基础数据,姓名,等级阵法之类的
--time:2018-08-04 03:29:47
--@return 
--==============================--
function ArenaChampionCurGuessPanel:setBothSidesBaseInfo(need_delay)
    local base_info = self.model:getBaseInfo()
    if self.data == nil or base_info == nil then return end
    local left_object = self.role_list[1]
    if left_object then
        local res = "res/resource/form/form_form_icon_"..self.data.a_formation_type..".png"
        loadSpriteTexture(left_object.form_icon, res, ccui.TextureResType.localType)
        -- left_object.form_lev:setString(string_format("Lv.%s", self.data.a_formation_lev))
        left_object.role_name:setString(transformNameByServ(self.data.a_name, self.data.a_srv_id))
        left_object.role_lev:setString(string_format(TI18N("%s级"), self.data.a_lev))
        left_object.role_head:setHeadRes(self.data.a_face, false, LOADTEXT_TYPE, self.data.a_face_file, self.data.a_face_update_time)
        -- left_object.power:setNum(self.data.a_power)
        left_object.power:setString(string.format("%s:%d", TI18N("战力"), changeBtValueForPower(self.data.a_power)))
        -- 精灵相关
        if IS_HIDE_ELFIN ~= true then
            local tree_lv = self.data.a_sprite_lev or 0
            left_object.elfin_tree_lv:setString(TI18N("古树等级：") .. tree_lv)
            for i=1,4 do
                local elfin_skill_item = left_object.elfin_list[i]
                if not elfin_skill_item then
                    elfin_skill_item = SkillItem.new(true, true, true, 0.5, true)
                    local pos_x = 40 + (i-1)*65
                    elfin_skill_item:setPosition(cc.p(pos_x, 38))
                    left_object.container:addChild(elfin_skill_item)
                    left_object.elfin_list[i] = elfin_skill_item
                end
                self:setElfinSkillItemData(elfin_skill_item, self.data.a_sprites, i)
            end
        end
    end
    local right_object = self.role_list[2]
    if right_object then
        local res = "res/resource/form/form_form_icon_"..self.data.b_formation_type..".png"
        loadSpriteTexture(right_object.form_icon, res, ccui.TextureResType.localType)
        -- right_object.form_lev:setString(string_format("Lv.%s", self.data.b_formation_lev))
        right_object.role_name:setString(transformNameByServ(self.data.b_name, self.data.b_srv_id))
        right_object.role_lev:setString(string_format(TI18N("%s级"), self.data.b_lev))
        right_object.role_head:setHeadRes(self.data.b_face, false, LOADTEXT_TYPE, self.data.b_face_file, self.data.b_face_update_time)
        -- right_object.power:setNum(self.data.b_power)
        right_object.power:setString(string.format("%s:%d", TI18N("战力"), changeBtValueForPower(self.data.b_power)))
        -- 精灵相关
        if IS_HIDE_ELFIN ~= true then
            local tree_lv = self.data.b_sprite_lev or 0
            right_object.elfin_tree_lv:setString(TI18N("古树等级：") .. tree_lv)
            for i=1,4 do
                local elfin_skill_item = right_object.elfin_list[i]
                if not elfin_skill_item then
                    elfin_skill_item = SkillItem.new(true, true, true, 0.5, true)
                    local pos_x = 180 + (i-1)*65
                    elfin_skill_item:setPosition(cc.p(pos_x, 518))
                    right_object.container:addChild(elfin_skill_item)
                    right_object.elfin_list[i] = elfin_skill_item
                end
                self:setElfinSkillItemData(elfin_skill_item, self.data.b_sprites, i)
            end
        end
    end
    self.left_name:setString(transformNameByServ(self.data.a_name, self.data.a_srv_id))
    self.left_total_value:setString(string_format(TI18N("赔率:%0.2f"), self.data.a_bet_ratio/1000))
    self.right_name:setString(transformNameByServ(self.data.b_name, self.data.b_srv_id))
    self.right_total_value:setString(string_format(TI18N("赔率:%0.2f"), self.data.b_bet_ratio/1000))

    -- 设置竞猜值
    local total_bet = self.data.a_bet + self.data.b_bet
    if total_bet == 0 then
        self.progress_bar:setPercent(50)
    else
        self.progress_bar:setPercent(100 * self.data.a_bet/total_bet)
    end

    -- 胜利状态
    if self.data.ret == 0 then
        self.success_img:setVisible(false) 
        if self.data.replay_id == 0 then
            self.check_btn:setVisible(false)
            self.vs:setVisible(true)
        else
            -- self.check_btn:loadTexture(PathTool.getResFrame("arena","arenachampion_1029",false,"arenachampion"), LOADTEXT_TYPE_PLIST)
            self.check_btn:loadTexture(PathTool.getResFrame("commonicon","common_icon_15"), LOADTEXT_TYPE_PLIST)
            self.check_btn:setVisible(true)
            self.check_btn_label:setString(TI18N("观战"))
            self.vs:setVisible(false)
        end 
    else
        local function do_callback()
            if not tolua.isnull(self.success_img) then
                -- if self.data.step == base_info.step and self.data.round == base_info.round and base_info.round_status == ArenaConst.champion_round_status.fight then
                --     self.success_img:setVisible(false)
                -- else 
                --     self.success_img:setVisible(true)
                -- end
                -- self.check_btn:loadTexture(PathTool.getResFrame("arena","arenachampion_1031",false,"arenachampion"), LOADTEXT_TYPE_PLIST)
                self.check_btn:loadTexture(PathTool.getResFrame("commonicon","common_icon_25"), LOADTEXT_TYPE_PLIST)
                self.success_img:setVisible(true)
                self.check_btn:setVisible(true)
                self.check_btn_label:setString(TI18N("查看"))
                self.vs:setVisible(false)
                if self.data.ret == 1 then -- 胜利
                    self.success_img:setPosition(self.success_left_pos)
                else
                    self.success_img:setPosition(self.success_right_pos)
                end
            end
        end
        if need_delay == true then
            delayRun(self.main_panel,1,do_callback)
        else
            do_callback()
        end
    end
end

-- 根据位置获取精灵的bid
function ArenaChampionCurGuessPanel:getElfinBidByPos( sprite_data, pos )
    if not sprite_data or next(sprite_data) == nil then return end
    for k,v in pairs(sprite_data) do
        if v.pos == pos then
            return v.item_bid
        end
    end
end

function ArenaChampionCurGuessPanel:setElfinSkillItemData( skill_item, sprite_data, pos )
    local elfin_bid = self:getElfinBidByPos(sprite_data, pos)
    if elfin_bid then
        skill_item:showLockIcon(false)
        local elfin_cfg = Config.SpriteData.data_elfin_data(elfin_bid)
        if elfin_bid == 0 or not elfin_cfg then -- 已解锁，但未放置精灵
            skill_item:setData()
            skill_item:showLevel(false)
        else
            local skill_cfg = Config.SkillData.data_get_skill(elfin_cfg.skill)
            if skill_cfg then
                skill_item:showLevel(true)
                skill_item:setData(skill_cfg)
            end
        end
    else
        skill_item:setData()
        skill_item:showLevel(false)
        skill_item:showLockIcon(true)
    end
end

--==============================--
--desc:设置左边伙伴的站位
--time:2018-08-04 04:36:08
--@return 
--==============================--
function ArenaChampionCurGuessPanel:setLeftPartnerInfo()
    if self.data == nil then return end
    local config = Config.FormationData.data_form_data[self.data.a_formation_type]
    if not config or not config.pos then return end
    local object = self.role_list[1]
    if object == nil or object.partner_list == nil then return end
    -- 先把所有的格子都透明掉
    for i,item in ipairs(object.partner_list) do
        item:setData()
        -- item:showAddIcon(false)
        item:setOpacity(128)
    end
    local function getVo(pos)
        for i,v in ipairs(self.data.a_plist) do
            if v.pos == pos then
                return v
            end
        end
    end
    -- 根据阵法转换格子位置
    for i, v in pairs(config.pos) do
        if v and v[1] and v[2] then
            local item = object.partner_list[v[2]]
            local vo = getVo(v[1])
            if item then
                item:setOpacity(255)
                item:setData(vo)
            end
        end
    end
end

--==============================--
--desc:更新右边的阵法
--time:2018-08-04 04:42:39
--@return 
--==============================--
function ArenaChampionCurGuessPanel:setRightPartnerInfo()
    if self.data == nil then return end
    local config = Config.FormationData.data_form_data[self.data.b_formation_type]
    if not config or not config.pos then return end
    local object = self.role_list[2]
    if object == nil or object.partner_list == nil then return end
    -- 先把所有的格子都透明掉
    for i,item in ipairs(object.partner_list) do
        item:setData()
        item:setOpacity(128)
    end
    local function getVo(pos)
        for i,v in ipairs(self.data.b_plist) do
            if v.pos == pos then
                return v
            end
        end
    end
    -- 根据阵法转换格子位置
    for i, v in pairs(config.pos) do
        if v and v[1] and v[2] then
            local item = object.partner_list[v[2]]
            local vo = getVo(v[1])
            if item then
                item:setOpacity(255)
                item:setData(vo)
            end
        end
    end
end 

function ArenaChampionCurGuessPanel:DeleteMe()
    doStopAllActions(self.main_panel)
    self:handleEvent(false)
    for i, object in ipairs(self.role_list) do
        -- if object.power then
        --     object.power:DeleteMe()
        -- end
        if object.role_head then
            object.role_head:DeleteMe()
        end
        if object.partner_list then
            for k,v in pairs(object.partner_list) do
                if v.DeleteMe then
                    v:DeleteMe()
                end
            end
        end
        if object.elfin_list then
            for _,item in pairs(object.elfin_list) do
                item:DeleteMe()
                item = nil
            end
        end
    end
    self.role_list = nil
end 
