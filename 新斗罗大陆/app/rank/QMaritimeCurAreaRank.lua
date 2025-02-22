-- @Author: xurui
-- @Date:   2017-01-04 17:52:55
-- @Last Modified by:   zhouxiaoshu
-- @Last Modified time: 2019-10-16 18:46:17

local QBaseRank = import(".QBaseRank")
local QMaritimeCurAreaRank = class("QMaritimeCurAreaRank", QBaseRank)
local QUIWidgetTeamRank = import("..ui.widgets.rank.QUIWidgetTeamRank")
local QUIWidgetTeamMyRank = import("..ui.widgets.rank.QUIWidgetTeamMyRank")
local QUIWidgetRankStyleApple = import("..ui.widgets.rank.QUIWidgetRankStyleApple")
local QUIWidgetMyRankStyleApple = import("..ui.widgets.rank.QUIWidgetMyRankStyleApple")

function QMaritimeCurAreaRank:ctor(options)
	QMaritimeCurAreaRank.super.ctor(self, options)
end

function QMaritimeCurAreaRank:needsUpdate( ... )
	return true
end

function QMaritimeCurAreaRank:update(success, fail)
	app:getClient():top50RankRequest("MARITIME_ENV_REALTIME_TOP_50", remote.user.userId, function (data)
	if data.rankings == nil or data.rankings.top50 == nil then 
		self.super:update(fail)
		return 
	end

	self._list = nil
	self._list = clone(data.rankings.top50)
	table.sort(self._list, function (x, y)
		return x.rank < y.rank
	end)
	self._myInfo = data.rankings.myself

	self.super:update(success)
end, fail)
end

function QMaritimeCurAreaRank:getRankItem()
	local item = QUIWidgetTeamRank.new()
	local style = QUIWidgetRankStyleApple.new()
	item:setStyle(style)
	return item
end

function QMaritimeCurAreaRank:renderItem(item, index)
	local style = item:getStyle()
	local info = self._list[index]
	if style ~= nil and info ~= nil then
		style:setTFByIndex(1, "LV."..(info.level or "0"))
		style:setTFByIndex(2, (info.name or ""))
		style:setTFByIndex(3, "今日收益：")
		style:setTFByIndex(4, (info.artifactScore or ""))
		style:setAvatar(info.avatar)
		style:setSpByIndex(1, false)
		style:setVIP(info.vip or 0)
		style:setBadgeWithPassCount(style:getNodeByIndex(1), info.nightmareDungeonPassCount or 0)
		style:autoLayout()
	end
end

function QMaritimeCurAreaRank:getSelfItem()
	local myInfo = self:getMyInfo()
	if myInfo == nil then
		return 
	end
	local item = QUIWidgetTeamMyRank.new()
	item:setInfo(myInfo)
	local style = QUIWidgetMyRankStyleApple.new()
	item:setStyle(style)

	style:setTFByIndex(1, "LV."..(myInfo.level or "0"))
	style:setTFByIndex(2, (myInfo.name or ""))
	style:setAvatar(myInfo.avatar)
	style:setBadgeWithPassCount(style:getNodeByIndex(1), myInfo.nightmareDungeonPassCount or 0)

	style:setTFByIndex(3, "今日收益：")
	style:setTFByIndex(4, (myInfo.artifactScore or "0"))
	style:setSpByIndex(1, false)
	style:autoLayout()
	return item
end

return QMaritimeCurAreaRank