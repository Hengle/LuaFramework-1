local BaseScene = require("game.BaseScene")
local HuaShanExchangeScene = class("HuaShanExchangeScene", BaseScene)

local data_item_item = require("data.data_item_item")
local data_card_card = require("data.data_card_card")
local data_shop_jingjichang_shop_jingjichang = require("data.data_shop_jingjichang_shop_jingjichang")
local OPENLAYER_ZORDER = 1001
local EXCHANGE_VIEW = 1
local HUASHAN_SHOP_TYPE = 2

function HuaShanExchangeScene:sendExchangeReq()
	RequestHelper.exchange.getData({
	shopType = HUASHAN_SHOP_TYPE,
	callback = function(data)
		if string.len(data["0"]) > 0 then
			CCMessageBox(data["0"], "Error")
		else
			self:updateExchangeView(data)
			self:updateLingshi(data["2"])
		end
	end
	})
end

function HuaShanExchangeScene:updateExchangeView(data)
	self._rootnode.tag_normal_node:setVisible(false)
	self._rootnode.tag_exchange_node:setVisible(true)
	self._rootnode.shengwang_node:setVisible(false)
	self._rootnode.lingshi_node:setVisible(true)
	local listAry = data["1"]
	self._itemDataList = {}
	for i, v in ipairs(listAry) do
		local duihuanData = data_shop_jingjichang_shop_jingjichang[v.id]
		if duihuanData == nil then
			dump("表里没有此id：" .. v.id)
		end
		local iconType = ResMgr.getResType(duihuanData.type)
		local item = ResMgr.getItemByType(duihuanData.item, iconType)
		table.insert(self._itemDataList, {
		dataId = v.id,
		id = duihuanData.item,
		type = duihuanData.type,
		num = duihuanData.num,
		type1 = duihuanData.type1,
		needLevel = duihuanData.level,
		needReputation = duihuanData.price,
		limitNum = v.num1,
		had = v.had,
		iconType = iconType,
		name = item.name,
		describe = item.describe or ""
		})
	end
	self:createExchangeView()
end

function HuaShanExchangeScene:createExchangeView()
	local function onInformation(cell)
		local index = cell:getIdx() + 1
		local icon_data = self._itemDataList[index]
		local itemInfo = require("game.Huodong.ItemInformation").new({
		id = icon_data.id,
		type = icon_data.type,
		name = icon_data.name,
		describe = icon_data.describe
		})
		self:addChild(itemInfo, OPENLAYER_ZORDER)
	end
	local boardWidth = self._rootnode.listView:getContentSize().width
	local boardHeight = self._rootnode.listView:getContentSize().height - self._rootnode.tag_exchange_node:getContentSize().height
	local listViewSize = cc.size(boardWidth, boardHeight)
	local function createFunc(index)
		local item = require("game.Arena.ArenaExchangeCell").new(HUASHAN_SHOP_TYPE)
		return item:create({
		viewSize = listViewSize,
		itemData = self._itemDataList[index + 1],
		exchangeFunc = function(cell)
			self:exchangeFunc(cell)
		end,
		informationFunc = function(cell)
			onInformation(cell)
		end
		})
	end
	local function refreshFunc(cell, index)
		cell:refresh(self._itemDataList[index + 1])
	end
	self._exchangeItemList = require("utility.TableViewExt").new({
	size = listViewSize,
	direction = kCCScrollViewDirectionVertical,
	createFunc = createFunc,
	refreshFunc = refreshFunc,
	cellNum = #self._itemDataList,
	cellSize = require("game.Arena.ArenaExchangeCell").new():getContentSize()
	})
	self.listView:removeAllChildren()
	self.listView:addChild(self._exchangeItemList)
end

