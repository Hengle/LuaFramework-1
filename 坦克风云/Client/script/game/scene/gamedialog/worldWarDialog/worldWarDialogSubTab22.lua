worldWarDialogSubTab22 = {}

function worldWarDialogSubTab22:new()
    local nc = {}
    setmetatable(nc, self)
    self.__index = self
    
    self.tv = nil
    self.bgLayer = nil
    self.layerNum = nil
    self.parent = nil
    
    self.maskSp = nil
    self.saveTimeLb = nil
    self.leftTimeLb = nil
    self.cannotSaveLb = nil
    
    self.selectedTabIndex = 0
    self.bgLayer1 = nil
    self.maxPowerBtn1 = nil
    self.worldWarTanks1 = {{}, {}, {}, {}, {}, {}}
    self.worldWarHero1 = {0, 0, 0, 0, 0, 0}
    self.worldWarAITroops1 = {0, 0, 0, 0, 0, 0}
    self.worldWarEmblem1 = nil
    self.worldWarPlane1 = nil
    self.currentShow = 1
    
    return nc
end

function worldWarDialogSubTab22:init(layerNum, parent)
    self.bgLayer = CCLayer:create()
    self.layerNum = layerNum
    self.parent = parent
    
    self:initTableView()
    self:initTabLayer()
    self:doUserHandler()
    
    return self.bgLayer
end

--设置对话框里的tableView
function worldWarDialogSubTab22:initTableView()
    local function callBack(...)
        -- return self:eventHandler(...)
    end
    local hd = LuaEventHandler:createHandler(callBack)
    self.tv = LuaCCTableView:createWithEventHandler(hd, CCSizeMake(self.bgLayer:getContentSize().width - 50, G_VisibleSizeHeight), nil)
    --self.bgLayer:setTouchPriority(-(self.layerNum-1)*20-1)
    -- self.tv:setTableViewTouchPriority(-(self.layerNum-1)*20-3)
    -- self.tv:setPosition(ccp(50,115))
    -- self.bgLayer:addChild(self.tv,1)
    -- self.tv:setMaxDisToBottomOrTop(self.normalHeight)
end

function worldWarDialogSubTab22:initTabLayer()
    self:initTabLayer1()
    self:initSaveBtn()
    self:initFormationBtn()
end

function worldWarDialogSubTab22:initTabLayer1()
    self.bgLayer1 = CCLayer:create()
    self.bgLayer:addChild(self.bgLayer1, 2)
    
    local function callback(flag)
        self.currentShow = flag + 1
    end
    local btype = self.selectedTabIndex + 13
    self.worldWarTanks1 = G_clone(tankVoApi:getTanksTbByType(btype))
    self.maxPowerBtn1 = G_addSelectTankLayer(btype, self.bgLayer1, self.layerNum, callback)
    self.worldWarHero1 = G_clone(heroVoApi:getWorldWarHeroList(self.selectedTabIndex + 1))
    self.worldWarAITroops1 = G_clone(AITroopsFleetVoApi:getWorldWarAITroopsList(self.selectedTabIndex + 1))
    self.worldWarEmblem1 = emblemVoApi:getBattleEquip(btype)
    self.worldWarPlane1 = planeVoApi:getBattleEquip(btype)
    self.worldWarAirship1 = airShipVoApi:getBattleEquip(btype)
    tankVoApi:setWorldWarTempTanks(G_clone(tankVoApi:getTanksTbByType(btype)))
end

