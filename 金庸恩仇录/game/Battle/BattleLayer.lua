local data_battleskill_battleskill = require("data.data_battleskill_battleskill")
local data_atk_number_time_time = require("data.data_atk_number_time_time")
local data_jingyingfuben_jingyingfuben = require("data.data_jingyingfuben_jingyingfuben")
local data_huodongfuben_huodongfuben = require("data.data_huodongfuben_huodongfuben")
local data_zhenshenfuben_zhenshenfuben = require("data.data_zhenshenfuben_zhenshenfuben")
local data_battle_battle = require("data.data_battle_battle")
local data_effect_effect = require("data.data_effect_effect")
local data_card_move_card_move = require("data.data_card_move_card_move")
local data_card_rotation_card_rotation = require("data.data_card_rotation_card_rotation")
local data_special_special = require("data.data_special_special")
local data_buff_buff = require("data.data_buff_buff")
local data_atk_number_time_time = require("data.data_atk_number_time_time")
local data_talent_talent = require("data.data_talent_talent")
local data_buff_buff = require("data.data_buff_buff")
local data_huodong_huodong = require("data.data_huodong_huodong")
local data_shentong_shentong = require("data.data_shentong_shentong")
local data_drama_battle_battle = require("data.data_drama_battle_battle")
local data_item_nature = require("data.data_item_nature")
local data_union_battle_union_battle = require("data.data_union_battle_union_battle")
local data_union_fuben_union_fuben = require("data.data_union_fuben_union_fuben")
--普通伤害持续时间

local NORMAL_DAMAGE_TIME = data_atk_number_time_time[1].pugongputongshanghai / 10
local NORMAL_DAMAGE_CRITICAL_TIME = data_atk_number_time_time[1].pugongbaojishanghai / 10
local NORMAL_DAMAGE_BLOCK_TIME = data_atk_number_time_time[1].pugonggedangshanghai / 10
local NORMAL_HEAL_TIME = data_atk_number_time_time[1].pugongjiaxueputong / 10
local NORMAL_HEAL_CRITICAL_TIME = data_atk_number_time_time[1].pugongbaojishanghai / 10
local RAGE_NORMAL_DAMAGE_TIME = data_atk_number_time_time[1].nuqiputongshanghai / 10
local RAGE_NORMAL_CRITICAL_DAMAGE_TIME = data_atk_number_time_time[1].nuqibaojishanghai / 10
local RAGE_BLOCK_TIME = data_atk_number_time_time[1].nuqigedangshanghai / 10
local RAGE_HEAL_TIME = data_atk_number_time_time[1].nuqijiaxueputong / 10
local RAGE_HEAL_CRITICAL_TIME = data_atk_number_time_time[1].nuqijiaxuebaoji / 10
local POISION_DAMAGE_TIME = data_atk_number_time_time[1].zhongdumeihuihediaoxue / 10
local BUFF_HEAL_TIME = data_atk_number_time_time[1].chixumeihuihezhiliao / 10
local NUM_SCALE = data_atk_number_time_time[1].num_scale / 10 or 1
local BACK_TIME = data_atk_number_time_time[1].back_time / 1000 or 0.3
local TAL_ANIM_TYPE = 1
local TAL_PROP_TYPE = 2
local BUFF_TYPE = 3
local SKILL_TYPE = 4
local BACK_TYPE = 5
local TAL_PROP_END_TYPE = 6
local SHOW_SUM_NUM = 1
local T_BATTLE_INIT = 1
local T_BATTLE_INBORN = 2 --天赋技能

local T_BATTLE_SPELL = 3 --普通攻击或技能

local T_BATTLE_BUFF = 4
local T_BATTLE_END = 9 --战斗结束

local DOWN_SIDE = 1 --下边卡组 我方的人
local UP_SIDE = 2 --上边卡组 敌方的人

local RESULT_DOWN_WIN = 1 --下面的牌组赢了

local RESULT_DOWN_LOSE = 2 --下面的牌组输了


local NORMAL_CARD_ZORDER = 100 --普通卡牌的Z轴

local HELP_CARD_ZORDER = 120 --援护卡牌Z轴，比普通的高一点点
local ANGER_ZORDER = 50 --怒气技能释放时，半透的蒙版
local BG_EFF_ZORDER = 75 --某些技能需要在背景之上，卡牌之下

local ACTIVE_CARD_ZORDER = 200 --如果某卡牌被激活的Z轴

local EFFECT_ZORDER = 3000 --各类技能特效的Z轴

local NUM_ZORDER = 10000 --数字特效的Z轴


---Zorder 上排的人 前排会被后排遮盖住


local RAGE_HEAD_ZORDER = 1100 --释放怒气技能时的头像的Z轴


local NUM_TYPE_DAMAGE_NORMAL = 1

local FUNC_END = 0
local EFFECT_FUNC = 1
local CARD_MOVE_FUNC = 2
local CARE_ROTATE_FUNC = 3
local SPECIAL_FUNC = 4--怒气技能等相关动画

--[[
剧情对话出现的时机

]]
local BEFORE_ARISE = 1 --我方卡牌 出现前

local AFTER_ONE_CARD_ARISE = BEFORE_ARISE + 1 --某张卡牌出现之后
local BEFORE_WALK = AFTER_ONE_CARD_ARISE + 1  --行走前 出现后

local AFTER_WALK = BEFORE_WALK + 1   --行走动画结束后，正式战斗开始前
local AFTER_ROUND = AFTER_WALK + 1  --某次卡牌攻击后 和上面的区别是上面是一个大的回合

local AFTER_BATTLE = AFTER_ROUND + 1 --战斗结算前



local DODGE_TYPE    = 1    ---闪避
local CRITICAL_TYPE = 2    ---暴击
local BLOCK_TYPE    = 3
local HEAL_TYPE     = 4
local DAMAGE_TYPE   = 5

local SUB_HP = 1
local HEAL_HP = 2
local NO_HP = 3
local isSkipDrama = true
local BattleSpeedTipsShow = true
local IM_TYPE = {
none = 0,
wuli = 1,
fashu = 2
}
local BattleLayer = class("BattleLayer", function (param)
	return require("utility.ShadeLayer").new()
end)
function BattleLayer:playDie(card)
	card:playAct("die")
	card:setLife(0)
	local pos = ccp(card:getPosition())
	local cardSide = card:getSideID()
	local function die()
		local dieLoop = ResMgr.createArma({
		resType = ResMgr.NORMAL_EFFECT,
		armaName = "siwang_feixing",
		finishFunc = function ()
		end,
		isRetain = false
		})
		dieLoop:setPosition(pos)
		dieLoop:setScale(0.7)
		self.dieNode:addChild(dieLoop, 100)
	end
	local dieStartArma = ResMgr.createArma({
	resType = ResMgr.NORMAL_EFFECT,
	armaName = "siwang_qishou",
	finishFunc = function ()
		if cardSide ~= UP_SIDE then
		end
	end,
	isRetain = false
	})
	dieStartArma:setPosition(pos)
	dieStartArma:setScale(0.7)
	self.dieNode:addChild(dieStartArma, 100)
	card:setVisible(false)
end

function BattleLayer:ctor(param)
	dump("=========count1: ", collectgarbage("count"))
	ResMgr.addSpriteFramesWithFile("ui/ui_battle.plist", "ui/ui_battle.png")
	ResMgr.addSpriteFramesWithFile("ui/card_yun.plist", "ui/card_yun.png")
	CCUserDefault:sharedUserDefault():setBoolForKey("isBattle", true)
	game.runningScene = self
	self.upDamage = 0--劫富济贫用来更新上面的受伤害总值的
	self.isInbattle = false
	self.maxCountTTF = "/30"
	self.musicIndex = 1
	self.musicName = "pve01"
	self:setNodeEventEnabled(true)
	self.isInitTimeScale = false
	self.isPassed = param.isPassed
	self.star = param.star or 0
	self:init(param)
	self.dieNode = display.newNode()
	self.shakeNode:addChild(self.dieNode)
	self.cPosX = self:getPositionX()
	self.cPosY = self:getPositionY()
	self.damageCB = param.damageCB
	self.roundCB = param.roundCB
	self.befCloud = display.newSprite("#qian.png")
	self.befCloud:setPosition(display.width / 2, display.height / 2)
	self.aftCloud = display.newSprite("#hou.png")
	self.aftCloud:setPosition(display.width / 2, display.height / 2)
	self.shakeNode:addChild(self.befCloud, -1000)
	self.shakeNode:addChild(self.aftCloud, -1000)
	local nameEff = ResMgr.createArma({
	resType = ResMgr.NORMAL_EFFECT,
	armaName = "nuqiji_zi",
	isRetain = false
	})
	nameEff:setPosition(display.cx, display.cy)
	self.shakeNode:addChild(nameEff, -1000)
	local nameBg = display.newSprite("#da_nuqi_bg.png")
	nameBg:setPosition(display.cx, display.cy)
	self.shakeNode:addChild(nameBg, -1000)
	local rageEff = ResMgr.createArma({
	resType = ResMgr.NORMAL_EFFECT,
	armaName = "dazhaoshifang",
	isRetain = false
	})
	rageEff:setPosition(display.cx, display.cy)
	self.shakeNode:addChild(rageEff, -1000)
end
function BattleLayer:playMusic()
	if self.playing == nil then
		self.playing = true
		if self.fubenType == WORLDBOSS_FUBEN or self.fubenType == GUILD_QLBOSS_FUBEN then
		else
			local bgmPath = "sound/" .. "boss1" .. ".mp3"
			self.bgmMusic = bgmPath
			GameAudio.playMusic(bgmPath, true)
		end
	end
end

function BattleLayer:onEnter()
	dump("ononononon")
	self:playMusic()
end

