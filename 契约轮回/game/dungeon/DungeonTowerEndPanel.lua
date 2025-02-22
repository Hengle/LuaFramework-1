---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by win 10.
--- DateTime: 2018/10/10 10:53
---
DungeonTowerEndPanel = DungeonTowerEndPanel or class("DungeonTowerEndPanel", BasePanel)
local this = DungeonTowerEndPanel

function DungeonTowerEndPanel:ctor()
    self.abName = "dungeon";
    self.image_ab = "dungeon_image";
    self.assetName = "DungeonTowerEndPanel"
    self.layer = "UI"

    self.model = DungeonModel.GetInstance()
    self.events = {};
    self.schedules = {};
end

function DungeonTowerEndPanel:dctor()
    GlobalEvent:RemoveTabListener(self.events);
    if self.event_id_1 then
        self.model:RemoveListener(self.event_id_1)
        self.event_id_1 = nil
    end
    self:StopAllSchedules()
    self.model = nil;
    if self.enditem then
        self.enditem:destroy();
    end
    destroyTab(self.items);
end

function DungeonTowerEndPanel:Open(data)
    self.data = data;
    WindowPanel.Open(self)
end

function DungeonTowerEndPanel:LoadCallBack()
    self.nodes = {
        "win/awardCon", "lose/equip_2",
        "lose", "lose/mount", "lose/equip_1", "win",
        "win/winLabels","zhandoujiangli",

        "lose/jingyan_defeat", "lose/jingyanlogo_defeat", "lose/huodejingyan_defeat",
        "win/jingyan", "win/huodejingyan", "win/jingyanlogo","win/winLabels/title",

        --"win/passTime", "win/winLabels/label3","win/starCon/star2","win/starCon","win/starCon/star3",  "win/starCon/star1",
        --"win/prop", "win/prop/stars", "win/prop/stars/star_1", "win/prop/stars/star_2", "win/prop/stars/star_3",
        --"win/prop/txt", "win/prop/txt/text_1", "win/prop/txt/text_2", "win/prop/txt/text_3",
        --"sureBtn", "autoCloseText", "closeBtn",
    }
    self:GetChildren(self.nodes)
    -- local orderIndex = LayerManager:GetInstance():GetLayerOrderByName(self.layer)
    -- self:SetOrderIndex(orderIndex + 5)

    SetLocalPosition(self.transform, 0, 0, 0)
    self.titleTex = GetText(self.title)
    self:Init();

    self:AddEvent();

    if AutoFightManager:GetInstance():GetAutoFightState() then
        GlobalEvent:Brocast(FightEvent.AutoFight)
    end
    --请求一下魔法塔的信息,用于红点
    DungeonCtrl:GetInstance():RequestDungeonPanel(enum.SCENE_STYPE.SCENE_STYPE_DUNGE_MAGICTOWER);
    DungeonCtrl:GetInstance():RequestLotoInfo(enum.SCENE_STYPE.SCENE_STYPE_DUNGE_MAGICTOWER);
end