function worldWarDialogSubTab22:initSaveBtn()
    local function save()
        self:saveHandler()
    end
    self.saveBtn = GetButtonItem("BtnOkSmall.png", "BtnOkSmall_Down.png", "BtnCancleSmall.png", save, nil, getlocal("arena_save"), 25)
    local saveMenu = CCMenu:createWithItem(self.saveBtn)
    saveMenu:setPosition(ccp(520, 80))
    saveMenu:setTouchPriority((-(self.layerNum - 1) * 20 - 4))
    self.bgLayer:addChild(saveMenu, 3)
    
    -- local saveTimeStr=getlocal("serverwar_left_save_time")
    -- -- saveTimeStr="啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊"
    -- self.saveTimeLb=GetTTFLabelWrap(saveTimeStr,25,CCSizeMake(180,0),kCCTextAlignmentCenter,kCCVerticalTextAlignmentBottom)
    -- self.saveTimeLb:setAnchorPoint(ccp(0.5,0))
    -- self.saveTimeLb:setPosition(ccp(520,150))
    -- self.bgLayer:addChild(self.saveTimeLb,3)
    -- self.saveTimeLb:setVisible(false)
    
    self.leftTimeLb = GetTTFLabel("0", 25)
    self.leftTimeLb:setAnchorPoint(ccp(0.5, 0))
    self.leftTimeLb:setPosition(ccp(520, 120))
    self.bgLayer:addChild(self.leftTimeLb, 3)
    self.leftTimeLb:setColor(G_ColorYellowPro)
    self.leftTimeLb:setVisible(false)
    
    local lastTime = worldWarVoApi:getLastSetFleetTime(self.selectedTabIndex + 1)
    if lastTime then
        local leftTime = worldWarCfg.settingTroopsLimit - (base.serverTime - lastTime)
        if leftTime > 0 then
            self.saveBtn:setEnabled(false)
            
            -- self.saveTimeLb:setVisible(true)
            self.leftTimeLb:setVisible(true)
            self.leftTimeLb:setString(GetTimeForItemStr(leftTime))
        end
    end
    
end