function BattleLayer:init(param)
	self.nodeNames = {
	"normal_effect_node",
	"beAtk_effect_node"
	}
	self.nodes = {}
	for i = 1, #self.nodeNames do
		local curNode = display.newNode()
		curNode:setContentSize(CCSize(display.width, display.height))
		self.nodes[self.nodeNames[i]] = curNode
		if i == 1 then
			self:addChild(curNode)
		else
			self.nodes[self.nodeNames[i - 1]]:addChild(curNode)
		end
	end
	self.shakeNode = display.newNode()
	self.shakeNode:setContentSize(cc.size(display.width, display.height))
	if #self.nodeNames > 0 then
		self.nodes[self.nodeNames[#self.nodeNames]]:addChild(self.shakeNode)
	else
		self:addChild(self.shakeNode)
	end
	self.fubenType = param.fubenType
	self.fubenId = param.fubenId
	self.fubenData = {}
	ResMgr.setMetatableByKV(self.fubenData)
	self.isShowJumpBtn = true
	self.isShowCount = true
	if self.fubenType == NORMAL_FUBEN then
		if self.isPassed == true then
			self.isShowJumpBtn = true
		end
		self.fubenData = data_battle_battle[self.fubenId]
	elseif self.fubenType == JINGYING_FUBEN then
		self.fubenData = data_jingyingfuben_jingyingfuben[self.fubenId]
	elseif self.fubenType == HUODONG_FUBEN then
		self.fubenData = data_huodongfuben_huodongfuben[self.fubenId]
		if self.fubenId == 1 then
			self.maxCountTTF = "/5"
		end
	elseif self.fubenType == ZHENSHEN_FUBEN then
		self.fubenData = data_zhenshenfuben_zhenshenfuben[self.fubenId]
	elseif self.fubenType == DRAMA_FUBEN then
		self.isShowJumpBtn = false
		self.isShowCount = false
		self.fubenData = data_drama_battle_battle[1]
	elseif self.fubenType == ARENA_FUBEN then
		self.isShowJumpBtn = true
		self.fubenData.ccb_bg = data_huodong_huodong[2].ccb_bg
		self.fubenData.arr_show = data_huodong_huodong[2].arr_show or {1}
		self.fubenData.arise = data_huodong_huodong[2].arise or 2
		self.fubenData.bgm = data_huodong_huodong[2].bgm or "pvp1"
	elseif self.fubenType == LUNJIAN then
		self.isShowJumpBtn = true
		self.fubenData.ccb_bg = data_huodong_huodong[3].ccb_bg
		self.fubenData.arr_show = data_huodong_huodong[3].arr_show or {1}
		self.fubenData.arise = data_huodong_huodong[3].arise or 2
		self.fubenData.bgm = data_huodong_huodong[3].bgm or "pvp1"
	elseif self.fubenType == DUOBAO_FUBEN then
		self.isShowJumpBtn = true
		self.fubenData.ccb_bg = data_huodong_huodong[1].ccb_bg
		self.fubenData.arr_show = data_huodong_huodong[1].arr_show or {1}
		self.fubenData.bgm = data_huodong_huodong[1].bgm or "duobao"
		self.fubenData.arise = data_huodong_huodong[1].arise or 2
	elseif self.fubenType == WORLDBOSS_FUBEN then
		self.isShowJumpBtn = true
		self.isShowHpAndAnger = false
		self.fubenData.ccb_bg = data_huodong_huodong[5].ccb_bg
		self.fubenData.arr_show = data_huodong_huodong[5].arr_show or {1}
		self.fubenData.bgm = data_huodong_huodong[5].bgm or "duobao"
		self.fubenData.arise = data_huodong_huodong[5].arise or 2
	elseif self.fubenType == GUILD_QLBOSS_FUBEN then
		self.isShowJumpBtn = true
		self.isShowHpAndAnger = false
		self.fubenData.ccb_bg = data_union_battle_union_battle[1].ccb_bg
		self.fubenData.arr_show = data_union_battle_union_battle[1].arr_show or {1}
		self.fubenData.bgm = data_union_battle_union_battle[1].bgm or "duobao"
		self.fubenData.arise = data_union_battle_union_battle[1].arise or 2
	elseif self.fubenType == GUILD_FUBEN then
		self.isShowJumpBtn = true
		self.fubenData.ccb_bg = data_union_fuben_union_fuben[self.fubenId].ccb_bg
		self.fubenData.arr_show = data_union_fuben_union_fuben[self.fubenId].arr_show or {1}
		self.fubenData.arise = data_union_fuben_union_fuben[self.fubenId].arise or 2
		self.fubenData.bgm = data_union_fuben_union_fuben[self.fubenId].bgm or "pvp1"
		self.maxCountTTF = "/5"
	elseif self.fubenType == FRIEND_PK then
		self.isShowJumpBtn = true
		self.fubenData.ccb_bg = data_huodong_huodong[2].ccb_bg
		self.fubenData.arr_show = data_huodong_huodong[2].arr_show or {1}
		self.fubenData.arise = data_huodong_huodong[2].arise or 2
		self.fubenData.bgm = data_huodong_huodong[2].bgm or "pvp1"
		self.isShowJumpBtn = false
	elseif self.fubenType == KUAFU_ZHAN then
		self.isShowJumpBtn = true
		self.fubenData.ccb_bg = data_huodong_huodong[2].ccb_bg
		self.fubenData.arr_show = data_huodong_huodong[2].arr_show or {1}
		self.fubenData.arise = data_huodong_huodong[2].arise or 2
		self.fubenData.bgm = data_huodong_huodong[2].bgm or "pvp1"
	else
		ResMgr.debugBanner(common:getLanguageString("@NotExistTranscriptType"))
	end
	self.bgRate = self.fubenData.moveRate or 0
	local bgCCB = self.fubenData.ccb_bg
	local proxy = CCBProxy:create()
	self.rootnode = {}
	ResMgr.setMetatableByKV(self.rootnode)
	self.bg = CCBuilderReaderLoad("battle_bg/" .. bgCCB .. ".ccbi", proxy, self.rootnode, self, CCSizeMake(display.width, display.height))
	ResMgr.showAlert(self.bg, common:getLanguageString("@MapLack", bgCCB))
	self.moveBgNode = display.newNode()
	self.moveBgNode:addChild(self.bg)
	self.shakeNode:addChild(self.moveBgNode)
	self.bgHeight = 0
	for i = 1, 5 do
		local curBg = self.rootnode["bg_" .. i]
		if curBg == nil then
			break
		else
			self.bgHeight = self.bgHeight + curBg:getContentSize().height
		end
	end
	self.walkTypes = self.fubenData.arr_show
	self.ariseType = self.fubenData.arise or 2
	self.maxReqNum = #self.walkTypes
	self.curReqNum = 1
	local backNum = 0
	for i = 1, #self.walkTypes do
		if self.walkTypes[i] == 2 then
			backNum = backNum + 1
		end
	end
	local moveDistance = self.bgRate / 1000 * self.bgHeight
	self.bg:setPosition(display.cx, display.height - self.bgHeight + backNum * moveDistance)
	self.resultFunc = param.resultFunc
	self.reqFunc = param.reqFunc
	self.friendCard = {}
	self.enemyCard = {}
	ResMgr.setMetatableByKV(self.friendCard)
	ResMgr.setMetatableByKV(self.enemyCard)
	self.friendBuff = {}
	self.enemyBuff = {}
	ResMgr.setMetatableByKV(self.friendBuff)
	ResMgr.setMetatableByKV(self.enemyBuff)
	for i = 1, 6 do
		self.friendBuff[i] = {}
		self.enemyBuff[i] = {}
		ResMgr.setMetatableByKV(self.friendBuff[i])
		ResMgr.setMetatableByKV(self.enemyBuff[i])
	end
	self.battleCount = 0
	local roundName = ui.newBMFontLabel({
	text = common:getLanguageString("@Round"),
	font = FONTS_NAME.font_battle_round,
	align = ui.TEXT_ALIGN_LEFT
	})
	self.battleCountTTF = ui.newBMFontLabel({
	text = self.battleCount .. self.maxCountTTF,
	font = FONTS_NAME.font_battle_round,
	align = ui.TEXT_ALIGN_LEFT
	})
	self.countNode = display.newNode()
	self.countNode:setPosition(display.width * 0.85, display.height)
	self.battleCountTTF:setPosition(8, -self.battleCountTTF:getContentSize().height / 2)
	roundName:setPosition(-80, -self.battleCountTTF:getContentSize().height / 2)
	self.countNode:addChild(roundName)
	self.countNode:addChild(self.battleCountTTF, 101)
	self.countLayer = display.newColorLayer(ccc4(0, 0, 0, 170))
	self.countLayer:setContentSize(display.width, 30)
	self.countLayer:setAnchorPoint(ccp(0.5, 1))
	self.countLayer:setPosition(0, display.height - 30)
	if self.isShowCount == false then
		self.countNode:setVisible(false)
		self.countLayer:setVisible(false)
	end
	self:addChild(self.countLayer, NUM_ZORDER)
	self:addChild(self.countNode, NUM_ZORDER)
	self.maskLayer = display.newColorLayer(ccc4(0, 0, 0, 0))
	self.maskLayer:setVisible(false)
	self.maskLayer:setContentSize(CCSize(display.width * 2, display.height * 2))
	self.shakeNode:addChild(self.maskLayer, ANGER_ZORDER)
	self.battleEffTable = {}
	self.befTalTable = {}
	self.beAtkTalTable = {}
	self.aftTalTable = {}
	ResMgr.setMetatableByKV(self.battleEffTable)
	ResMgr.setMetatableByKV(self.befTalTable)
	ResMgr.setMetatableByKV(self.beAtkTalTable)
	ResMgr.setMetatableByKV(self.aftTalTable)
	self:initPos()
	self.incomeData = param.battleData
	self:sendBattleReq()
end
function BattleLayer:sendBattleReq()
	self.isInbattle = false
	if self.incomeData == nil then
		self.reqFunc(self.curReqNum)
	else
		self:battleCallBack(self.incomeData)
		self.incomeData = nil
	end
end
function BattleLayer:battleCallBack(data)
	self.isAbleJump = true
	if self.isInitTimeScale == false and self.fubenType ~= DRAMA_FUBEN then
		self:initTimeScale()
		self.isInitTimeScale = true
	end
	self.totalData = data
	self.battleData = data["2"][1]
	local function initBattle()
		self.isPlayBat = true
		self:initBattle()
	end
	self:initJumpBtn()
	if self.curReqNum == 1 then
		initBattle()
	else
		ResMgr.delayFunc(0.5, initBattle)
	end
end
function BattleLayer:initJumpBtn()
	self.isFinal = false
	if self.isShowJumpBtn == true and self.jumpBtn == nil then
		self.jumpBtn = display.newSprite("#battle_jump.png")
		self.jumpBtn:setAnchorPoint(ccp(1, 0))
		self.jumpBtn:setPosition(display.width, 0)
		self.shakeNode:addChild(self.jumpBtn, 10000000)
		self.jumpBtn:setTouchEnabled(true)
		self.jumpBtn:addNodeEventListener(cc.NODE_TOUCH_EVENT, function (event)
			if self.isAbleJump == true and event.name == "began" then
				if self.isInbattle == true then
					self:skipBattle()
				else
					show_tip_label(common:getLanguageString("@NotSkip"))
				end
				if device.platform == "windows" or device.platform == "mac" then
					self.isInbattle = true
					self:skipBattle()
				end
				return true
			end
		end)
	end
end
function BattleLayer:skipBattle()
	if self.isInbattle == true then
		if self.fubenType == NORMAL_FUBEN then
			if self.isPassed == true then
				self:playSkipBattle()
			else
				local bHasOpen, prompt = OpenCheck.getOpenLevelById(OPENCHECK_TYPE.Tiaoguo_NormalFuben, game.player:getLevel(), game.player:getVip())
				if not bHasOpen then
					show_tip_label(prompt)
				else
					self:playSkipBattle()
				end
			end
			if device.platform == "windows" or device.platform == "mac" then
				self:playSkipBattle()
			end
		elseif self.fubenType == WORLDBOSS_FUBEN or self.fubenType == GUILD_QLBOSS_FUBEN then
			self:playSkipBattle()
		elseif self.fubenType == HUODONG_FUBEN then
			local bHasOpen = false
			local prompt = ""
			if self.fubenId == 1 then-- 劫富济贫 战斗跳过 不加等级限制
				bHasOpen = true
			else
				bHasOpen, prompt = OpenCheck.getOpenLevelById(OPENCHECK_TYPE.Tiaoguo_HuodongFuben, game.player:getLevel(), game.player:getVip())
			end
			if not bHasOpen then
				show_tip_label(prompt)
			else
				self:playSkipBattle()
			end
		elseif self.fubenType == ZHENSHEN_FUBEN then
			local bHasOpen, prompt = OpenCheck.getOpenLevelById(OPENCHECK_TYPE.Tiaoguo_Zhenshen_FuBen, game.player:getLevel(), game.player:getVip())
			if not bHasOpen then
				show_tip_label(prompt)
			else
				self:playSkipBattle()
			end
		elseif self.fubenType == LUNJIAN then
			if self.isPassed == true then
				self:playSkipBattle()
			else
				bHasOpen, prompt = OpenCheck.getOpenLevelById(OPENCHECK_TYPE.Tiaoguo_HuashanLunjian, game.player:getLevel(), game.player:getVip())
				if not bHasOpen then
					show_tip_label(prompt)
				else
					self:playSkipBattle()
				end
			end
		elseif self.fubenType == JINGYING_FUBEN then
			local bHasOpen, prompt = OpenCheck.getOpenLevelById(OPENCHECK_TYPE.Tiaoguo_JingyingFuben, game.player:getLevel(), game.player:getVip())
			if not bHasOpen then
				show_tip_label(prompt)
			else
				self:playSkipBattle()
			end
		elseif self.fubenType == GUILD_FUBEN then
			local bHasOpen, prompt = OpenCheck.getOpenLevelById(OPENCHECK_TYPE.Tiaoguo_guildFuben, game.player:getLevel(), game.player:getVip())
			if not bHasOpen then
				show_tip_label(prompt)
			else
				self:playSkipBattle()
			end
		elseif self.fubenType == DUOBAO_FUBEN then
			self:playSkipBattle()
		elseif self.fubenType == ARENA_FUBEN then
			self:playSkipBattle()
		elseif self.fubenType == KUAFU_ZHAN then
			self:playSkipBattle()
		end
		dump("========================self.fubenType" .. self.fubenType)
		dump("========================GUILD_FUBEN" .. GUILD_FUBEN)
	else
		show_tip_label(common:getLanguageString("@NotSkip"))
	end
end
function BattleLayer:playSkipBattle()
	self.isPlayBat = false
	local friendResultData = self.totalData["2"][1].f1
	local enemyResultData = self.totalData["2"][1].f2
	local count = 0
	if self.isFinal == false then
		self.isFinal = true
		self.battleEffTable = {}
		ResMgr.setMetatableByKV(self.battleEffTable)
		local function playResult(fData, cardTable)
			for curCardId, curCard in pairs(cardTable) do
				for resultId, restLife in pairs(fData) do
					if tonumber(curCardId) == tonumber(resultId) then
						local enPos = self:getPosBySideAndID(curCard:getSideID(), curCard:getPosID())
						curCard:stopAllActions()
						curCard:setPosition(enPos)
						local maxLife = curCard:getLife()
						local hitType = 0
						if curCard:getLife() > 0 then
							self:createNum({
							numType = SUB_HP,
							damageType = hitType,
							isRanPos = 1,
							numValue = math.abs(maxLife - restLife),
							pos = ccp(curCard:getPositionX(), curCard:getPositionY()),
							card = curCard
							})
							curCard:setLife(restLife)
							if restLife > 0 then
							else
								self:playDie(curCard)
							end
						else
							curCard:setVisible(false)
						end
						curCard:removeFunc()
					end
				end
			end
		end
		playResult(friendResultData, self.friendCard)
		playResult(enemyResultData, self.enemyCard)
		ResMgr.delayFunc(0.8, function ()
			self:battleResult()
		end,
		self)
	end
end
function BattleLayer:initBattle()
	local initData = self.totalData["2"][1].d[1]
	self.friendNum = 0
	self.enemyNum = 0
	self:changeBattleCount(0)
	self:playMusic()
	if self.curReqNum == 1 then --初始化我方人员
		
		local f1Data = initData.f1
		for i = 1, #f1Data do
			local cardID = f1Data[i].id
			local cardLife = f1Data[i].life
			local cardPos = f1Data[i].pos
			local startAnger = f1Data[i].anger
			local cls = f1Data[i].cls
			local star = f1Data[i].star
			local scale = f1Data[i].scale
			local maxLife = f1Data[i].initLife or cardLife
			local name = f1Data[i].name
			local Card = require("game.Charactor.characterCard").new({
			isExist = true,
			id = cardID,
			isTouchAble = false,
			cls = cls,
			star = star,
			posId = cardPos,
			side = DOWN_SIDE,
			maxLife = maxLife,
			anger = startAnger,
			scale = scale,
			name = name,
			isMove = true
			})
			Card:setPosition(self.f1Pos[cardPos])
			self.friendCard[cardPos] = Card
			self.friendNum = self.friendNum + 1
			Card:setVisible(false)
			Card:setLife(cardLife)
			self.shakeNode:addChild(Card, NORMAL_CARD_ZORDER)
		end
		local f2Data = initData.f2 --初始化敌方人员
		
		for i = 1, #f2Data do
			local cardID = f2Data[i].id
			local cardLife = f2Data[i].life
			local cardPos = f2Data[i].pos
			local startAnger = f2Data[i].anger
			local cls = f2Data[i].cls
			local star = f2Data[i].star
			local scale = f2Data[i].scale or 1
			local maxLife = f2Data[i].initLife or cardLife
			local name = f2Data[i].name
			local Card = require("game.Charactor.characterCard").new({
			isExist = true,
			id = cardID,
			posId = cardPos,
			anger = startAnger,
			side = UP_SIDE,
			isTouchAble = false,
			scale = scale,
			isShowHpAndAnger = self.isShowHpAndAnger,
			cls = cls,
			star = star,
			maxLife = maxLife,
			name = name,
			isMove = true
			})
			Card:setPosition(self.f2Pos[cardPos])
			local walkType = self.walkTypes[self.curReqNum]
			if walkType ~= 1 then
				Card:setVisible(false)
			end
			Card:setLife(cardLife)
			self.enemyCard[cardPos] = Card
			self.enemyNum = self.enemyNum + 1
			self.shakeNode:addChild(Card, NORMAL_CARD_ZORDER)
		end
		self:cardArise() --我方卡牌入场方式
	else
		self:clearEnemyCard()
		local f2Data = initData.f2
		for i = 1, #f2Data do
			local cardID = f2Data[i].id
			local cardLife = f2Data[i].life
			local cardPos = f2Data[i].pos
			local startAnger = f2Data[i].anger
			local cls = f2Data[i].cls
			local star = f2Data[i].star
			local scale = f2Data[i].scale
			local maxLife = f2Data[i].initLife or cardLife
			local Card = require("game.Charactor.characterCard").new({
			isExist = true,
			id = cardID,
			posId = cardPos,
			anger = startAnger,
			side = UP_SIDE,
			isTouchAble = false,
			isShowHpAndAnger = self.isShowHpAndAnger,
			scale = scale,
			cls = cls,
			star = star,
			maxLife = maxLife,
			isMove = true
			})
			Card:setPosition(self.f2Pos[cardPos])
			Card:setLife(cardLife)
			local walkType = self.walkTypes[self.curReqNum]
			if walkType ~= 1 then
				Card:setVisible(false)
			end
			self.enemyCard[cardPos] = Card
			self.enemyNum = self.enemyNum + 1
			self.shakeNode:addChild(Card, NORMAL_CARD_ZORDER)
		end
		self:cardWalk()
	end
	self:setTouchFunc(function ()
		if ResMgr.isShowCharName == false then
			ResMgr.isShowCharName = true
		else
			ResMgr.isShowCharName = false
		end
		for k, v in pairs(self.friendCard) do
			v:changeNameState()
		end
		for k, v in pairs(self.enemyCard) do
			v:changeNameState()
		end
		if self.fubenType == DRAMA_FUBEN then
			self:initSkipDramaBtn()
		end
	end)
end
function BattleLayer:initSkipDramaBtn()
	if self.skipDramaBtn == nil then
		local btnSprite = display.newScale9Sprite("#jump_drama_btn.png")
		self.skipDramaBtn = CCControlButton:create("", FONTS_NAME.font_fzcy, 30)
		self.skipDramaBtn:setBackgroundSpriteForState(btnSprite, CCControlStateNormal)
		self.skipDramaBtn:setPreferredSize(cc.size(144, 50))
		self.skipDramaBtn:addHandleOfControlEvent(function ()
			self:skipDrama()
		end,
		CCControlEventTouchUpInside)
		self.skipDramaBtn:setAnchorPoint(cc.p(1, 0))
		self.skipDramaBtn:setPosition(display.width - 22, 60)
		self.shakeNode:addChild(self.skipDramaBtn, 10000000)
		self.skipVis = true
	elseif self.skipVis == true then
		self.skipVis = false
		self.skipDramaBtn:setVisible(false)
	else
		self.skipVis = true
		self.skipDramaBtn:setVisible(true)
	end
end
function BattleLayer:skipDrama()
	DramaMgr.isSkipDrama = true
	self:battleResult()
end
function BattleLayer:dramaMachine(index, dramaTable, dramaEndFunc)
	if dramaTable ~= nil and index <= #dramaTable then
		local function skipFunc()
			dump("skip")
			self:dramaMachine(#dramaTable + 1, dramaTable, dramaEndFunc)
		end
		local function finFunc()
			self:dramaMachine(index + 1, dramaTable, dramaEndFunc)
		end
		local activeId = dramaTable[index]
		local dramaLayer = require("game.Tutorial.DramaLayer").new(activeId, finFunc, skipFunc)
		self:addChild(dramaLayer, EFFECT_ZORDER + 10000)
	else
		dramaEndFunc()
	end
end
function BattleLayer:playDrama(activeTime, dramaEndFunc)
	local isFirst = false
	if self.star == 0 then
		isFirst = true --通过副本星级判断当前战斗是否已经被通关过
		
	end
	local function getDramaByWave(raw_data, num)
		--部分剧情列表里的剧情数据跟波数有关系，用来判断是否是当前波的剧情
		--根据来源不同 num值 可能会是回合数/战斗数/出场次数
		
		dump(raw_data)
		dump(self.curReqNum)
		if raw_data == nil then
			return nil
		end
		for i = 1, #raw_data do
			if raw_data[i][1] == self.curReqNum then
				if DramaMgr.isSkipBattleDrama then
					raw_data[i][2] = {}
				end
				if type(raw_data[i][2]) == "number" then --如果是数字，则代表这个需要来判断数值是否相等
					
					if raw_data[i][2] == num then
						return raw_data[i][3]
					end
				elseif type(raw_data[i][2]) == "table" then --如果是table ,则表示已经完结
					
					return raw_data[i][2]
				else
					ResMgr.debugBanner(common:getLanguageString("@NotExistType"))
				end
			end
		end
		return nil
	end
	local dramaTable --读取副本中的对话类型
	if activeTime == BEFORE_ARISE then
		dramaTable = self.fubenData.arr_bef_arise
	elseif activeTime == AFTER_ONE_CARD_ARISE then
		dramaTable = getDramaByWave(self.fubenData.arr_aft_one_arise, self.arisePosNum)
	elseif activeTime == BEFORE_WALK then
		dramaTable = getDramaByWave(self.fubenData.arr_bef_walk, 0)
	elseif activeTime == AFTER_WALK then
		dramaTable = getDramaByWave(self.fubenData.arr_aft_walk, 0)
	elseif activeTime == AFTER_ROUND then
		dramaTable = getDramaByWave(self.fubenData.arr_aft_move, self.stateIndex)
	elseif activeTime == AFTER_BATTLE then
		dramaTable = getDramaByWave(self.fubenData.arr_aft_battle, 0)
	else
		GameAssert(false, common:getLanguageString("@NotExistPlot"))
	end
	local isExistDrama = false
	if dramaTable ~= nil and #dramaTable > 0 then
		isExistDrama = true
	end
	local isNormalFuben = false
	if self.fubenType == NORMAL_FUBEN or self.fubenType == DRAMA_FUBEN then
		isNormalFuben = true
	end
	if isNormalFuben and isFirst and isExistDrama then
		self:dramaMachine(1, dramaTable, dramaEndFunc)
	else
		dramaEndFunc()
	end
end
function BattleLayer:cardArise()
	local waitTime = 0.5
	local function startArise()
		local activeTime = BEFORE_WALK
		local function dramaEndFunc()
			dump("card walk kkkk")
			self:cardWalk()
		end
		if self.ariseType == 1 then
			for k, v in pairs(self.friendCard) do
				v:setVisible(true)
			end
			self:runAction(transition.sequence({
			CCDelayTime:create(waitTime),
			CCCallFunc:create(function ()
				self:playDrama(activeTime, dramaEndFunc)
			end)
			}))
		elseif self.ariseType == 2 then --一个个落下，只有这一种可能会有间隔的剧情
			do
				local delayTime = 0
				local count = 1
				local friendTable = {}
				for k, v in pairs(self.friendCard) do
					friendTable[#friendTable + 1] = v
				end
				local ariseNum = #friendTable
				self.arisePosNum = 0
				local function ariseMachine(num)
					if num > ariseNum then
						self:playDrama(BEFORE_WALK, dramaEndFunc)
					else
						do
							local curCard = friendTable[num]
							self.arisePosNum = curCard:getPosID()
							curCard:runAction(transition.sequence({
							CCCallFunc:create(function ()
								curCard:setVisible(true)
							end),
							CCCallFunc:create(function ()
								curCard:playAct("born")
							end),
							CCDelayTime:create(0.2),
							CCCallFunc:create(function ()
								local path = "sound/battlesfx/" .. "fight_down" .. ".mp3"
								GameAudio.playSound(path, false)
								self:shake(1)
							end),
							CCDelayTime:create(waitTime),
							CCCallFunc:create(function ()
								local function ariseEnd()
									return ariseMachine(num + 1)
								end
								self:playDrama(AFTER_ONE_CARD_ARISE, ariseEnd)
							end)
							}))
						end
					end
				end
				ariseMachine(1)
			end
		elseif self.ariseType == 3 then
			do
				local isRunWalkFunc = false
				local path = "sound/battlesfx/" .. "fight_shanguang" .. ".mp3"
				GameAudio.playSound(path, false)
				for k, v in pairs(self.friendCard) do
					do
						local chuxianEff = ResMgr.createArma({
						resType = ResMgr.UI_EFFECT,
						armaName = "kapaichuxian",
						finishFunc = function ()
						end,
						isRetain = false
						})
						chuxianEff:setPosition(v:getPositionX(), v:getPositionY())
						self.shakeNode:addChild(chuxianEff, NORMAL_CARD_ZORDER - 10)
						v:runAction(transition.sequence({
						CCDelayTime:create(0.1),
						CCCallFunc:create(function ()
							v:setScale(0.1)
							v:setVisible(true)
						end),
						CCScaleTo:create(0.2, 1),
						CCDelayTime:create(waitTime),
						CCCallFunc:create(function ()
							if isRunWalkFunc == false then
								isRunWalkFunc = true
								self:playDrama(activeTime, dramaEndFunc)
							end
						end)
						}))
					end
				end
			end
		elseif self.ariseType == 4 then
			self:cardCasinoArise({
			nextFunc = function ()
				self:playDrama(activeTime, dramaEndFunc)
			end
			})
		else
			ResMgr.debugBanner(common:getLanguageString("@CardError", self.ariseType))
		end
	end
	self:playDrama(BEFORE_ARISE, startArise)
end
function BattleLayer:cardWalk()
	local moveDistance = self.bgRate / 1000 * self.bgHeight
	local moveTime = 2
	local delayTime = 1 --移动后等待的时间
	local isRunBattleFunc = false
	local waitTime = 2 --卡牌出生后，等多长时间进入卡牌行走状态
	
	local walkDonwNum = 0
	local walkUpNum = 0
	local function playWalkUpSound()
		walkUpNum = walkUpNum + 1
		if walkUpNum % #self.friendCard == 0 then
			local path = "sound/skill/" .. "walk01" .. ".mp3"
			GameAudio.playSound(path, false)
		end
	end
	local walkIndex = 0
	local function playWalkDownSound()
		walkDonwNum = walkDonwNum + 1
		if walkDonwNum % #self.friendCard == 0 then
			walkIndex = walkIndex + 1
			if walkIndex == 6 then
				walkIndex = 1
			end
			local path = "sound/skill/" .. "walk0" .. tostring(walkIndex) .. ".mp3"
			GameAudio.playSound(path, false)
		end
	end
	local walkType = self.walkTypes[self.curReqNum] or 1
	if self.fubenType == JINGYING_FUBEN or self.fubenType == HUODONG_FUBEN then
		for k, v in pairs(self.friendCard) do
			if 0 < v:getLife() then
				v:setVisible(true)
				v:setFullLife()
				v:setStars(2)
				v:removeAllBuff()
			else
				v:setVisible(false)
			end
		end
	end
	local function dramaAftWalk()
		local function finDrama()
			self:playBattle()
		end
		self:playDrama(AFTER_WALK, finDrama)
	end
	if walkType == 1 then --敌我原地就有
		dramaAftWalk()
	elseif walkType == 2 then --敌有我进
		for k, v in pairs(self.enemyCard) do
			v:setPosition(v:getPositionX(), v:getPositionY() + moveDistance)
			v:setVisible(true)
			v:runAction(CCMoveBy:create(moveTime, ccp(0, -moveDistance)))
		end
		for k, v in pairs(self.friendCard) do
			v:playWalk(playWalkDownSound)
		end
		self.moveBgNode:runAction(transition.sequence({
		CCMoveBy:create(moveTime, ccp(0, -moveDistance)),
		CCCallFunc:create(function ()
			for k, v in pairs(self.friendCard) do
				v:playAct("stop")
			end
			local path = "sound/skill/" .. "walk0" .. tostring(5) .. ".mp3"
			GameAudio.playSound(path, false)
			for k, v in pairs(self.enemyCard) do
				v:playAct("stop")
			end
		end),
		CCDelayTime:create(delayTime),
		CCCallFunc:create(function ()
			dramaAftWalk()
		end)
		}))
	elseif walkType == 3 then --我在敌进
		for k, v in pairs(self.enemyCard) do
			v:setPosition(v:getPositionX(), v:getPositionY() + moveDistance)
			v:setVisible(true)
			v:playWalk(playWalkDownSound)
			v:runAction(transition.sequence({
			CCMoveBy:create(moveTime, ccp(0, -moveDistance)),
			CCCallFunc:create(function ()
				v:playAct("stop")
			end),
			CCDelayTime:create(delayTime),
			CCCallFunc:create(function ()
				if isRunBattleFunc == false then
					isRunBattleFunc = true
					dramaAftWalk()
				end
			end)
			}))
		end
	elseif walkType == 4 then --我在敌降
		for k, v in pairs(self.enemyCard) do
			do
				local chuxianEff = ResMgr.createArma({
				resType = ResMgr.UI_EFFECT,
				armaName = "kapaichuxian",
				finishFunc = function ()
				end,
				isRetain = false
				})
				chuxianEff:setPosition(v:getPositionX(), v:getPositionY())
				self.shakeNode:addChild(chuxianEff, NORMAL_CARD_ZORDER - 10)
				v:runAction(transition.sequence({
				CCDelayTime:create(0.1),
				CCCallFunc:create(function ()
					v:setScale(0.1)
					v:setVisible(true)
				end),
				CCScaleTo:create(0.2, 1),
				CCDelayTime:create(0.5),
				CCCallFunc:create(function ()
					if isRunBattleFunc == false then
						isRunBattleFunc = true
						dramaAftWalk()
					end
				end)
				}))
			end
		end
	else
		ResMgr.debugBanner(common:getLanguageString("@RunWayError"))
	end
end
function BattleLayer:onExit()
	if TutoMgr.getPlotNum() == 0 then
		TutoMgr.setServerNum({setNum = 30})
	end
	CCUserDefault:sharedUserDefault():setBoolForKey("isBattle", false)
	ResMgr.removeSpriteFramesWithFile("ui/ui_battle.plist", "ui/ui_battle.png")
	ResMgr.removeSpriteFramesWithFile("ui/card_yun.plist", "ui/card_yun.png")
	CCTextureCache:sharedTextureCache():removeUnusedTextures()
	ResMgr.ReleaseUIArmature("kapaichuxian")
	CCArmatureDataManager:purge()
	self:removeAllChildrenWithCleanup(true)
	collectgarbage("collect")
	DramaMgr.isSkipBattleDrama = false
end
function BattleLayer:getTalData(rawTal)
	local befTals = {}
	local beAtkTals = {}
	local aftTals = {}
	local function addTalentData(show, talentData)
		--通过类型把不同的神通存在不同的节点table上
		
		
		if show == 0 then
		elseif show == 1 then --所有动作之前
			
			befTals[#befTals + 1] = talentData
		elseif show == 3 then --与被击动画同时播放
			
			beAtkTals[#beAtkTals + 1] = talentData
		elseif show == 2 then --所有动作之后
			
			aftTals[#aftTals + 1] = talentData
		else
			ResMgr.debugBanner(common:getLanguageString("@NotExistGift", show))
		end
	end
	if rawTal ~= nil and #rawTal > 0 then
		for i = 1, #rawTal do
			local talentId = rawTal[i].sid
			local talentStaticData = data_talent_talent[talentId]
			local show = talentStaticData.show
			addTalentData(show, rawTal[i])
		end
	end
	return befTals, beAtkTals, aftTals
end
function BattleLayer:playBattle()
	local atkData = self.battleData.d
	self.isInbattle = true
	self.stateIndex = 1
	self:stateMachine()
end
function BattleLayer:stateMachine()
	if self.isFinal == false then
		--每次调用状态机，都会自+1
		
		self.stateIndex = self.stateIndex + 1
		local atkData = self.battleData.d[self.stateIndex]
		
		--当前释放的主卡
		
		
		local actCard = self:getCardByData(atkData)
		if actCard ~= nil then
			actCard:setZOrder(ACTIVE_CARD_ZORDER)
		end
		self:changeBattleCount(atkData.n)
		self.roundNum = atkData.n
		self.aftTalTable = {}
		self.beAtkTalTable = {}
		self.befTalTable = {}
		ResMgr.setMetatableByKV(self.aftTalTable)
		ResMgr.setMetatableByKV(self.beAtkTalTable)
		ResMgr.setMetatableByKV(self.befTalTable)
		if atkData.t == T_BATTLE_SPELL then --放怒气技能，或者攻击技能		
			dump("count1 : ", collectgarbage("count"))
			self.actTable = {}
			dump("count1 : ", collectgarbage("count"))
			ResMgr.setMetatableByKV(self.actTable)
			self:unpackSkillData(self.actTable, atkData)
			return self:atkDataMachine(1, self.actTable)
		elseif atkData.t == T_BATTLE_BUFF then
			return self:initBuff(atkData)
		elseif atkData.t == T_BATTLE_END then --战斗结			
			return self:battleResult()
		end
	end
end
function BattleLayer:initBuff()
	local buffData = self.battleData.d[self.stateIndex]
	local buffSide = buffData.s
	local buffPos = buffData.p
	local buffId = buffData.b
	local isEff = buffData.eff --1 生效 2 移除
	local buffTypes = buffData.k
	local buffValues = buffData.v
	local restLife = buffData.l --buff 触发后剩余血量 是否死亡
	local fileName = data_buff_buff[buffId].special
	local isShowNum = false
	local showTime = 0 --buff显示时间，如果产生数值 则直接进入下一轮
	
	local curType = data_buff_buff[buffId].effect
	if curType == 3 or curType == 4 or curType == 5 then
		isShowNum = true
		showTime = 0.1
	end
	local function delyEff()
		local existBuffs
		if buffSide == UP_SIDE then
			existBuffs = self.enemyBuff[buffPos]
		else
			existBuffs = self.friendBuff[buffPos]
		end
		local beAtkCard = self:getCardBySideId(buffSide, buffPos)
		local numT = SUB_HP
		local actName = "stop"
		local curType = data_buff_buff[buffId].effect
		if curType == 4 or curType == 5 then
			actName = "hit"
		end
		if #buffValues > 0 then --部分特效可能是没数值的
			if 0 <= buffValues[1] then
				numT = HEAL_HP
			else
				numT = SUB_HP
			end
			local hitType = 0
			if isShowNum then
				self:createNum({
				numType = numT,
				damageType = hitType,
				isRanPos = 1,
				numValue = math.abs(buffValues[1]),
				pos = ccp(beAtkCard:getPositionX(), beAtkCard:getPositionY()),
				card = beAtkCard
				})
			end
		end
		if isEff == 1 then
			ResMgr.debugBanner("buff生效啦！ buffId是" .. buffId)
			beAtkCard:playAct(actName)
		else
			dump("bububuubububu")
			local fileName = data_buff_buff[buffId].special
			beAtkCard:removeBuff(fileName)
		end
	end
	local runFuncNode = display.newNode()
	self.shakeNode:addChild(runFuncNode)
	local befDelay = CCDelayTime:create(showTime)
	local befFunc = CCCallFunc:create(function ()
		delyEff()
	end)
	local delayTime = CCDelayTime:create(showTime)
	local func = CCCallFunc:create(function ()
		if restLife == 0 then
			local card = self:getCardBySideId(buffSide, buffPos)
			self:playDie(card)
			card:setVisible(false)
		end
		self:nextRound()
	end)
	local removeNodeFunc = CCCallFunc:create(function ()
		runFuncNode:removeSelf()
	end)
	runFuncNode:runAction(transition.sequence({
	befDelay,
	befFunc,
	delayTime,
	func,
	removeNodeFunc
	}))
end
function BattleLayer:unpackAtkData(atkData)
	--目标数据
	local targetResults =  atkData["tr"]
	--反击数据
	local fightBack = atkData["fb"]
	--技能id
	local skillId = atkData["skill"]
	local skillStaticData = data_battleskill_battleskill[skillId]
	if skillStaticData ==nil then
		ResMgr.debugBanner("技能数据为空 ID为"..skillId)
	end
	
	local skillName = skillStaticData["name"]
	--神通数据
	
	local rawTal = atkData["tal"]
	--buff
	local skillBuffs = atkData["buff"]
	--主动卡怒气
	local actAnger = atkData["a"]
	--主动卡
	
	local actCard = self:getCardByData(atkData)
	
	--怒气值改变
	
	local ta = atkData["ta"]
	
	return targetResults,fightBack,skillId,skillStaticData,skillName,rawTal,skillBuffs,actAnger,actCard,ta
	
end

function BattleLayer:atkDataMachine(index,actTable)
	
	if self.isPlayBat ~= true then
		return
	end
	local curAtkData = actTable[index]
	
	if curAtkData ~= nil then
		local curType = curAtkData.type
		local curData = curAtkData.data
		
		
		if curData ~= nil then
			local tr = curData["tr"]
			self:updateDmageNum(UP_SIDE,self.upDamage)
			self.upDamage = 0
			if tr ~= nil then
				for i = 1,#tr do
					if tr[i]["s"] == 2 then
						self.upDamage = self.upDamage + tr[i]["d"]
					end
				end
			end
		end
		
		
		if curType == TAL_ANIM_TYPE then
			return self:cardPlayTal(curData,index,actTable)
		elseif curType == TAL_PROP_TYPE then
			return self:cardPlayProp(curData,index,actTable)
		elseif curType == TAL_PROP_END_TYPE then
			-- self:setFinalAnger()
			return self:atkDataMachine(index + 1,actTable)
		elseif curType == BUFF_TYPE then
			return self:cardPlayBuff(curData,index,actTable)
		elseif curType == SKILL_TYPE then
			return self:cardPlaySkill(curData,index,actTable)
		elseif curType == BACK_TYPE then
			return self:nextRound()
		else
		end
	else
		--结束，进入下一轮atkData
		return self:nextRound()
	end
end


function BattleLayer:cardPlayTal(curData,index,actTable)
	
	
	local card =  self:getCardByData(curData)
	card:setZOrder(ACTIVE_CARD_ZORDER)
	local talId = curData.sid
	
	return self:createTalName(card,talId, function ()
		-- card:setZOrder(NORMAL_CARD_ZORDER)
		return self:atkDataMachine(index + 1,actTable)
		
	end)
	
end

function BattleLayer:cardPlayProp(curData, index, actTable)
	return self:changeProps(curData,card, function ()
		return self:atkDataMachine(index + 1,actTable)
	end)
end

function BattleLayer:cardPlayBuff(curData,index, actTable)
	self:createBuff(curData)
	return self:atkDataMachine(index + 1,actTable)
end

function BattleLayer:cardPlaySkill(curData, index, actTable)
	return self:playSkill(curData, function ()
		return self:atkDataMachine(index + 1,actTable)
	end)
end

function BattleLayer:unpackTalData(actTable,talTable)
	
	for index = 1,#talTable do
		local talData = talTable[index]
		local curTalData = {}
		curTalData.type = TAL_ANIM_TYPE
		curTalData.data = talData
		actTable[#actTable + 1] = curTalData		
		
		for i = 1,#(talData.prop) do
			local curProp = {}
			curProp.type = TAL_PROP_TYPE
			curProp.data = talData.prop[i]
			actTable[#actTable + 1] = curProp
			if i == #(talData.prop) then
				local curPropEnd = {}
				curPropEnd.type = TAL_PROP_END_TYPE
				actTable[#actTable + 1] = curPropEnd
			end
		end
		
		for i = 1,#(talData.skill) do
			local skillData = talData.skill[i]
			self:unpackSkillData(actTable, skillData)
		end
		
		if talData.buff ~= nil then
			self:unpackBuff(actTable, talData.buff)
		end
	end
end

function BattleLayer:unpackBuff(actTable,buffData)
	for i = 1,#(buffData) do
		local curBuff = {}
		curBuff.type = BUFF_TYPE
		curBuff.data = buffData[i]
		actTable[#actTable + 1] = curBuff
	end
	
end

function BattleLayer:unpackFightBackData(actTable,fbs)
	
	for index = 1,#fbs do
		self:unpackSkillData(actTable, fbs[index])
	end
end

function BattleLayer:unpackSkillData(actTable,skillData)
	
	local befTals,beAtkTals,aftTals = self:getTalData(skillData.tal)	
	
	--解析神通 战斗前神通	
	if befTals ~= nil then
		self:unpackTalData(actTable, befTals)
	end
	
	--普通战斗技能	
	local curSkill = {}
	curSkill.type = SKILL_TYPE
	curSkill.data = skillData
	actTable[#actTable + 1] = curSkill
	
	--上buff
	if skillData.buff ~= nil and #(skillData.buff) > 0 then
		self:unpackBuff(actTable, skillData.buff)
	end
	
	--被击中神通	
	if beAtkTals ~= nil then
		self:unpackTalData(actTable, beAtkTals)
	end
	
	--格挡反击:格挡反击触发的神通应该是放在里面
	if skillData.fb ~= nil then
		self:unpackFightBackData(actTable,skillData.fb)
	end
	
	--战斗后神通技
	if aftTals ~= nil then
		self:unpackTalData(actTable, aftTals)
	end
end

function BattleLayer:playRage(atkData, fontScale, specialData)
	local tr, fightBack, skillId, skillStaticData, skillName, rawTal, skillBuffs, actAnger, actCard = self:unpackAtkData(atkData)
	local curScale = fontScale or 1.9
	
	--播放怒气动画过程
	--1.播放屏幕变黑
	
	if actCard:getSideID() == DOWN_SIDE then --处于上边的卡牌不播放怒气技
		local card = ResMgr.getCardData(actCard.cardResId)
		if card.battleSound then
			ResMgr.playSfx(card.battleSound, ResMgr.PERSION_SFX)
		end
		self:fade(0.1, 1) --播完以后再放技能
		
		actCard:playShow(specialData)
		self:playSound("skill_nuqidonghua", false)
		local rageNamePos = self:getEffPosByID(5, actCard)[1]
		rageNamePos.y = rageNamePos.y + display.height * data_atk_number_time_time[1].anger_posy / 1000
		local nameEff = ResMgr.createArma({
		resType = ResMgr.NORMAL_EFFECT,
		armaName = "nuqiji_zi",
		isRetain = false
		})
		nameEff:setPosition(rageNamePos)
		display.getRunningScene():addChild(nameEff, EFFECT_ZORDER + 10)
		local nameStr = skillStaticData.rageSpriteName
		if nameStr ~= nil then
			do
				local namePath = "image_name/rage_image/" .. nameStr .. ".png"
				local nameSprite = display.newSprite(namePath)
				local nameBg = display.newSprite("#da_nuqi_bg.png")
				nameBg:setPosition(nameSprite:getContentSize().width / 2 + 30, nameSprite:getContentSize().height / 2)
				nameSprite:addChild(nameBg, -1)
				nameSprite:setPosition(rageNamePos)
				nameSprite:setVisible(false)
				display.getRunningScene():addChild(nameSprite, EFFECT_ZORDER + 100)
				local bigStart = CCCallFunc:create(function ()
					nameSprite:setScale(4)
					nameSprite:setVisible(true)
				end)
				local small = CCScaleTo:create(0.1, curScale)
				local delay = CCDelayTime:create(0.8)
				local fadeOut = CCFadeOut:create(0.2)
				local fadeSpawn = CCSpawn:createWithTwoActions(fadeOut, CCMoveBy:create(0.2, ccp(-600, 0)))
				local rev = CCCallFunc:create(function ()
					nameSprite:removeSelf()
				end)
				nameSprite:runAction(transition.sequence({
				bigStart,
				small,
				delay,
				fadeSpawn,
				rev
				}))
			end
		end
		local rageEff = ResMgr.createArma({
		resType = ResMgr.NORMAL_EFFECT,
		armaName = "dazhaoshifang",
		isRetain = false
		})
		actCard:addChild(rageEff)
	end
end
function BattleLayer:playSkill(atkData, endFunc)
	local skillId = atkData.skill
	local tr = atkData.tr
	local skillStaticData = data_battleskill_battleskill[skillId]
	dump("skillid " .. skillId)
	local startFuncs = skillStaticData.arr_funcs
	if ResMgr.isHighEndDevice() == false then
		startFuncs = skillStaticData.arr_funcs2
	end
	for i = 1, #startFuncs do
		self:runFunc(startFuncs[i], atkData, endFunc)
	end
end
function BattleLayer:createTalName(card, talId, endFunc)
	local image_name = "image_name/talent_image/" .. data_talent_talent[talId].image_name .. ".png"
	local talData = data_shentong_shentong[data_talent_talent[talId].shentong]
	local stType = talData.type
	local image = { -- 1攻击 2治疗 3辅助 4防御
	"bg_atk",
	"bg_heal",
	"bg_help",
	"bg_def"
	}
	local image_bg_name = "image_name/talent_image/" .. image[stType] .. ".png"
	local tal_bg = display.newSprite(image_bg_name)
	local tal_name = display.newSprite(image_name)
	tal_name:setPosition(tal_bg:getContentSize().width / 2, tal_bg:getContentSize().height / 2)
	tal_bg:addChild(tal_name)
	tal_bg:setPosition(0, -card:getContentSize().height / 2)
	local isAct = data_talent_talent[talId].isAct --是否播神通
	
	if isAct ~= nil and isAct ~= 0 then
		card:playAct("shentong", nil, endFunc, 1.3)
		local path = "sound/battlesfx/" .. "shentongfanzhuan" .. ".mp3"
		GameAudio.playSound(path, false)
	else
		endFunc()
	end
	local function effFunc()
		local shentongEff = ResMgr.createArma({
		resType = ResMgr.NORMAL_EFFECT,
		armaName = "shentongbaoqi",
		isRetain = false
		})
		shentongEff:setPosition(card:getPosition())
		self.shakeNode:addChild(shentongEff, EFFECT_ZORDER)
	end
	local scaleFunc = CCCallFunc:create(function ()
		tal_bg:setScaleY(0.1)
	end)
	local nodeScale = CCScaleTo:create(0.2, 1)
	local nodeDelay = CCDelayTime:create(1.3)
	local scaleSmaller = CCScaleTo:create(0.2, 0.1)
	local nodeRev = CCCallFunc:create(function ()
		tal_bg:removeSelf()
	end)
	tal_bg:runAction(transition.sequence({
	scaleFunc,
	nodeScale,
	nodeDelay,
	scaleSmaller,
	nodeRev
	}))
	card:addChild(tal_bg)
end

function BattleLayer:changeProps(curData, card, talEndFunc)
	local propType = curData.idx --属性编号
	local propValue = curData.val --属性值
	local propSide = curData.s
	local propPos = curData.p
	local propEndLife = curData.l
	local card = self:getCardBySideId(propSide, propPos)
	card:setZOrder(ACTIVE_CARD_ZORDER)
	local fontNode = display.newNode()
	local propFont, propNum
	local isAdd = false
	local healEff
	local natureData = data_item_nature[propType]
	if natureData ~= nil then
		do
			local isShowNum = natureData.isShowNum
			local isShowFont = natureData.isShowFont
			function getPropFont()
				local tempFont
				local pic_name = natureData.prop_pic
				if pic_name ~= nil then
					if propValue > 0 then
						isAdd = true
						tempFont = display.newSprite("#" .. pic_name .. "_up.png")
					else
						isAdd = false
						tempFont = display.newSprite("#" .. pic_name .. "_down.png")
					end
				end
				return tempFont
			end
			function getPropNum()
				local tempPropNum
				if propValue > 0 then
					isAdd = true
					tempPropNum = ui.newBMFontLabel({
					text = "+" .. propValue,
					font = "fonts/font_green.fnt"
					})
				else
					isAdd = false
					tempPropNum = ui.newBMFontLabel({
					text = "-" .. propValue,
					font = "fonts/font_red.fnt"
					})
				end
				return tempPropNum
			end
			local fontNode = display.newNode()
			if isShowFont == 1 and isShowNum == 1 then --有文字也有数字
				
				propFont = getPropFont()
				propNum = getPropNum()
				propFont:setAnchorPoint(ccp(0, 0.5))
				propNum:setAnchorPoint(ccp(0, 0.5))
				local offsetX = (propFont:getContentSize().width + propNum:getContentSize().width) / 2
				propFont:setPosition(-offsetX, 0)
				propNum:setPosition(-offsetX + propFont:getContentSize().width, 0)
			elseif isShowFont == 1 and isShowNum ~= 1 then --有文字没数字
				propFont = getPropFont()
			elseif isShowFont ~= 1 and isShowNum == 1 then --有数字没文字
				propNum = getPropNum()
			elseif talEndFunc ~= nil then --既没数字，也没文字
				
				return talEndFunc()
			end
			if propFont ~= nil then
				fontNode:addChild(propFont)
			end
			if propNum ~= nil then
				fontNode:addChild(propNum)
			end
			local scaleFunc = CCCallFunc:create(function ()
				fontNode:setScaleY(0.1)
			end)
			local nodeScale = CCScaleTo:create(0.1, 1)
			local nodeMoveBy = CCMoveBy:create(0.8, ccp(0, 100))
			local nodeRev = CCCallFunc:create(function ()
				if propType == 21 then
					card:addLife(propValue)
				elseif propType == 79 then
					card:addStars(propValue)
				end
				if talEndFunc ~= nil then
					talEndFunc()
				end
				fontNode:removeSelf()
			end)
			fontNode:runAction(transition.sequence({
			scaleFunc,
			nodeScale,
			nodeMoveBy,
			nodeRev
			}))
			card:addChild(fontNode)
		end
	end
end
function BattleLayer:createNatureFont(add, natureId, card)
	if add ~= nil then
		local prop_pic = data_item_nature[natureId].prop_pic
		if prop_pic ~= nil then
			do
				local add_str, add_symbo
				if add == 0 then
					add_str = "_down"
					add_symbo = -1
				else
					add_str = "_up"
					add_symbo = 1
				end
				local propSprite = display.newSprite("#" .. prop_pic .. add_str .. ".png")
				local scaleFunc = CCCallFunc:create(function ()
					propSprite:setScaleY(0.1)
				end)
				local nodeScale = CCScaleTo:create(0.1, 1)
				local nodeMoveBy = CCMoveBy:create(0.8, ccp(0, add_symbo * 50))
				local nodeRev = CCCallFunc:create(function ()
					propSprite:removeSelf()
				end)
				propSprite:runAction(transition.sequence({
				scaleFunc,
				nodeScale,
				nodeMoveBy,
				nodeRev
				}))
				card:addChild(propSprite)
			end
		end
	end
end
function BattleLayer:createDelayNature(card, addTable, natureTable)
	dump("createDelayNature")
	if natureTable ~= nil then
		for i = 1, #natureTable do
			ResMgr.delayFunc(0.8 * (i - 1), function ()
				self:createNatureFont(addTable[i], natureTable[i], card)
			end,
			self)
		end
	end
end
function BattleLayer:playMianYi(card)
	local mianSprite = display.newSprite("#mianyi.png")
	local scaleFunc = CCCallFunc:create(function ()
		mianSprite:setScaleY(0.1)
	end)
	local nodeScale = CCScaleTo:create(0.1, 1)
	local nodeMoveBy = CCMoveBy:create(0.8, ccp(0, 50))
	local nodeRev = CCCallFunc:create(function ()
		mianSprite:removeSelf()
	end)
	card:addChild(mianSprite)
	mianSprite:runAction(transition.sequence({
	scaleFunc,
	nodeScale,
	nodeMoveBy,
	nodeRev
	}))
end
function BattleLayer:createBuff(data)
	local buffSide = data.s
	local buffPos = data.p
	local buffId = data.b
	local continiueTime = data.c
	local replaceId = data.replaceId
	local fileName = data_buff_buff[buffId].special
	local isMian = data.isMian
	local card = self:getCardBySideId(buffSide, buffPos)
	if isMian ~= nil and isMian == 1 then
		return self:playMianYi(card)
	end
	local arr_props = data_buff_buff[buffId].arr_props
	local arr_affect = data_buff_buff[buffId].arr_affect
	self:createDelayNature(card, arr_affect, arr_props)
	local removeBuffName
	if replaceId ~= 0 then
		removeBuffName = data_buff_buff[replaceId].special
	end
	if fileName ~= nil then
		if removeBuffName ~= nil then
			card:removeBuff(removeBuffName)
		end
		card:addBuff(fileName)
	end
end
function BattleLayer:playSound(filename, isLoop)
	local path = "sound/skill/" .. filename .. ".mp3"
	GameAudio.playSound(path, isLoop)
end
function BattleLayer:runFunc(info, atkData, endFunc)
	if self.isPlayBat ~= true then
		return
	end
	
	--按照info 执行对应函数
	
	local funcType = info[1]
	local funcId = info[2]
	if funcType == FUNC_END then
		return self:skillEnd(atkData, endFunc)
	elseif funcType == EFFECT_FUNC then
		return self:skillEff(funcId, atkData, endFunc)
	elseif funcType == CARD_MOVE_FUNC then
		dump("cccccarrrdddmomo")
		return self:skillCardMove(funcId, atkData, endFunc)
	elseif funcType == CARE_ROTATE_FUNC then
		return self:skillCardRotate(funcId, atkData, endFunc)
	elseif funcType == SPECIAL_FUNC then
		return self:skillSpecial(funcId, atkData, endFunc)
	end
end
function BattleLayer:getTa(ta, side, pos)
	if #ta > 0 then
		for k, v in ipairs(ta) do
			if v.s == side and v.p == pos then
				return v.a
			end
		end
	end
end
function BattleLayer:setCardAnger(card, orAnger, targetAnger)
	local side = card:getSideID()
	local pos = card:getPosID()
	local propFont
	local propSymbo = 1
	if targetAnger ~= nil then
		if targetAnger > 0 then
			propFont = display.newSprite("#battle_nuqi_up.png")
			propSymbo = 1
		elseif targetAnger < 0 then
			propSymbo = -1
			propFont = display.newSprite("#battle_nuqi_down.png")
		end
		local scaleFunc = CCCallFunc:create(function ()
			propFont:setScaleY(0.1)
		end)
		local nodeScale = CCScaleTo:create(0.1, 1)
		local nodeMoveBy = CCMoveBy:create(0.8, ccp(0, 50 * propSymbo))
		local nodeRev = CCCallFunc:create(function ()
			propFont:removeSelf()
		end)
		card:addChild(propFont)
		propFont:runAction(transition.sequence({
		scaleFunc,
		nodeScale,
		nodeMoveBy,
		nodeRev
		}))
		card:setStars(orAnger + targetAnger)
	end
end
function BattleLayer:playImEff(card, imType)
	local file
	if imType == IM_TYPE.wuli then
		file = "#battle_wuli_mianyi.png"
	elseif imType == IM_TYPE.fashu then
		file = "#battle_fashu_mianyi.png"
	end
	if imType ~= nil then
		do
			local imSprite = display.newSprite(file)
			local scaleFunc = CCCallFunc:create(function ()
				imSprite:setScaleY(0.1)
			end)
			local nodeScale = CCScaleTo:create(0.1, 1)
			local nodeMoveBy = CCMoveBy:create(0.8, ccp(0, 50))
			local nodeRev = CCCallFunc:create(function ()
				imSprite:removeSelf()
			end)
			card:addChild(imSprite)
			imSprite:runAction(transition.sequence({
			scaleFunc,
			nodeScale,
			nodeMoveBy,
			nodeRev
			}))
		end
	end
end
function BattleLayer:skillEff(funcId, atkData, endFunc)
	local tr, fightBack, skillId, skillStaticData, skillName, rawTal, skillBuffs, actAnger, actCard, ta = self:unpackAtkData(atkData)
	local effectData = data_effect_effect[funcId]
	local effectName = effectData.effectName
	local effectScale = effectData.scale / 1000
	local movePoints = effectData.arr_movePos
	local moveTimes = effectData.arr_moveTime
	local track = effectData.arr_track
	local isMutiple = effectData.isMutiple
	local flipDir = effectData.flipDir
	local dir = effectData.dir
	local interval = effectData.interval
	local funcDelay = effectData.arr_funcDelay
	local funcs = effectData.arr_funcs
	local isPlayName = effectData.isPlayName
	local particleName = effectData.particle
	local sfx = effectData.sfx
	local isPlayName = effectData.isPlayName
	local isHurtEff = false
	if isPlayName == 1 then
		actCard:playTinyShow(skillName)
	end
	local effectShakeId = effectData.shake
	if effectShakeId ~= nil then
		self:effectShake(effectShakeId)
	end
	local effZorder
	if effectData.effZorder == nil then
		effZorder = EFFECT_ZORDER
	elseif effectData.effZorder == 0 then
		effZorder = BG_EFF_ZORDER
	else
		effZorder = EFFECT_ZORDER
	end
	if sfx ~= 0 then
		self:playSound(sfx, false)
	end
	
	
	--当命中多个目标时，只能播放一个音效，处理多个特效多次的时候 就用如下函数
	--进行计数，每当全部目标都命中了以后，就播放一次特效
	
	
	local beHitCount = 0
	local function playBeAtkSound()
		beHitCount = beHitCount + 1
		local beAtkSfx = skillStaticData.sfx
		if ResMgr.isHighEndDevice() == false then
			beAtkSfx = skillStaticData.sfx2
		end
		if beHitCount % #tr == 0 and beAtkSfx ~= nil and beAtkSfx ~= 0 then
			self:playSound(beAtkSfx, false)
		end
	end
	self.battleEffTable = {}
	ResMgr.setMetatableByKV(self.battleEffTable)
	local maxPosNum = 1
	local posTable = {}
	for i = 1, #movePoints do
		local curPos = self:getEffPosByID(movePoints[i], actCard, tr)
		if maxPosNum < #curPos then
			maxPosNum = #curPos
		end
		posTable[#posTable + 1] = curPos
	end
	local isPlay = false
	local mianyiFlagList = {}
	for i = 1, #tr do
		table.insert(mianyiFlagList, {wuli = false, fashu = false})
	end
	local function beAtk(i)
		isHurtEff = true
		playBeAtkSound()
		local shakeType = skillStaticData.shake
		if ResMgr.isHighEndDevice() == false then
			shakeType = skillStaticData.shake2
		end
		self:shake(shakeType)
		local curTr = tr[i]
		local curSide = curTr.s
		local curPos = curTr.p
		local life = curTr.l
		local anger = curTr.a
		local beAtkCard = self:getCardBySideId(curSide, curPos)
		beAtkCard:setLife(life)
		local beEffect = "beEffect"
		if ResMgr.isHighEndDevice() == false then
			beEffect = "beEffect2"
		end
		local beAtkFileName = skillStaticData[beEffect]
		local numCount = curTr.cnt
		local numVal = curTr.h / numCount
		local numT = 1
		local hitTypes = curTr.st
		local actType = DAMAGE_TYPE
		local curActAnger = curTr.sa
		local imType = curTr.im
		if curActAnger ~= nil then
			actCard:setStars(curActAnger)
		end
		for i = 1, #hitTypes do
			if hitTypes[i] == DODGE_TYPE then
				actType = DODGE_TYPE
				break
			elseif hitTypes[i] == HEAL_TYPE then
				actType = HEAL_TYPE
				break
			else
				actType = CRITICAL_TYPE
			end
		end
		if actType ~= DODGE_TYPE then
			local beAtkEff = ResMgr.createArma({
			resType = ResMgr.NORMAL_EFFECT,
			armaName = beAtkFileName,
			isRetain = false,
			frameFunc = function ()
			end
			})
			beAtkCard:addChild(beAtkEff)
		end
		if actType == DODGE_TYPE then
			beAtkCard:playAct("dodge")
			numT = NO_HP
		elseif actType == HEAL_TYPE then
			numT = HEAL_HP
			beAtkCard:playAct("heal")
		else
			numVal = curTr.d / numCount
			beAtkCard:playAct("hit")
		end
		if numVal > 0 then
			self:createNum({
			numType = numT,
			damageType = actType,
			isRanPos = numCount,
			numValue = numVal,
			pos = ccp(beAtkCard:getPositionX(), beAtkCard:getPositionY()),
			card = beAtkCard
			})
		end
		for i = 1, #hitTypes do
			self:createFont({
			damageType = hitTypes[i],
			sideID = beAtkCard:getSideID(),
			posID = beAtkCard:getPosID(),
			count = numCount,
			pos = ccp(beAtkCard:getPositionX(), beAtkCard:getPositionY())
			})
		end
		if imType ~= nil then
			local bCan = false
			if imType == IM_TYPE.wuli and mianyiFlagList[i].wuli == false then
				bCan = true
				mianyiFlagList[i].wuli = true
			elseif imType == IM_TYPE.fashu and mianyiFlagList[i].fashu == false then
				bCan = true
				mianyiFlagList[i].fashu = true
			end
			if bCan == true then
				self:playImEff(beAtkCard, imType)
			end
		end
	end
	for i = 1, maxPosNum do
		do
			local parEff
			if particleName ~= nil and particleName ~= 0 then
				parEff = ResMgr.createParticle(particleName)
				self.shakeNode:addChild(parEff, effZorder - 1)
			end
			local isHasShowIm = false
			local effArma = ResMgr.createArma({
			resType = ResMgr.NORMAL_EFFECT,
			armaName = effectName,
			frameTag = "atkEff",
			frameFunc = function ()
				if maxPosNum == 1 then
					for j = 1, #tr do
						if effectData.isEffect == 1 then
							beAtk(j)
						end
					end
				elseif effectData.isEffect == 1 then
					beAtk(i)
				end
			end,
			finishFunc = function ()
				if parEff ~= nil then
					parEff:removeSelf()
				end
				if isHurtEff == true and i == maxPosNum and ta ~= nil and #ta ~= 0 then
					for k = 1, #ta do
						local taSide = ta[k].s
						local taPos = ta[k].p
						local targetAnger = ta[k].a
						local angerCard = self:getCardBySideId(taSide, taPos)
						local orAnger = 0
						for m = 1, #tr do
							if tr[m].s == taSide and tr[m].p == taPos then
								orAnger = tr[m].a
								break
							end
						end
						self:setCardAnger(angerCard, orAnger, targetAnger)
					end
				end
			end,
			isRetain = false
			})
			effArma:setScale(effectScale)
			self.shakeNode:addChild(effArma, effZorder)
			local moveActions = {}
			local partActions = {}
			for j = 1, #posTable do
				local curPos = posTable[j]
				local targetPos
				if i > #curPos then
					targetPos = curPos[1]
				else
					targetPos = curPos[i]
				end
				if flipDir == 1 then
				elseif flipDir == 2 then
					if actCard:getSideID() == UP_SIDE then
						effArma:setScaleY(-1)
					end
				elseif parEff ~= nil and flipDir == 3 and j ~= 1 then
					do
						local angle = self:getAngleByPos(ccp(effArma:getPosition()), targetPos)
						local rotate = CCCallFunc:create(function ()
							effArma:setRotation(angle)
							if parEff ~= nil then
							end
						end)
						moveActions[#moveActions + 1] = rotate
					end
				end
				if j == 1 then
					effArma:setPosition(targetPos)
					if parEff ~= nil then
						parEff:setPosition(targetPos)
					end
				else
					local moveTo = CCMoveTo:create(moveTimes[j - 1] / 1000, targetPos)
					moveActions[#moveActions + 1] = moveTo
					local partMove = CCMoveTo:create(moveTimes[j - 1] / 1000, targetPos)
					partActions[#partActions + 1] = partMove
				end
			end
			if #moveActions ~= 0 then
				effArma:runAction(transition.sequence(moveActions))
				if parEff ~= nil and #partActions ~= 0 then
					parEff:runAction(transition.sequence(partActions))
				end
			end
		end
	end
	if #funcDelay ~= #funcs then
		ResMgr.debugBanner("调用函数数量与延迟数量不一样 effecId是" .. funcId)
	end
	return self:runDelayFuncs(funcDelay, funcs, atkData, endFunc)
end
function BattleLayer:runDelayFuncs(funcDelay, funcs, atkData, endFunc)
	for i = 1, #funcDelay do
		do
			local runFuncNode = display.newNode()
			self.shakeNode:addChild(runFuncNode)
			local delayTime = CCDelayTime:create(funcDelay[i] / 1000)
			local func = CCCallFunc:create(function ()
				self:runFunc(funcs[i], atkData, endFunc)
			end)
			local removeNodeFunc = CCCallFunc:create(function ()
				runFuncNode:removeSelf()
			end)
			runFuncNode:runAction(transition.sequence({
			delayTime,
			func,
			removeNodeFunc
			}))
		end
	end
end
function BattleLayer:skillCardMove(funcId, atkData, endFunc)
	local actCard = self:getCardByData(atkData)
	local tr = atkData.tr
	local MAIN_CARD = 1 --主动卡
	
	local BEEFF_CARD = 2 --被动卡组
	local moveData = data_card_move_card_move[funcId]
	local movePoints = moveData.arr_pos
	local moveTimes = moveData.arr_time
	local moveTrack = moveData.arr_track
	local animName = moveData.animName
	local animSpeed = moveData.animSpeed / 1000
	local target = moveData.target
	local funcDelay = moveData.arr_funcDelay
	local funcs = moveData.arr_funcs
	local cards = {}
	local cardSide = actCard:getSideID()
	if target == MAIN_CARD then
		cards[1] = actCard
		cardSide = actCard:getSideID()
	elseif target == BEEFF_CARD then
		for i = 1, #tr do
			cards[#cards + 1] = self:getCardByData(tr[i])
		end
		cardSide = tr[1].s
	else
		ResMgr.debugBanner("不存在的卡牌类型 skillCardMove")
	end
	for i = 1, #cards do
		local curCard = cards[i]
		if animName ~= 0 then
			if actCard:getSideID() == UP_SIDE and animName ~= "trick" and animName ~= "skill_yinshen" and animName ~= "skill_yinshen_back" then
				animName = animName .. "Up"
			end
			curCard:playAct(animName, nil, nil, animSpeed)
		end
		local moveActions = {}
		if #movePoints ~= 0 then
			for j = 1, #movePoints do
				local nextPos = self:getCardMovePos(movePoints[j], cards[i], tr)
				local moveTo = CCMoveTo:create(moveTimes[j] / 1000, nextPos[1])
				moveActions[#moveActions + 1] = moveTo
			end
		end
		if #moveActions ~= 0 then
			cards[i]:runAction(transition.sequence(moveActions))
		end
	end
	for i = 1, #tr do
		if tr[i].ms ~= 0 then
			local trSide = tr[i].s
			local trPos = tr[i].p
			local card = self:getCardBySideId(trSide, trPos)
			card:setZOrder(HELP_CARD_ZORDER)
			local targetPos = self:getPosBySideAndID(tr[i].ms, tr[i].mp)
			if ms ~= 0 then
				if trSide == UP_SIDE then
					targetPos.y = targetPos.y - actCard:getContentSize().height * 0.5
				else
					targetPos.y = targetPos.y + actCard:getContentSize().height * 0.5
				end
			end
			local moveTo = CCMoveTo:create(0.15, targetPos)
			card:runAction(moveTo)
		end
	end
	if #funcDelay ~= #funcs then
		ResMgr.debugBanner("调用函数数量与延迟数量不一样 card move Id是" .. funcId)
	end
	return self:runDelayFuncs(funcDelay, funcs, atkData, endFunc)
end
function BattleLayer:skillCardRotate(funcId, atkData, endFunc)
	local actCard = self:getCardByData(atkData)
	local tr = atkData.tr
	local MAIN_CARD = 1
	local BEEFF_CARD = 2
	local roData = data_card_rotation_card_rotation[funcId]
	local roPoints = roData.roDir
	local roTimes = roData.roInterval
	local roTrack = roData.roTimes
	local animName = roData.animName
	local target = roData.target
	local funcDelay = roData.arr_funcDelay
	local funcs = roData.arr_funcs
	if #funcDelay ~= #funcs then
		ResMgr.debugBanner("旋转函数不一样 card move Id是" .. funcId)
	end
	return self:runDelayFuncs(funcDelay, funcs, atkData, endFunc)
end
function BattleLayer:skillSpecial(funcId, atkData, endFunc)
	local actCard = self:getCardByData(atkData)
	local tr = atkData.tr
	local specialData = data_special_special[funcId]
	if actCard:getSideID() == DOWN_SIDE then --卡牌在上方时，不播放怒气动画
		local funcDelay = specialData.arr_funcDelay
		local funcs = specialData.arr_funcs
		local fontScale = specialData.fontRate / 1000
		self:playRage(atkData, fontScale, specialData)
		if #funcDelay ~= #funcs then
			ResMgr.debugBanner("special的delay不一样 special Id是" .. funcId)
		end
		self:runDelayFuncs(funcDelay, funcs, atkData, endFunc)
	else
		local funcs = specialData.arr_funcs --如果卡牌是上边的 则直接执行技能
		
		for i = 1, #funcs do
			self:runFunc(funcs[i], atkData, endFunc)
		end
	end
end
function BattleLayer:nextRound(funcId, actCard, tr)
	--当播放完全部神通后，播放此函数
	
	local function dramaEndFunc()
		self:stateMachine()
	end
	self:playDrama(AFTER_ROUND, dramaEndFunc)
end
function BattleLayer:skillEnd(atkData, endFunc)
	local tr, fightBack, skillId, skillStaticData, skillName, rawTal, skillBuffs, actAnger, actCard = self:unpackAtkData(atkData)
	local backTime = BACK_TIME
	self:resetFontFlag()
	if tr ~= nil then --判断卡牌是不是死了
		
		local targetResults = tr
		for i = 1, #targetResults do --遍历受伤对象，如果死亡，则播死亡动画，如果没死，就播stop动画
			local beAtkCard = self:getCardByData(targetResults[i])
			beAtkCard:setZOrder(NORMAL_CARD_ZORDER)
			local lifeRest = targetResults[i].l
			local anger = targetResults[i].a
			if lifeRest ~= 0 then
				beAtkCard:playAct("stop")
			else
				self:playDie(beAtkCard)
				beAtkCard:setVisible(false)
			end
		end
		local totalDamage --是否显示总伤
		local isTotal = skillStaticData.sum
		if isTotal == SHOW_SUM_NUM then
			local totalNum = 0
			for i = 1, #targetResults do
				totalNum = totalNum + targetResults[i].d
			end
			totalDamage = ResMgr.createArma({
			resType = ResMgr.NORMAL_EFFECT,
			armaName = "zongshanghai",
			isRetain = false
			})
			display.getRunningScene():addChild(totalDamage, EFFECT_ZORDER)
			local numTTF = ui.newBMFontLabel({
			text = "-" .. totalNum,
			font = "fonts/font_red.fnt",
			size = 30
			})
			local numBone = CCBone:create("numBone")
			numBone:addDisplay(numTTF, 0)
			numBone:changeDisplayWithIndex(0, true)
			numBone:setZOrder(100)
			totalDamage:addBone(numBone, "gunbai")
			totalDamage:setScale(1.4)
			totalDamage:setPosition(display.width * 0.8, display.height / 2)
			totalDamage:getAnimation():playWithIndex(0)
			numBone:changeDisplayWithIndex(0, true)
		end
	end
	local function cardResetFunc(cards)
		for k, card in pairs(cards) do
			do
				local enPos = self:getPosBySideAndID(card:getSideID(), card:getPosID())
				local angel = 0
				local backRota = CCRotateTo:create(backTime, -angel)
				local backMove = CCMoveTo:create(backTime, enPos)
				local backSpawn = CCSpawn:createWithTwoActions(backRota, backMove)
				card:runAction(transition.sequence({
				backSpawn,
				CCCallFunc:create(function ()
					card:setZOrder(NORMAL_CARD_ZORDER)
				end)
				}))
			end
		end
	end
	cardResetFunc(self.friendCard)
	cardResetFunc(self.enemyCard)
	local runNode = display.newNode()
	self.shakeNode:addChild(runNode)
	runNode:runAction(transition.sequence({
	CCDelayTime:create(backTime),
	CCCallFunc:create(function ()
		endFunc()
	end),
	CCRemoveSelf:create(true)
	}))
end
function BattleLayer:safegGtEffPosByID(id, actCard, tr)
	local side = actCard:getSideID()--之所以没有self.actCard  是因为这块别的地方（如神通）也可能
	
	local trSide
	if tr ~= nil then
		trSide = tr[1].s --敌方side
	end
	local pos = {}
	if id == 1 then -- 1,施法卡牌当前位置中心点 （普通攻击特效也是在这个位置
		pos[1] = ccp(actCard:getPosition())
	elseif id == 2 then -- 2,施法卡牌靠前位置
		local tempPos = ccp(actCard:getPosition())
		if side == UP_SIDE then
			tempPos.y = tempPos.y - actCard:getContentSize().height * 0.9
		else
			tempPos.y = tempPos.y + actCard:getContentSize().height * 0.9
		end
		pos[1] = tempPos
	elseif id == 3 then  --3,目标卡牌位置,会返回多个位置，闪电链也是用这个返回
		for i = 1, #tr do
			local trSide, trP, mp = self:getTruePos(i, tr)
			local orpp = self:getPosBySideAndID(trSide, trP)
			if mp == 1 then
				if trSide == UP_SIDE then
					orpp.y = orpp.y - actCard:getContentSize().height * 0.5
				else
					orpp.y = orpp.y + actCard:getContentSize().height * 0.5
				end
			end
			pos[#pos + 1] = orpp
		end
	elseif id == 4 then -- 4,战场中敌方六人中间
		
		local tempPos = ccp(display.width / 2, display.height / 2)
		if trSide == UP_SIDE then
			tempPos.y = tempPos.y * 1.5
		else
			tempPos.y = tempPos.y * 0.5
		end
		pos[1] = tempPos
	elseif id == 5 then -- 5,战场正
		
		pos[1] = ccp(display.width / 2, display.height / 2)
	elseif id == 6 then -- 6,战场中我方六人中间
		
		local tempPos = ccp(display.width / 2, display.height / 2)
		if side == UP_SIDE then
			tempPos.y = tempPos.y + display.height / 4
		else
			tempPos.y = tempPos.y - display.height / 4
		end
		pos[1] = tempPos
	elseif id == 7 then -- 7,敌方全体的屏幕后方，正中央的后方
		local tempPos = ccp(display.width / 2, display.height / 2)
		if trSide == UP_SIDE then
			tempPos.y = display.height
		else
			tempPos.y = 0
		end
		pos[1] = tempPos
	elseif id == 8 then -- 8,我方全体的屏幕后方，正中央的后方
		local tempPos = ccp(display.width / 2, display.height / 2)
		if side == UP_SIDE then
			tempPos.y = display.height
		else
			tempPos.y = 0
		end
		pos[1] = tempPos
	elseif id == 9 then -- 9,施法卡牌当前位置屏幕后的位置，竖列的后方
		local tempPos = ccp(actCard:getPosition())
		if side == UP_SIDE then
			tempPos.y = display.height
		else
			tempPos.y = 0
		end
		pos[1] = tempPos
	elseif id == 10 then -- 10,目标卡牌屏幕后的位置，竖列的后方，假定该卡牌只有一个或者一竖列
		local trSide, trP = self:getTruePos(1, tr)
		local tempPos = self:getPosBySideAndID(trSide, trP)
		if trSide == UP_SIDE then
			tempPos.y = display.height
		else
			tempPos.y = 0
		end
		pos[1] = tempPos
	elseif id == 11 then -- 11,目标竖列前，固定 无论如何都站在竖列前进行攻击,分上下，目标数组必然是
		
		local trSide, trP = self:getTruePos(1, tr)
		if trP > 3 then
			trP = trP - 3
		end
		local tempPos = self:getPosBySideAndID(trSide, trP)
		if trSide == UP_SIDE then
			tempPos.y = tempPos.y - actCard:getContentSize().height * 0.9
		else
			tempPos.y = tempPos.y + actCard:getContentSize().height * 0.9
		end
		pos[1] = tempPos
	elseif id == 12 then -- 12目标横排中心点位置
		
		local trSide, trP = self:getTruePos(1, tr)
		if trP > 3 then
			trP = 5
		else
			trP = 2
		end
		local tempPos = self:getPosBySideAndID(trSide, trP)
		pos[1] = tempPos
	else
		ResMgr.debugBanner("特效位置不存在 id是 " .. id)
	end
	if #pos == 0 then
		ResMgr.debugBanner("特效位置id错误，id为 " .. id)
	end
	return pos
end
function BattleLayer:getEffPosByID(id, actCard, tr)
	return safe_call(function ()
		return self:safegGtEffPosByID(id, actCard, tr)
	end)
end
function BattleLayer:getTruePos(k, tr)
	local trSide = 0
	local trP = 0
	local isMp = 0
	local ms = tr[k].ms
	if ms ~= 0 then
		trSide = ms
		trP = tr[k].mp
		isMp = 1
	else
		trSide = tr[k].s
		trP = tr[k].p
	end
	return trSide, trP, isMp
end
function BattleLayer:getCardMovePos(moveID, actCard, tr)
	local beforRate = 1 --卡牌移动到目标卡牌的哪个位置
	local side = actCard:getSideID()
	local pos = {}
	if moveID == 1 then --通过对应的ID获取相关的pos
		pos[1] = ccp(actCard:getPosition()) -- 1,主卡位置
	elseif moveID == 2 then -- 2,目标数组第一个的位置 相对位置，如卡牌在上，相对位置就在其下方 就是之前的普通攻击位置
		
		local trSide, trP = self:getTruePos(1, tr)
		local tempPos = self:getPosBySideAndID(trSide, trP)
		if side == UP_SIDE then
			tempPos.y = tempPos.y + actCard:getContentSize().height * beforRate
		else
			tempPos.y = tempPos.y - actCard:getContentSize().height * beforRate
		end
		pos[1] = tempPos
	elseif moveID == 3 then -- 3,目标卡牌的原位置敌方（如果是多张卡牌,则是各自的位置）
		for i = 1, #tr do
			local trSide, trP = self:getTruePos(i, tr)
			pos[#pos + 1] = self:getPosBySideAndID(trSide, trP)
		end
	elseif moveID == 4 then -- 4,战场正中央
		
		pos[1] = ccp(display.width / 2, display.height / 2)
	elseif moveID == 5 then -- 5,目标竖列前，固定 无论如何都站在竖列前进行攻击,分上下，目标数组必然是个竖列
		local trSide, trP = self:getTruePos(1, tr)
		if trP > 3 then
			trP = trP - 3
		end
		local tempPos = self:getPosBySideAndID(trSide, trP)
		if trSide == UP_SIDE then
			tempPos.y = tempPos.y - actCard:getContentSize().height * beforRate
		else
			tempPos.y = tempPos.y + actCard:getContentSize().height * beforRate
		end
		pos[1] = tempPos
	elseif moveID == 6 then -- 6，敌方第一列横排前，固定 无论如何都站在横排前进行攻击,分上下 目标数组必然是个横列
		local trSide, trP = self:getTruePos(1, tr)
		trP = 2
		local tempPos = self:getPosBySideAndID(trSide, trP)
		if trSide == UP_SIDE then
			tempPos.y = tempPos.y - actCard:getContentSize().height * beforRate
		else
			tempPos.y = tempPos.y + actCard:getContentSize().height * beforRate
		end
		pos[1] = tempPos
	elseif moveID == 7 then -- 7,目标竖列前，非固定，当前竖列死人后 会站到之后的位置,目标数组必然是个竖列
		local trSide, trP = self:getTruePos(1, tr)
		for i = 1, #tr do
			trP = tr[i].p
		end
		local tempPos = self:getPosBySideAndID(trSide, trP)
		if trSide == UP_SIDE then
			tempPos.y = tempPos.y - actCard:getContentSize().height * beforRate
		else
			tempPos.y = tempPos.y + actCard:getContentSize().height * beforRate
		end
		pos[1] = tempPos
	elseif moveID == 8 then -- 8,目标横排前，非固定, 当前横排死人后，会站到之后的位置，目标数组必然是个横列
		
		local trSide, trP = self:getTruePos(1, tr)
		if trP > 3 then
			trP = 5
		else
			trP = 2
		end
		local tempPos = self:getPosBySideAndID(trSide, trP)
		if trSide == UP_SIDE then
			tempPos.y = tempPos.y - actCard:getContentSize().height * beforRate
		else
			tempPos.y = tempPos.y + actCard:getContentSize().height * beforRate
		end
		pos[1] = tempPos
	elseif moveID == 9 then -- 9,横扫左卡牌被击后向左偏移的位置
		
		local tempPos = ccp(actCard:getPosition())
		tempPos.x = tempPos.x - actCard:getContentSize().width * 0.9
		pos[1] = tempPos
	elseif moveID == 10 then -- 10,横扫右卡牌被击后向右偏移的位置
		
		local tempPos = ccp(actCard:getPosition())
		tempPos.x = tempPos.x - actCard:getContentSize().width * 0.9
		pos[1] = tempPos
	elseif moveID == 11 then -- 11,自身位置向后（被击退）
		
		local tempPos = ccp(actCard:getPosition())
		local side = actCard:getSideID()
		if side == UP_SIDE then
			tempPos.y = tempPos.y + actCard:getContentSize().height * 0.9
		else
			tempPos.y = tempPos.y - actCard:getContentSize().height * 0.9
		end
		pos[1] = tempPos
	elseif moveID == 12 then -- 12,向特效中心点移动（被吸入黑洞）
		
		pos[1] = self.battleEffTable[#self.battleEffTable]:getPosition()
	elseif moveID == 13 then --13.移动到目标卡牌屏幕后的位置
		
		local trSide, trP = self:getTruePos(1, tr)
		local tempPos = self:getPosBySideAndID(trSide, trP)
		if trSide == UP_SIDE then
			tempPos.y = display.height + actCard:getContentSize().height
		else
			tempPos.y = 0 - actCard:getContentSize().height
		end
		pos[1] = tempPos
	elseif moveID == 14 then --14.目标方屏幕的正后方
		
		local trSide, trP = self:getTruePos(1, tr)
		local tempPos = self:getPosBySideAndID(trSide, trP)
		local trSide = tr[1].s
		if trSide == UP_SIDE then
			tempPos.y = display.height + actCard:getContentSize().height
		else
			tempPos.y = 0 - actCard:getContentSize().height
		end
		tempPos.x = display.width / 2
		pos[1] = tempPos
	else
		ResMgr.debugBanner("卡牌移动位置不存在 id " .. moveID)
	end
	if #pos == 0 then
		ResMgr.debugBanner("卡牌移动位置id错误，id为 " .. moveID)
	end
	return pos
end
function BattleLayer:battleResult()
	local function resultEndFunc()
		self:resetTimeScale()
		if self.fubenType ~= WORLDBOSS_FUBEN and self.fubenType ~= GUILD_QLBOSS_FUBEN then
			GameAudio.stopMusic(false)
		end
		self.resultFunc(self.totalData)
		if self.speedBtn ~= nil then
			self.speedBtn:removeSelf()
		end
	end
	self.isAbleJump = false
	if self.fubenType == JINGYING_FUBEN then
		local waveData = self.totalData["5"]
		local maxLv = waveData[1]
		local curLv = waveData[3] --已通关的关卡数
		if curLv == 0 then --达到最大关卡数 或者战斗失败 都直接播结果
			self:playDrama(AFTER_BATTLE, resultEndFunc)
		else
			self.curReqNum = curLv + 1
			self:sendBattleReq()
		end
	elseif self.fubenType == HUODONG_FUBEN or self.fubenType == ZHENSHEN_FUBEN then
		local waveData = self.totalData["5"]
		local curLv = waveData[1] --已通关的关卡数
		if curLv == 0 then --达到最大关卡数 或者战斗失败 都直接播结果
			self:playDrama(AFTER_BATTLE, resultEndFunc) --播放战斗胜利的界面
			
		else
			self.curReqNum = curLv + 1
			self:sendBattleReq() --再次发送请求
			
		end
	else --播放战斗胜利的界面
		
		self:playDrama(AFTER_BATTLE, resultEndFunc)
	end
end
function BattleLayer:resetTimeScale()
	ResMgr.setTimeScale(1)
end
function BattleLayer:initTimeScale(...)
	if ResMgr.battleTimeScale == 1 then
		self.timeScale = 1
	elseif ResMgr.battleTimeScale == 2 and game.player:canSetSpeed(2, false) == true then
		self.timeScale = 2
	elseif ResMgr.battleTimeScale == 3 and game.player:canSetSpeed(3, false) == true then
		self.timeScale = 3
	else
		ResMgr.battleTimeScale = 1
		self.timeScale = 1
	end
	if game.player.m_level < 5 then
		self.timeScale = 1
	elseif game.player.m_level < 30 then
		self.timeScale = 2
	else
		self.timeScale = 3
	end
	ResMgr.battleTimeScale = self.timeScale
	BattleSpeedTipsShow = true
	self.speedBtn = display.newSprite("#battle_spd_1.png")
	self.shakeNode:addChild(self.speedBtn, 10000000)
	self.speedBtn:setTouchEnabled(true)
	self.speedBtn:addNodeEventListener(cc.NODE_TOUCH_EVENT, function (event)
		if event.name == "began" then
			local nextSpeed = 1
			if self.timeScale < 3 then
				nextSpeed = self.timeScale + 1
			end
			if game.player:canSetSpeed(nextSpeed, BattleSpeedTipsShow) == true then
				self.timeScale = nextSpeed
				ResMgr.battleTimeScale = 1 + (nextSpeed - 1) * 0.5
			elseif nextSpeed == 3 then
				if BattleSpeedTipsShow == true then
					BattleSpeedTipsShow = false
				else
					self.timeScale = 1
					ResMgr.battleTimeScale = 1
				end
			end
			local spdFrame = display.newSprite("#battle_spd_" .. self.timeScale .. ".png")
			self.speedBtn:setDisplayFrame(spdFrame:getDisplayFrame())
			ResMgr.setTimeScale(self.timeScale)
			return true
		end
	end)
	local spdFrame = display.newSprite("#battle_spd_" .. self.timeScale .. ".png")
	self.speedBtn:setDisplayFrame(spdFrame:getDisplayFrame())
	ResMgr.setTimeScale(self.timeScale)
	self.speedBtn:setAnchorPoint(ccp(0, 0))
end
function BattleLayer:initPos()
	local displayWidth = display.width
	local displayHight = display.height
	local columRate1, columRate2, columRate3 = 0.2, 0.5, 0.8
	local rowRate1 = 0.86
	local rowRate2 = 0.66
	local rowRate3 = 0.3
	local rowRate4 = 0.11
	
	
	--敌方卡牌位置
	-- 4 5 6
	-- 1 2 3
	
	self.f2Pos = {
	ccp(displayWidth * columRate1, displayHight * rowRate2),
	ccp(displayWidth * columRate2, displayHight * rowRate2),
	ccp(displayWidth * columRate3, displayHight * rowRate2),
	ccp(displayWidth * columRate1, displayHight * rowRate1),
	ccp(displayWidth * columRate2, displayHight * rowRate1),
	ccp(displayWidth * columRate3, displayHight * rowRate1)
	}
	
	--我方卡牌位置
	-- 1 2 3
	-- 4 5 6
	
	self.f1Pos = {
	ccp(displayWidth * columRate1, displayHight * rowRate3),
	ccp(displayWidth * columRate2, displayHight * rowRate3),
	ccp(displayWidth * columRate3, displayHight * rowRate3),
	ccp(displayWidth * columRate1, displayHight * rowRate4),
	ccp(displayWidth * columRate2, displayHight * rowRate4),
	ccp(displayWidth * columRate3, displayHight * rowRate4)
	}
	self:resetFontFlag()
end
function BattleLayer:shake(shakeId)
	ResMgr.shakeScr({
	node = self.shakeNode,
	shakeId = shakeId,
	orX = 0,
	orY = 0
	})
end
function BattleLayer:effectShake(shakeId)
	local shakeNode = self.nodes.normal_effect_node
	ResMgr.shakeScr({
	node = shakeNode,
	shakeId = shakeId,
	orX = 0,
	orY = 0
	})
end
function BattleLayer:clearEnemyCard()
	--每次初始化战斗前，先将之前的敌人卡牌全部从节点上干掉
	for k,v in pairs(self.enemyCard) do
		self:removeChild(v, true)
	end
	self.enemyCard = {}
	ResMgr.setMetatableByKV(self.enemyCard)
end

function BattleLayer:changeBattleCount(countNum)
	if self.battleCount ~= countNum then
		self.battleCount = countNum
		
		
		self.battleCountTTF:setString(self.battleCount..self.maxCountTTF)
		
		
		if self.roundCB ~= nil then
			self.roundCB(self.battleCount)
		end
	end
end

function BattleLayer:getPosBySideAndID(side,posID)
	
	local tempPos = ccp(0,0)
	
	if side == DOWN_SIDE then
		tempPos.x = self.f1Pos[posID].x
		tempPos.y = self.f1Pos[posID].y
	else --side == UP_SIDE then
		tempPos.x = self.f2Pos[posID].x
		tempPos.y = self.f2Pos[posID].y
	end
	
	return tempPos
end

function BattleLayer:getCardBySideId(side,posID)
	if side == DOWN_SIDE then
		return self.friendCard[posID]
	elseif side == UP_SIDE then
		return self.enemyCard[posID]
	end
end

function BattleLayer:getCardByData(atkData)
	local side = atkData["s"]
	local posID = atkData["p"]
	return self:getCardBySideId(side, posID)
end

function BattleLayer:fade(time,delayTime)
	self.maskLayer:setVisible(true)
	-- time =2
	self.maskLayer:setContentSize(CCSize(display.width*2,display.height*2))
	local fadeTo = CCFadeTo:create(time, 250)
	local delayFade = CCDelayTime:create(delayTime)
	local fadeOut = CCFadeTo:create(time/2,0)
	local fadeUnvisible = CCCallFunc:create(function ()
		self.maskLayer:setVisible(false)
		
	end)
	local fadeTo2 = CCFadeTo:create(time, 0)
	
	self.maskLayer:stopAllActions()
	self.maskLayer:runAction(transition.sequence({fadeTo,delayFade,fadeTo2,fadeUnvisible}))
	
end

function BattleLayer:getAngleByPos(startPos,endPos)
	local x = endPos.x - startPos.x
	local y = endPos.y - startPos.y
	local angle = math.atan2(y,x)
	return 90-angle*180/3.14
end

function BattleLayer:updateDmageNum(cardSide,num)
	if cardSide ~= nil and cardSide == UP_SIDE then
		if self.damageCB ~= nil then
			self.damageCB(num)
		end
	end
	
end

function BattleLayer:createNum(param)
	--这个函数是在屏幕的对应位置上制造数字的
	local DELAY_TIME= 0.3
	
	local HIT_TYPE_DODAGE = 1
	local HIT_TYPE_CRITICAL = 2
	local numNode = display.newNode()
	local card = param.card --在哪个卡上激活的呢
	
	local cardSide
	if card ~= nil then
		cardSide = card:getSideID()
	end
	
	
	
	local numType = param.numType
	local numValue = math.ceil(param.numValue)
	local pos = param.pos
	local isRanPos = param.isRanPos or 1 -- 1则是不随机，不是1则是随机
	local numTTF = nil
	local dType = param.damageType--[1]
	local DELAY_TIME = NORMAL_DAMAGE_TIME
	if dType == HIT_TYPE_DODAGE then --闪避
		-- numTTF = display.newSprite("#battle_shanbi.png")
	elseif dType == HIT_TYPE_CRITICAL then
		
		numTTF = ui.newBMFontLabel({
		text = "-"..numValue,
		font = "fonts/font_baoji.fnt"
		})
		local baojiBigger = CCScaleTo:create(0.1, 1.5)
		local baojiSmaller = CCScaleTo:create(0.1, 1)
		numTTF:runAction(transition.sequence({baojiBigger,baojiSmaller}))
		-- upDamageNum(numValue)
		
		
	else
		if numType == SUB_HP then
			numTTF = ui.newBMFontLabel({
			text = "-"..numValue,
			font = "fonts/font_red.fnt"
			})
			-- upDamageNum(numValue)
			
		elseif numType == HEAL_HP then
			numTTF = ui.newBMFontLabel({
			text = "+"..numValue,
			font = "fonts/font_green.fnt"
			})
		end
		
	end
	self.shakeNode:addChild(numNode,NUM_ZORDER)
	if numTTF ~= nil then
		numNode:addChild(numTTF,NUM_ZORDER)
		
		
		--对X Y做一定的随机偏移
		local ranPosX = 0
		local ranPosY = 0
		if isRanPos ~= 1 then
			local xTa = {-0.6,0.4,0,0.4,0.6}
			local yTa = {-0.5,-0.3,-0.1,0.3,0.5}
			local xRan = xTa[math.random(1,#xTa)]
			local yRan = yTa[math.random(1,#yTa)]
			
			ranPosX = numTTF:getContentSize().width * xRan
			ranPosY = numTTF:getContentSize().height *yRan
		end
		
		numNode:setPosition(pos.x+ranPosX,pos.y+ranPosY)
		local setSmall = CCCallFunc:create(function () numTTF:setScale(0.5*NUM_SCALE) end)
		
		local beBigger = CCScaleTo:create(0.1, 1.5*NUM_SCALE)
		
		if dType == HIT_TYPE_CRITICAL then
			beBigger = CCScaleTo:create(0.05, 1.8*NUM_SCALE)
			DELAY_TIME = NORMAL_HEAL_CRITICAL_TIME
			if numType == SUB_HP then
				self:shake(1)
			end
		end
		local delay =CCDelayTime:create(0.3)
		local beSmaller = CCScaleTo:create(0.1, 0.8,0.2)
		
		local reSelf = CCRemoveSelf:create(true)
		numNode:runAction(transition.sequence({beBigger,delay,beSmaller,reSelf}))
	end
	
	-- return numNode
	
end


function BattleLayer:createFont(param)
	
	local side_id = param.sideID
	local pos_id = param.posID
	local count  = param.count or 0
	local flag = 0
	if side_id == 1 then
		flag = self.f1PosFontFlag[pos_id][param.damageType]
		self.f1PosFontFlag[pos_id][param.damageType] = 1
	else
		flag = self.f2PosFontFlag[pos_id][param.damageType]
		self.f2PosFontFlag[pos_id][param.damageType] = 1
	end
	
	if flag == nil then
		local TIME = count * 0.2
		local HIT_TYPE_DODAGE = 1
		local HIT_TYPE_CRITICAL = 2
		local HIT_TYPE_BLOCK = 3
		local fontTTF = nil
		local fontNode = display.newNode()
		local heightOffset=0
		local DELAY_TIME = NORMAL_DAMAGE_CRITICAL_TIME
		self.shakeNode:addChild(fontNode,NUM_ZORDER)
		local dType = param.damageType--[#param.damageType]
		local pos = param.pos
		if dType == HIT_TYPE_DODAGE then --闪避
			fontTTF = display.newSprite("#battle_shanbi.png")
		elseif dType == HIT_TYPE_CRITICAL then -- 暴击
			fontTTF =display.newSprite("#battle_baoji.png")
			fontTTF:setAnchorPoint(ccp(0.5,0))
			fontTTF:setScale(0.1)
			local numDelay = CCDelayTime:create(0.2)
			local numScale = CCScaleTo:create(0.1, 0.8)
			fontTTF:runAction(transition.sequence({numDelay,numScale}))
			heightOffset = fontTTF:getContentSize().height*0.7
		elseif dType == HIT_TYPE_BLOCK then -- 格挡
			fontTTF = display.newSprite("#battle_gedang.png")
			fontTTF:setAnchorPoint(ccp(0.5,0))
			heightOffset = fontTTF:getContentSize().height*0.7
			self:playSound("gedang", false)
			
		end
		
		if fontTTF ~= nil then
			fontNode:addChild(fontTTF)
			
		end
		
		local beBigger = CCScaleTo:create(0.1, 1.5)
		
		if dType == HIT_TYPE_CRITICAL then
			beBigger = CCScaleTo:create(0.05, 1.8)
			DELAY_TIME = NORMAL_DAMAGE_CRITICAL_TIME + TIME
			-- self:shake(1)
		end
		local delay =CCDelayTime:create(DELAY_TIME)
		local beSmaller = CCScaleTo:create(0.1, 0.8,0.2)
		
		local reSelf = CCRemoveSelf:create(true)
		fontNode:runAction(transition.sequence({beBigger,delay,beSmaller,reSelf}))
		
		
		fontNode:setPosition(pos.x,pos.y+heightOffset)
	end
end
function BattleLayer:resetFontFlag()
	--由于各个位置的（暴击，格挡等）汉字每回合只显示一次,故用此两组变量来记录此位置是否已经显示汉字，每回合结束后，重置
	
	self.f2PosFontFlag = {{},{},{},{},{},{}}
	self.f1PosFontFlag = {{},{},{},{},{},{}}
end

function BattleLayer:cardCasinoArise(param)
	
	local nextFunc = param.nextFunc
	
	local cardNum = 0
	local cardTable = {}
	
	cardNum = self.friendNum
	cardTable = self.friendCard
	
	
	local orAngel = 0
	local orPosX = 100
	
	if cardNum == 1 then
		orAngel = 0
		orPosX = 0
	elseif cardNum == 2 then
		orAngel = -8
		orPosX = -50
	elseif cardNum == 3 then
		orAngel = -25
		orPosX = -60
	elseif cardNum == 4 then
		orAngel = -30
		orPosX = -80
	elseif cardNum == 5 then
		orAngel = -40
		orPosX = -100
	elseif cardNum == 6 then
		orAngel = -50
		orPosX = -110
	else
		ResMgr.debugBanner("卡组数量不对")
	end
	local offsetAngel = 0
	local offsetPosX = 0
	if cardNum ~= 1 then
		offsetAngel = math.abs(orAngel)*2/(cardNum - 1)
		offsetPosX  = math.abs(orPosX)*2/(cardNum - 1)
	end
	
	local midPos = nil
	local backPos = nil
	local cardCount = 0
	local finalCount = 0
	local zhankaiTime = 0.2
	local seqTime = 0.2
	local seqOffset = 0.2
	local toRightTime = 0.1
	
	for k,v in pairs(self.friendCard) do
		v:setVisible(true)
		if midPos == nil then
			--获取阵中间的位置
			midPos = self:getEffPosByID(6,v)[1]
			backPos = self:getEffPosByID(8,v)[1]
		end
		v:setPosition(backPos)
		local curCardAngel = orAngel + cardCount * offsetAngel
		local curCardPos = ccp(midPos.x + orPosX + cardCount*offsetPosX,midPos.y - math.abs(curCardAngel)*0.7)
		
		--从后面移动到展开
		local fromBack = CCMoveTo:create(0.1, midPos)
		local delay = CCDelayTime:create(0.5)
		local moveTo = CCMoveTo:create(zhankaiTime, curCardPos)
		local rotato = CCRotateTo:create(zhankaiTime, curCardAngel)
		local spawn = CCSpawn:createWithTwoActions(moveTo,rotato)
		
		
		--
		local toRightDelay = CCDelayTime:create(seqTime)
		seqTime = seqTime + seqOffset
		local flyPos = self:getPosBySideAndID(v:getSideID(), v:getPosID())
		flyPos.y = flyPos.y + 30
		local moveToRight = CCMoveTo:create(toRightTime, flyPos)
		local rotoRight = CCRotateTo:create(toRightTime, 0)
		local rightSpawn = CCSpawn:createWithTwoActions(moveToRight,rotoRight)
		local scaleToBig = CCScaleTo:create(toRightTime, 1.4)
		local rightToFinal = CCSpawn:createWithTwoActions(rightSpawn,scaleToBig)
		local rightDelay = CCDelayTime:create(0.5)
		
		local scaleToRight = CCScaleTo:create(0.2, 1)
		local curPos = self:getPosBySideAndID(v:getSideID(), v:getPosID())
		local moveFinalPos =  CCMoveTo:create(0.2, curPos)
		local toFinalSpawn = CCSpawn:createWithTwoActions(scaleToRight, moveFinalPos)
		local shakeFunc = CCCallFunc:create(function ()
			self:shake(1)
			finalCount = finalCount+1
			if finalCount == cardNum  then
				-- print("walkk")
				self:cardWalk()
			end
			
		end)
		
		local seq = transition.sequence({delay,fromBack,spawn,toRightDelay,rightToFinal,rightDelay,toFinalSpawn,shakeFunc})
		v:runAction(seq)
		cardCount = cardCount + 1
		
	end
	
end

return BattleLayer