--[[
--{
--{
--	["stat"]=
--	{
--		["isClear"]=true,
--		["stype"]=303,
--		["floor"]=3,
--		["id"]=30003
--	},
--	["id"]=30003,
--	["stype"]=303,
--	["clear"]=true,
--	["reward"]=
--	{
--		[20060]=1,
--		[90010012]=100,
--		[20040]=1,
--		[20050]=1
--	}
--}
--}
--]]
function DungeonTowerEndPanel:Init()
    --print2(Table2String(self.data));
    self.data["IsCancelAutoSchedule"] = true;
    self.enditem = DungeonEndItem(self.transform, self.data);
    self.enditem.sure_format = "Next level (%s)";
    self.jingyan = GetText(self.jingyan);
    self.huodejingyan = GetText(self.huodejingyan);
    self.jingyanlogo = GetImage(self.jingyanlogo);

    self.jingyan_defeat = GetText(self.jingyan_defeat);
    self.huodejingyan_defeat = GetText(self.huodejingyan_defeat);
    self.jingyanlogo_defeat = GetImage(self.jingyanlogo_defeat);

    if self.data then
        -- 成功界面
        if self.data.isClear == true then
            self.win.gameObject:SetActive(true);
            self.lose.gameObject:SetActive(false);
            self.enditem:ShowStars(true);
            if self.data.stype == enum.SCENE_STYPE.SCENE_STYPE_DUNGE_MAGICTOWER then
                --从map里面读
                if self.data.reward then
                    if self.data.reward[90010012] then
                        self.jingyan.text = tostring(self.data.reward[90010012]);
                    else
                        self.jingyan.text = tostring(0);
                    end
                    --物品图标
                    local index = 1;
                    destroyTab(self.items);
                    self.items = {};
                    for k, v in pairs(self.data.reward) do
                        if k ~= 90010012 then
                            local item = AwardItem(self.awardCon);
                            item:SetData(k, v);
                            item:AddClickTips(self.transform);
                            self.items[index] = item;
                            index = index + 1;
                        end
                    end

                else
                    self.jingyan.text = tostring(0);
                end

                self.winLabels.gameObject:SetActive(true);

                -- 还有没有打完的要继续
                local HandleClickSure = function()
                    local data = self.model.dungeon_info_list[self.data.stype]
                    if not data then
                        return
                    end
                    DungeonCtrl:GetInstance():RequestEnterDungeon(self.data.stype, data.info.cur_floor)
                end
                local firstFinishFun = function()
                    SceneControler:GetInstance():RequestSceneLeave();
                    self:Close();
                end
				local twoFinishFun = function()
					Notify.ShowText("Your level is too low")
					SceneControler:GetInstance():RequestSceneLeave();
					self:Close();
				end
                --self.enditem.close_format = "关 闭(%s)";
                --self.enditem:SetAutoCloseCallBack(firstFinishFun);
                if self.data.floor == 1 then
                    self.enditem.close_format = "Close (%s)";
                    self.enditem:SetAutoCloseCallBack(firstFinishFun);
                elseif Config.db_dunge_magic[self.data.floor + 1] then	
					local data = self.model.dungeon_info_list[self.data.stype]
					local lv = RoleInfoModel.GetInstance():GetMainRoleData().level
					if not data then
						return
					end
                    local nedLv = Config.db_dunge[(data.id + 1)].level
					if lv >= nedLv then
						self.enditem:ShowSureBtn(HandleClickSure);
						self.enditem:SetAutoCloseCallBack(HandleClickSure);
                        SetVisible(self.title, false)
					else
						self.enditem:ShowSureBtn(twoFinishFun);
						self.enditem:SetAutoCloseCallBack(twoFinishFun);
                        self.enditem:SetSureBtnGray()
                        SetVisible(self.title, true)
                        self.titleTex.text = nedLv .."Can be challenged at L.X"
					end
                end
            end
            -- 失败界面
        else
            self.win.gameObject:SetActive(false);
            self.lose.gameObject:SetActive(true);
            if self.data.stype == enum.SCENE_STYPE.SCENE_STYPE_DUNGE_MAGICTOWER then
                if self.data.reward then
                    if self.data.reward[90010012] then
                        self.jingyan_defeat.text = tostring(self.data.reward[90010012]);
                    else
                        self.jingyan_defeat.text = tostring(0);
                    end
                end
            else
                self.jingyan_defeat.text = tostring(0);
            end
            SetLocalPositionXY(self.zhandoujiangli.transform, 190,170)
        end
    end
    local time = 5;
    local dungeTab = Config.db_dunge[SceneManager:GetInstance():GetSceneId()];
    if dungeTab then
        time = dungeTab.exit_cd;
    end
    time = time or 5;
    self.enditem:StartAutoClose(time);
end

local closeTime = 5;
function DungeonTowerEndPanel:AddEvent()
    --local function callBack1 (data)
    --    SceneControler:GetInstance():RequestSceneLeave();
    --    self:Close();
    --end
    --self.enditem:SetAutoCloseCallBack(callBack1);

    local function call_back()
        self:Close()
    end
    self.events[#self.events + 1] = GlobalEvent:AddListener(DungeonEvent.LEAVE_DUNGEON_SCENE, call_back)

    self.event_id_1 = self.model:AddListener(DungeonEvent.ResEnterDungeonInfo, call_back)

    local call_back = function()
        SceneControler:GetInstance():RequestSceneLeave();
        self:Close();
    end

    self.enditem:SetCloseCallBack(call_back);

    local call_back1 = function(target, x, y)
        GlobalEvent.BrocastEvent(MountEvent.OPEN_MOUNT_PANEL);
    end
    AddClickEvent(self.mount.gameObject, call_back1);

    local call_back2 = function(target, x, y)
        Notify.ShowText("Tap [Craft Gear]")--GlobalEvent.BrocastEvent(MountEvent.OPEN_MOUNT_PANEL);
    end
    AddClickEvent(self.equip_1.gameObject, call_back2);

    local call_back3 = function(target, x, y)
        Notify.ShowText("Tap [Forge]")--GlobalEvent.BrocastEvent(MountEvent.OPEN_MOUNT_PANEL);
    end
    AddClickEvent(self.equip_2.gameObject, call_back3);
end

function DungeonTowerEndPanel:StopAllSchedules()
    for i = 1, #self.schedules, 1 do
        GlobalSchedule:Stop(self.schedules[i]);
    end
    self.schedules = {};
end