function worldWarDialogSubTab22:saveHandler(callFunc)
    local isCanSetFleet = worldWarVoApi:getIsCanSetFleet(self.selectedTabIndex + 1, self.layerNum)
    if isCanSetFleet == true then
        local function callback(fn, data)
            local ret, sData = base:checkServerData(data)
            if ret == true then
                smallDialog:showTipsDialog("PanelPopup.png", CCSizeMake(500, 400), CCRect(0, 0, 400, 350), CCRect(168, 86, 10, 10), getlocal("save_success"), 30)
                local btype = self.selectedTabIndex + 13
                self.worldWarTanks1 = G_clone(tankVoApi:getTanksTbByType(btype))
                local tskin = G_clone(tankSkinVoApi:getTempTankSkinList(btype))
                tankSkinVoApi:setTankSkinListByBattleType(btype, tskin)
                local heroList = heroVoApi:getTroopsHeroList()
                heroVoApi:setWorldWarHeroList(self.selectedTabIndex + 1, heroList)
                local aitroops = AITroopsFleetVoApi:getAITroopsTb()
                AITroopsFleetVoApi:setWorldWarAITroopsList(self.selectedTabIndex + 1, aitroops)
                self.worldWarHero1 = G_clone(heroVoApi:getWorldWarHeroList(self.selectedTabIndex + 1))
                self.worldWarAITroops1 = G_clone(AITroopsFleetVoApi:getWorldWarAITroopsList(self.selectedTabIndex + 1))
                worldWarVoApi:setLastSetFleetTime(self.selectedTabIndex + 1, base.serverTime)
                tankVoApi:setWorldWarTempTanks(G_clone(tankVoApi:getTanksTbByType(btype)))
                local emblemID = emblemVoApi:getTmpEquip(btype)
                emblemVoApi:setBattleEquip(btype, emblemID)
                self.worldWarEmblem1 = emblemID
                local planePos = planeVoApi:getTmpEquip(btype)
                planeVoApi:setBattleEquip(btype, planePos)
                self.worldWarPlane1 = planePos
                self.worldWarAirship1 = airShipVoApi:getTempLineupId(btype)
                airShipVoApi:setBattleEquip(btype, self.worldWarAirship1)
                self:tick()
                if callFunc then
                    callFunc()
                end
                -- elseif sData.ret==-5015 then
                --     local function sureCallBackHandler()
                --         if G_checkClickEnable()==false then
                --             do
                --                 return
                --             end
                --         else
                --             base.setWaitTime=G_getCurDeviceMillTime()
                --         end
                --         PlayEffect(audioCfg.mouseClick)
                
                --         local function clearSetFleetHandler(fn,data)
                --             local ret,sData=base:checkServerData(data)
                --             if ret==true then
                --              self.worldWarTanks1={{},{},{},{},{},{}}
                --           self.worldWarHero1={0,0,0,0,0,0}
                --                 self:setTanksRestore()
                --                 if self.bgLayer1 then
                --                  G_updateSelectTankLayer(self.selectedTabIndex+13,self.bgLayer1,self.layerNum)
                --                 end
                --             end
                --         end
                --         socketHelper:crossSetInfo(nil,nil,nil,nil,1,clearSetFleetHandler)
                --     end
                --     smallDialog:showSureAndCancle("PanelHeaderPopup.png",CCSizeMake(550,400),CCRect(0, 0, 400, 350),CCRect(168, 86, 10, 10),sureCallBackHandler,getlocal("dialog_title_prompt"),getlocal("backstage5015"),nil,self.layerNum+1)
            end
        end
        local fleetInfo = tankVoApi:getTanksTbByType(self.selectedTabIndex + 13)
        local aName
        if allianceVoApi:isHasAlliance() then
            local selfAlliance = allianceVoApi:getSelfAlliance()
            if selfAlliance and selfAlliance.name then
                aName = selfAlliance.name
            end
        end
        local wwhero = nil
        print("heroVoApi:isHaveTroops()", heroVoApi:isHaveTroops())
        if heroVoApi:isHaveTroops() == true then
            -- local heroList=heroVoApi:getWorldWarHeroList(self.selectedTabIndex+1)
            local heroList = heroVoApi:getTroopsHeroList()
            wwhero = heroVoApi:getBindFleetHeroList(heroList, fleetInfo, self.selectedTabIndex + 13)
        end
        local aitroops = AITroopsFleetVoApi:getAITroopsTb()
        aitroops = AITroopsFleetVoApi:getBindFleetAITroopsList(aitroops, fleetInfo, self.selectedTabIndex + 13)
        local bType = self.selectedTabIndex + 13
        local emblemID = emblemVoApi:getTmpEquip(bType)
        local planePos = planeVoApi:getTmpEquip(bType)
        local airshipId = airShipVoApi:getTempLineupId(bType)
        local function saveCallback()
            local realEmblemId = emblemVoApi:getEquipIdForBattle(emblemID)
            if realEmblemId ~= -1 then
                socketHelper:worldwarSetinfo(self.selectedTabIndex + 1, fleetInfo, aName, wwhero, nil, callback, realEmblemId, planePos, aitroops, airshipId)
            end
        end
        local costTanks, isSame = tankVoApi:worldWarCostTanks(self.worldWarTanks1, fleetInfo)
        local isChangeFleet = self:isChangeFleet()
        if isChangeFleet == false then
            -- if isSame==true then
            smallDialog:showTipsDialog("PanelPopup.png", CCSizeMake(500, 400), CCRect(0, 0, 400, 350), CCRect(168, 86, 10, 10), getlocal("world_war_no_change_save"), 30)
        else
            if costTanks and SizeOfTable(costTanks) > 0 then
                smallDialog:showWorldWarCostTanksDialog("PanelHeaderPopup.png", CCSizeMake(550, 800), CCRect(0, 0, 400, 350), CCRect(168, 86, 10, 10), true, self.layerNum + 1, saveCallback, costTanks)
            else
                saveCallback()
            end
        end
    end
end
function worldWarDialogSubTab22:clearAllTroops()
    local function clearSetFleetHandler(fn, data)
        local ret, sData = base:checkServerData(data)
        if ret == true then
            if self and self.parent and self.parent.refresh then
                self.parent:refresh()
            end
        end
    end
    socketHelper:worldwarSetinfo(nil, nil, nil, nil, 1, clearSetFleetHandler)
end

