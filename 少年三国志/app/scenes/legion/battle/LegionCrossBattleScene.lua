--LegionCrossBattleScene.lua

require "app.cfg.corps_dungeon_info"
require "app.cfg.corps_dungeon_tips_info"


local LegionCrossBattleScene = class("LegionCrossBattleScene", UFCCSBaseScene)


function LegionCrossBattleScene:ctor( msg, ... )
	self.super.ctor(self, msg, ...)

    if not msg or not msg.data or not msg.data.info then
        return 
    end
    
    local BattleLayer = require("app.scenes.battle.BattleLayer")
	self._battleField = BattleLayer.create(
        {battleType = BattleLayer.LEGION_CROSS_BATTLE, msg=msg.data.info, battleBg= msg.bg,skip = BattleLayer.SkipConst.SKIP_YES}, handler(self, self._onBattleEvent))
    self._finishFunc = msg.func
    self:addChild(self._battleField)
    
    -- self._damage = msg.data.harm
    -- self._corpPoint = msg.data.corp_point
    -- self._finalAward = msg.data.final_award
    self._corpPoint = msg.data.corp_point
    self._corpExp = msg.data.corp_exp
    self._win = msg.data.info.is_win
    -- 保存一下battleresult
    self._data = msg.data
    self._dismissFlag = -1
end

function LegionCrossBattleScene:onSceneLoad( ... )
	-- body
end

function LegionCrossBattleScene:onSceneEnter( ... )
    G_SoundManager:playBackgroundMusic(require("app.const.SoundConst").BackGroundMusic.FIGHT)
    uf_eventManager:addEventListener(G_EVENTMSGID.EVENT_DISMISS_CORP, function ( ... )
        self._dismissFlag = 1
    end, self)
    uf_eventManager:addEventListener(G_EVENTMSGID.EVENT_NOTIFY_CORP_DISMISS, function ( dismiss )
        self._dismissFlag = dismiss
    end, self)
end

function LegionCrossBattleScene:play()
    if self._battleField then
        self._battleField:play()
    end
end

function LegionCrossBattleScene:_onBattleEvent( event )
	local BattleLayer = require "app.scenes.battle.BattleLayer"
        if event == BattleLayer.BATTLE_OPENING_FINISH then
            
            -- -- 伤害加成显示
            -- -- 关卡id
            -- local gateId = self._data.dungeon.id

            -- local info = corps_dungeon_info.get(gateId)
            -- assert(info, "Could not find the corps_dungeon_info with id: "..gateId)
            
            -- -- countryId
            -- local countryId = info['country_'..self._data.info_id]
            -- local tipInfo = corps_dungeon_tips_info.get(countryId)
            -- assert(tipInfo, "Could not find the corps_dungeon_tips_info with id: "..countryId)
            
            -- local knights = self._battleField:getHeroKnight()

            -- -- 入口集
            -- local entrySet = require("app.scenes.battle.entry.Entry").new()

            -- local LegionBattleDamageAdditionEntry = require "app.scenes.legion.LegionBattleDamageAdditionEntry"
            -- for k, knight in pairs(knights) do
            --     local cardConfig = knight:getCardConfig()
            --     -- 是否属于压制一方的国家阵营
            --     if cardConfig.group == tipInfo.group then
            --         local additionEntry = LegionBattleDamageAdditionEntry.create(knight, self._battleField)
            --         entrySet:addEntryToNewQueue(additionEntry, additionEntry.updateEntry)
            --     end
            -- end

            -- -- 添加至当前队列的顶层，表示马上需要播放
            -- self._battleField:insertEntryToQueueAtTop(entrySet, entrySet.updateEntry)
            
	elseif event == BattleLayer.BATTLE_FINISH then
		local fightEnd = require("app.scenes.common.fightend.FightEnd")
		--local attackSize = (self._finalAward and #self._finalAward > 0) and (self._finalAward[1].size or 0) or 0
		fightEnd.show(fightEnd.TYPE_JUNTUANZHAN, self._win, 
		{
			gongxian = self._corpPoint,
			rob_exp = self._corpExp > 0 and self._corpExp or nil, --self._finalAward,
		},
		function ( ... )
            if self._dismissFlag >= 0 then 
                G_HandlersManager.legionHandler:disposeCorpDismiss(self._dismissFlag)
            elseif not G_Me.legionData:isOnBattle() then 
			    uf_sceneManager:popToRootAndReplaceScene(require("app.scenes.legion.LegionScene").new())
            else
                uf_sceneManager:popScene()
            end
		end)		
	end
end

return LegionCrossBattleScene

