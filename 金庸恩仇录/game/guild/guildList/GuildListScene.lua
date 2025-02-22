local data_config_union_config_union = require("data.data_config_union_config_union")
require("data.data_error_error")
local SEARCH_MAX_LEN = data_config_union_config_union[1].guild_name_max_length
local GUILD_RETRUN_NUM = data_config_union_config_union[1].guild_return_num
local MAX_ZORDER = 100
local ApplyType = {apply = 0, cancel = 1}

local GuildListScene = class("GuildListScene", function(isFromMainMenuScene)
	display.addSpriteFramesWithFile("ui/ui_window_base.plist", "ui/ui_window_base.png")
	if isFromMainMenuScene == true then
		return require("game.BaseScene").new({
		contentFile = "guild/guild_list_bg.ccbi",
		topFile = "guild/guild_guildList_up_tab.ccbi",
		adjustSize = cc.size(0, -92)
		})
	elseif isFromMainMenuScene == false then
		local jopType = game.player:getGuildMgr():getGuildInfo().m_jopType
		if jopType ~= GUILD_JOB_TYPE.normal then
			bottomFile = "guild/guild_bottom_frame.ccbi"
		end
		return require("game.guild.utility.GuildBaseScene").new({
		contentFile = "guild/guild_list_bg.ccbi",
		topFile = "guild/guild_guildList_up_tab.ccbi",
		bottomFile = bottomFile,
		adjustSize = cc.size(0, -50)
		})
	end
end)