function worldWarDialogSubTab22:isChangeFleet()
    local battleType = self.selectedTabIndex + 13
    local fleetInfo = tankVoApi:getTanksTbByType(battleType)
    local costTanks, isSame = tankVoApi:worldWarCostTanks(self.worldWarTanks1, fleetInfo)
    
    local hero1 = heroVoApi:getBindFleetHeroList(self.worldWarHero1, self.worldWarTanks1, battleType, false)
    -- local heroList=heroVoApi:getWorldWarHeroList(self.selectedTabIndex+1)
    local heroList = heroVoApi:getTroopsHeroList()
    local hero2 = heroVoApi:getBindFleetHeroList(heroList, fleetInfo, battleType, false)
    local isSameHero = heroVoApi:isSameHero(hero1, hero2)
    
    local aitroops1 = AITroopsFleetVoApi:getBindFleetAITroopsList(self.worldWarAITroops1, self.worldWarTanks1, battleType, false)
    local aiTb = AITroopsFleetVoApi:getAITroopsTb()
    local aitroops2 = AITroopsFleetVoApi:getBindFleetAITroopsList(aiTb, fleetInfo, battleType, false)
    local isSameAITroops = AITroopsFleetVoApi:isSameAITroops(aitroops1, aitroops2)
    
    local isSameEmblem = true
    local tmpEmblemID = emblemVoApi:getTmpEquip(battleType)
    local emblemID = emblemVoApi:getBattleEquip(battleType)
    if tmpEmblemID ~= emblemID then
        isSameEmblem = false
    end
    local isSamePlane = true
    local tmpPlanePos = planeVoApi:getTmpEquip(battleType)
    local planePos = planeVoApi:getBattleEquip(battleType)
    if tmpPlanePos ~= planePos then
        isSamePlane = false
    end
    local isSameAirship = true
    if airShipVoApi:getTempLineupId(battleType) ~= airShipVoApi:getBattleEquip(battleType) then
        isSameAirship = false
    end
    if isSame == true and isSameHero == true and isSameEmblem and isSamePlane and isSameAITroops and isSameAirship then
        return false, costTanks
    else
        return true, costTanks
    end
end

function worldWarDialogSubTab22:initFormationBtn()
    local tType = self.selectedTabIndex + 13
    local function readCallback()
    end
    local formationMenu = G_getFormationBtn(self.bgLayer1, self.layerNum, self.currentShow, tType, readCallback)
end

function worldWarDialogSubTab22:doUserHandler()
    local function tmpFunc()
    end
    self.maskSp = LuaCCScale9Sprite:createWithSpriteFrameName("BlackAlphaBg.png", CCRect(10, 10, 1, 1), tmpFunc)
    self.maskSp:setOpacity(255)
    local size = CCSizeMake(G_VisibleSize.width - 50, G_VisibleSizeHeight - 235)
    self.maskSp:setContentSize(size)
    self.maskSp:setAnchorPoint(ccp(0.5, 0))
    self.maskSp:setPosition(ccp(G_VisibleSize.width / 2, 30))
    self.maskSp:setIsSallow(true)
    self.maskSp:setTouchPriority(-(self.layerNum - 1) * 20 - 9)
    self.bgLayer:addChild(self.maskSp, 4)
    
    self.cannotSaveLb = GetTTFLabelWrap(getlocal("world_war_cannot_set_fleet2"), 30, CCSizeMake(self.maskSp:getContentSize().width - 60, 0), kCCTextAlignmentCenter, kCCVerticalTextAlignmentCenter)
    self.cannotSaveLb:setAnchorPoint(ccp(0.5, 0.5))
    self.cannotSaveLb:setPosition(getCenterPoint(self.maskSp))
    self.maskSp:addChild(self.cannotSaveLb, 2)
    self.cannotSaveLb:setColor(G_ColorYellowPro)
    
    self:tick()
end

function worldWarDialogSubTab22:tick()
    if self then
        local setFleetStatus = worldWarVoApi:getSetFleetStatus()
        if setFleetStatus and setFleetStatus >= 0 then
            if setFleetStatus == 0 then
                if self.maxPowerBtn1 then
                    self.maxPowerBtn1:setEnabled(true)
                end
                if self.saveBtn then
                    self.saveBtn:setEnabled(true)
                end
                if self.maskSp then
                    self.maskSp:setPosition(ccp(10000, 0))
                end
            else
                if self.maxPowerBtn1 then
                    self.maxPowerBtn1:setEnabled(false)
                end
                if self.saveBtn then
                    self.saveBtn:setEnabled(false)
                end
                if self.maskSp then
                    self.maskSp:setPosition(ccp(G_VisibleSize.width / 2, 30))
                end
                
                if self.cannotSaveLb then
                    self.cannotSaveLb:setString(getlocal("world_war_cannot_set_fleet"..setFleetStatus))
                end
            end
        end
        
        local lastTime = worldWarVoApi:getLastSetFleetTime(self.selectedTabIndex + 1) or 0
        local leftTime = worldWarCfg.settingTroopsLimit - (base.serverTime - lastTime)
        if leftTime > 0 then
            if self.saveBtn and self.saveBtn:isEnabled() == true then
                self.saveBtn:setEnabled(false)
            end
            
            -- if self.saveTimeLb then
            --     self.saveTimeLb:setVisible(true)
            -- end
            if self.leftTimeLb then
                self.leftTimeLb:setVisible(true)
                self.leftTimeLb:setString(GetTimeForItemStr(leftTime))
            end
        else
            -- if self.saveTimeLb then
            --     self.saveTimeLb:setVisible(false)
            -- end
            if self.leftTimeLb then
                self.leftTimeLb:setVisible(false)
            end
        end
    end