function HuaShanExchangeScene:exchangeFunc(cell)
	local index = cell:getIdx() + 1
	local itemData = self._itemDataList[index]
	if game.player:getLevel() < itemData.needLevel then
		show_tip_label(common:getLanguageString("@ExchangeCondition") .. tostring(itemData.needLevel) .. common:getLanguageString("@ExchangeConditionLevel"))
		cell:updateExchangeBtn(true)
		return
	end
	local bagObj = {}
	local function extendBag(data)
		if bagObj[1].curCnt < data["1"] then
			table.remove(bagObj, 1)
		else
			bagObj[1].cost = data["4"]
			bagObj[1].size = data["5"]
		end
		if #bagObj > 0 then
			self:addChild(require("utility.LackBagSpaceLayer").new({
			bagObj = bagObj,
			callback = function(data)
				extendBag(data)
			end
			}), OPENLAYER_ZORDER)
		end
	end
	local function confirmFunc(num)
		RequestHelper.exchange.exchange({
		id = itemData.dataId,
		num = num,
		shopType = HUASHAN_SHOP_TYPE,
		callback = function(data)
			if data["0"] ~= "" then
				dump(data["0"])
			else
				bagObj = data["2"]
				if bagObj ~= nil and #bagObj > 0 then
					self:addChild(require("utility.LackBagSpaceLayer").new({
					bagObj = bagObj,
					callback = function(data)
						extendBag(data)
					end
					}), OPENLAYER_ZORDER)
				else
					local cellDatas = {}
					table.insert(cellDatas, itemData)
					self:addChild(require("game.Huodong.rewardInfo.RewardInfoMsgBox").new({
					shopType = HUASHAN_SHOP_TYPE,
					cellDatas = cellDatas,
					num = num
					}), OPENLAYER_ZORDER)
					local bRemove = false
					local itemState = data["1"]
					local curHadNum = -1
					local curItemId = -1
					for i, v in ipairs(self._itemDataList) do
						if v.dataId == itemState.id then
							v.limitNum = itemState.num1
							v.had = itemState.had
							if v.type1 == 1 and v.limitNum == 0 then
								bRemove = true
								table.remove(self._itemDataList, i)
							end
							curItemId = v.id
							curHadNum = v.had
							break
						end
					end
					if curItemId ~= -1 and curHadNum ~= -1 then
						for i, v in ipairs(self._itemDataList) do
							if v.id == curItemId then
								v.had = curHadNum
							end
						end
					end
					if bRemove then
						self:createExchangeView()
					else
						cell:updateExchangeNum(itemState.num1, itemState.had)
					end
					self:updateLingshi(data["3"])
				end
			end
		end
		})
	end
	self:addChild(require("game.Arena.ExchangeCountBox").new({
	reputation = self.lingshi,
	itemData = itemData,
	shopType = HUASHAN_SHOP_TYPE,
	listener = function(num)
		confirmFunc(num)
	end,
	closeFunc = function()
		cell:updateExchangeBtn(true)
	end
	}), OPENLAYER_ZORDER)
end

function HuaShanExchangeScene:updateLingshi(num)
	self.lingshi = num
	self._rootnode.lingshi_num_exc:setString(self.lingshi)
end

function HuaShanExchangeScene:updateNaiLiLbl()
	PostNotice(NoticeKey.CommonUpdate_Label_Naili)
	PostNotice(NoticeKey.CommonUpdate_Label_Tili)
end

function HuaShanExchangeScene:ctor()
	HuaShanExchangeScene.super.ctor(self, {
	contentFile = "arena/arena_bg.ccbi",
	subTopFile = "huashan/hs_exchange_up_tab.ccbi",
	topFile = "public/top_frame_other.ccbi",
	isOther = true
	})
	
	ResMgr.removeBefLayer()
	local _bg = display.newSprite("ui_common/common_bg.png")
	local _bgW = display.width
	local _bgH = display.height - self._rootnode.bottomMenuNode:getContentSize().height - self._rootnode.topFrameNode:getContentSize().height
	_bg:setPosition(_bgW / 2, _bgH / 2 + self._rootnode.bottomMenuNode:getContentSize().height)
	_bg:setScaleX(_bgW / _bg:getContentSize().width)
	_bg:setScaleY(_bgH / _bg:getContentSize().height)
	self:addChild(_bg, 0)
	self.listView = self._rootnode.listView
	
	self._rootnode.backBtn:addHandleOfControlEvent(function(sender, eventName)
		GameAudio.playSound(ResMgr.getSFX(SFX_NAME.u_guanbi))
		GameStateManager:ChangeState(GAME_STATE.STATE_HUASHAN)
	end,
	CCControlEventTouchUpInside)
	
	self.viewType = 0
	self:initTab()
end

function HuaShanExchangeScene:initTab()
	self.viewType = EXCHANGE_VIEW
	self:updateTab()
end

function HuaShanExchangeScene:updateTab()
	if self.viewType == EXCHANGE_VIEW then
		self:sendExchangeReq()
	end
end

function HuaShanExchangeScene:onEnter()
	game.runningScene = self
	--self:regNotice()
	HuaShanExchangeScene.super.onEnter(self)
	
	GameAudio.playMainmenuMusic(true)
	PostNotice(NoticeKey.UNLOCK_BOTTOM)
	self:updateNaiLiLbl()
	local broadcastBg = self._rootnode.broadcast_tag
	if broadcastBg ~= nil then
		game.broadcast:reSet(broadcastBg)
	end
end

function HuaShanExchangeScene:onExit()
	--self:unregNotice()
	HuaShanExchangeScene.super.onExit(self)
end

return HuaShanExchangeScene