--搜索公会 九-零  -一- 起玩-w-w-w-.9-0- 1-7 -5-.-com
function GuildListScene:reqSearchGuild(searchName, startIndex, reqNum, isGetMore)
	if reqNum == nil then
		reqNum = GUILD_RETRUN_NUM
	end
	RequestHelper.Guild.search({
	unionName = searchName,
	startIndex = startIndex,
	total = reqNum,
	callback = function(data)
		dump(data)
		if data.err ~= "" then
			dump(data.err)
		else
			local rtnObj = data.rtnObj
			local jopType = data.rtnObj.jopType
			game.player:getGuildMgr():setJopType(jopType)
			self._totalGuildNum = rtnObj.totalNum
			local unionList = rtnObj.unionList
			
			table.sort(unionList, function(a, b)
				return a.rank < b.rank
			end)
			
			local lastPosIndex = 0
			if isGetMore == false then
				if #unionList <= 0 then
					show_tip_label(data_error_error[2900038].prompt)
				end
				self._guildListData = unionList
			else
				if self._guildListData == nil then
					self._guildListData = {}
				end
				lastPosIndex = #self._guildListData - 1
				for i, v in ipairs(unionList) do
					self._guildListData[#self._guildListData + 1] = v
				end
			end
			self:reloadListView(lastPosIndex, rtnObj.totalNum)
		end
	end
	})
end

function GuildListScene:reqApplyGuild(cell)
	local idx = cell:getIdx() + 1
	local curItemData = self._guildListData[idx]
	local function reqApply(id, reqType)
		RequestHelper.Guild.apply({
		id = id,
		type = reqType,
		callback = function(data)
			dump(data)
			cell:setBtnEnabled(true)
			if data.err ~= "" then
				dump(data.err)
			elseif data.rtnObj.success == 0 then
				if reqType == ApplyType.cancel then
					show_tip_label(data_error_error[2900075].prompt)
					curItemData.apply = false
					cell:setAppled(false)
				elseif reqType == ApplyType.apply then
					show_tip_label(data_error_error[2900036].prompt)
					curItemData.apply = true
					cell:setAppled(true)
				end
			end
		end,
		errback = function(data)
			cell:setBtnEnabled(true)
		end
		})
	end
	if curItemData.apply == true then
		reqApply(curItemData.id, ApplyType.cancel)
	elseif curItemData.apply == false then
		if self._hasApplyedNum >= data_config_union_config_union[1].apply_max_num then
			show_tip_label(data_error_error[2900002].prompt)
			cell:setBtnEnabled(true)
		elseif curItemData.nowRoleNum >= curItemData.roleNum then
			show_tip_label(data_error_error[2900001].prompt)
			cell:setBtnEnabled(true)
		else
			reqApply(curItemData.id, ApplyType.apply)
		end
	end
end

function GuildListScene:ctor(isFromMainMenuScene)
	ResMgr.removeBefLayer()
	game.runningScene = self
	self._isFromMainMenuScene = isFromMainMenuScene
	local guildMgr = game.player:getGuildMgr()
	self._guildListData = guildMgr:getGuildList()
	self._hasApplyedNum = guildMgr:getHasApplyedNum()
	local _bg = display.newSprite("ui_common/common_bg.png")
	local _bgW = display.width
	local _bgH = display.height - self._rootnode.bottomMenuNode:getContentSize().height - self._rootnode.topFrameNode:getContentSize().height
	_bg:setPosition(_bgW / 2, _bgH / 2 + self._rootnode.bottomMenuNode:getContentSize().height)
	_bg:setScaleX(_bgW / _bg:getContentSize().width)
	_bg:setScaleY(_bgH / _bg:getContentSize().height)
	self:addChild(_bg, 0)
	if self._isFromMainMenuScene == true then
		--创建公会
		self._rootnode.createGuildBtn:addHandleOfControlEvent(function(sender, eventName)
			self:addChild(require("game.guild.GuildCreateMsgBox").new(), MAX_ZORDER)
			GameAudio.playSound(ResMgr.getSFX(SFX_NAME.u_queding))
		end,
		CCControlEventTouchUpInside)
	else
		self._rootnode.createGuildBtn:setVisible(false)
	end
	--公会排行
	self._rootnode.rankBtn:addHandleOfControlEvent(function(sender, eventName)
		self:addChild(require("game.guild.guildRank.GuildRankLayer").new(), MAX_ZORDER)
		GameAudio.playSound(ResMgr.getSFX(SFX_NAME.u_queding))
	end,
	CCControlEventTouchUpInside)
	
	--返回按键
	self._rootnode.backBtn:addHandleOfControlEvent(function(sender, eventName)
		GameAudio.playSound(ResMgr.getSFX(SFX_NAME.u_queding))
		if self._isFromMainMenuScene == true then
			GameStateManager:ChangeState(GAME_STATE.STATE_MAIN_MENU)
		else
			GameStateManager:ChangeState(GAME_STATE.STATE_GUILD)
		end
	end,
	CCControlEventTouchUpInside)
	
	table.sort(self._guildListData, function(a, b)
		return a.rank < b.rank
	end)
	
	self:createSearchBox()
	addbackevent(self)
end

function GuildListScene:createSearchBox()
	--搜索框
	self._rootnode.tag_search_node:setVisible(true)
	self._rootnode.searchBtn:addHandleOfControlEvent(function(sender, eventName)
		GameAudio.playSound(ResMgr.getSFX(SFX_NAME.u_queding))
		local textStr = self._editBox:getText()
		if textStr == "" then
			show_tip_label(data_error_error[2900009].prompt)
		else
			self:reqSearchGuild(textStr, 0, GUILD_RETRUN_NUM, false)
		end
	end,
	CCControlEventTouchUpInside)
	
	local searchNode = self._rootnode.searchBox_node
	local cntSize = searchNode:getContentSize()
	self._editBox = ui.newEditBox({
	image = "#win_base_inner_bg_black.png",
	size = cc.size(cntSize.width, cntSize.height),
	x = cntSize.width / 2,
	y = cntSize.height / 2
	})
	self._editBox:setFont(FONTS_NAME.font_fzcy, 20)
	self._editBox:setFontColor(FONT_COLOR.WHITE)
	self._editBox:setPlaceHolder(common:getLanguageString("@GuildNameSearch"))
	self._editBox:setPlaceholderFont(FONTS_NAME.font_fzcy, 20)
	self._editBox:setPlaceholderFontColor(FONT_COLOR.WHITE)
	self._editBox:setReturnType(1)
	self._editBox:setInputMode(0)
	searchNode:addChild(self._editBox)
end

function GuildListScene:reloadListView(lastPosIndex, totalNum)
	if self._listViewTable ~= nil then
		self._listViewTable:removeFromParentAndCleanup(true)
		self._listViewTable = nil
	end
	local guildMgr = game.player:getGuildMgr()
	local isCanShowMoreBtn = false
	local tableNum = #self._guildListData
	if totalNum == nil then
		self._totalGuildNum = guildMgr:getTotalGuildNum()
	else
		self._totalGuildNum = totalNum
	end
	if #self._guildListData < self._totalGuildNum then
		isCanShowMoreBtn = true
		tableNum = tableNum + 1
	end
	local boardWidth = self._rootnode.listView:getContentSize().width
	local boardHeight = self._rootnode.listView:getContentSize().height - self._rootnode.tag_search_node:getContentSize().height
	local lisetViewSize = cc.size(boardWidth, boardHeight)
	local function createFunc(index)
		local item = require("game.guild.guildList.GuildListItem").new()
		local itemData
		if isCanShowMoreBtn == false or index + 1 <= #self._guildListData then
			itemData = self._guildListData[index + 1]
		end
		return item:create({
		id = index + 1,
		itemData = itemData,
		viewSize = lisetViewSize,
		totalNum = self._totalGuildNum,
		curGuildNum = tableNum,
		isCanShowMoreBtn = isCanShowMoreBtn,
		isInUnion = guildMgr:getIsInUnion(),
		applyFunc = function(cell)
			self:reqApplyGuild(cell)
		end
		})
	end
	local function refreshFunc(cell, index)
		local itemData
		if isCanShowMoreBtn == false or index + 1 <= #self._guildListData then
			itemData = self._guildListData[index + 1]
		end
		cell:refresh({
		id = index + 1,
		itemData = itemData
		})
	end
	local cellContentSize = require("game.guild.guildList.GuildListItem").new():getContentSize()
	self._listViewTable = require("utility.TableViewExt").new({
	size = lisetViewSize,
	direction = kCCScrollViewDirectionVertical,
	createFunc = createFunc,
	refreshFunc = refreshFunc,
	cellNum = tableNum,
	cellSize = cellContentSize,
	touchFunc = function(cell)
		local idx = cell:getIdx() + 1
		if isCanShowMoreBtn == true and idx == tableNum then
			if #self._guildListData < self._totalGuildNum then
				self:reqSearchGuild("", #self._guildListData, GUILD_RETRUN_NUM, true)
			else
				show_tip_label(data_error_error[2900040].prompt)
			end
		end
	end
	})
	self._rootnode.listView:addChild(self._listViewTable)
	local pageCount = self._listViewTable:getViewSize().height / cellContentSize.height
	if pageCount < lastPosIndex + 1 then
		local maxMove = tableNum - pageCount
		if maxMove < 0 then
			maxMove = 0
		end
		if lastPosIndex > maxMove then
			lastPosIndex = maxMove
		end
		local curIndex = maxMove - lastPosIndex
		self._listViewTable:setContentOffset(cc.p(0, -(curIndex * cellContentSize.height)))
	end
end

function GuildListScene:onEnter()
	game.runningScene = self
	self:regNotice()
	game.broadcast:reSet(self._rootnode.broadcast_tag)
	self:reloadListView(0)
	PostNotice(NoticeKey.UNLOCK_BOTTOM)
end

function GuildListScene:onExit()
	self:unregNotice()
	display.removeSpriteFramesWithFile("ui/ui_window_base.plist", "ui/ui_window_base.png")
end

return GuildListScene