end

function worldWarDialogSubTab22:setTanksRestore(isSetEmblem, isSetPlane, isSetAirship)
    local tType = self.selectedTabIndex + 13
    for i = 1, 6 do
        local id = i
        if self.worldWarTanks1 and self.worldWarTanks1[id] and self.worldWarTanks1[id][1] then
            local tid = self.worldWarTanks1[id][1]
            local num = self.worldWarTanks1[id][2] or 0
            tankVoApi:setTanksByType(tType, id, tid, num)
        else
            tankVoApi:deleteTanksTbByType(tType, id)
        end
        tankVoApi:setWorldWarTempTanks(self.worldWarTanks1)
        
        if self.worldWarHero1 then
            local hid = self.worldWarHero1[id]
            if hid then
                heroVoApi:setWorldWarHeroByIndex(self.selectedTabIndex + 1, id, hid)
            else
                heroVoApi:deleteWorldWarTroopsByIndex(self.selectedTabIndex + 1, id)
            end
        end
        
        if self.worldWarAITroops1 then
            local atid = self.worldWarAITroops1[id]
            if atid then
                AITroopsFleetVoApi:setWorldWarAITroopsByIndex(self.selectedTabIndex + 1, id, atid)
            else
                AITroopsFleetVoApi:setWorldWarAITroopsByIndex(self.selectedTabIndex + 1, id, 0)
            end
        end
        
        if self.worldWarEmblem1 or isSetEmblem == true then
            emblemVoApi:setTmpEquip(self.worldWarEmblem1, tType)
            emblemVoApi:setBattleEquip(tType, self.worldWarEmblem1)
        end
        if self.worldWarPlane1 or isSetPlane == true then
            planeVoApi:setTmpEquip(self.worldWarPlane1, tType)
            planeVoApi:setBattleEquip(tType, self.worldWarPlane1)
        end
        if self.worldWarAirship1 or isSetAirship == true then
            airShipVoApi:setTempLineupId(self.worldWarAirship1, tType)
            airShipVoApi:setBattleEquip(tType, self.worldWarAirship1)
        end
    end
end

function worldWarDialogSubTab22:updateData(isSetEmblem, isSetPlane, isSetAirship)
    heroVoApi:clearTroops()
    AITroopsFleetVoApi:clearAITroops()
    self:setTanksRestore(isSetEmblem, isSetPlane, isSetAirship)
end
function worldWarDialogSubTab22:refresh(isSetEmblem, isSetPlane, isSetAirship)
    self:updateData(isSetEmblem, isSetPlane, isSetAirship)
    G_updateSelectTankLayer(self.selectedTabIndex + 13, self.bgLayer1, self.layerNum, self.currentShow)
    self:tick()
end

function worldWarDialogSubTab22:dispose()
    self:setTanksRestore()
    
    local btype = self.selectedTabIndex + 13
    G_clearEditTroopsLayer(btype)
    self.selectedTabIndex = 0
    
    self.bgLayer1 = nil
    self.maxPowerBtn1 = nil
    self.worldWarTanks1 = {{}, {}, {}, {}, {}, {}}
    self.worldWarHero1 = {0, 0, 0, 0, 0, 0}
    self.worldWarAITroops1 = {0, 0, 0, 0, 0, 0}
    self.worldWarEmblem1 = nil
    self.worldWarPlane1 = nil
    self.worldWarAirship1 = nil
    
    self.tv = nil
    self.bgLayer = nil
    self.layerNum = nil
    self.maskSp = nil
    self.saveTimeLb = nil
    self.leftTimeLb = nil
    self.cannotSaveLb = nil
    self.currentShow = 1
end

