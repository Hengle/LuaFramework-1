local SplitTip = class("SplitTip", function()
	return require("utility.ShadeLayer").new()
end)

function SplitTip:ctor(param)
	local _listener = param.listener
	local _str = param.str
	local proxy = CCBProxy:create()
	self._rootnode = {}
	local node = CCBuilderReaderLoad("lianhualu/lianhualu_tip.ccbi", proxy, self._rootnode)
	node:setPosition(display.cx, display.cy)
	self:addChild(node)
	self._rootnode.tipLabel:setString(_str)
	
	self._rootnode.closeBtn:addHandleOfControlEvent(function()
		GameAudio.playSound(ResMgr.getSFX(SFX_NAME.u_guanbi))
		self:removeSelf()
	end,
	CCControlEventTouchUpInside)
	
	self._rootnode.cancelBtn:addHandleOfControlEvent(function()
		GameAudio.playSound(ResMgr.getSFX(SFX_NAME.u_guanbi))
		self:removeSelf()
	end,
	CCControlEventTouchUpInside)
	
	self._rootnode.confirmBtn:addHandleOfControlEvent(function()
		GameAudio.playSound(ResMgr.getSFX(SFX_NAME.u_queding))
		_listener()
		self:removeSelf()
	end,
	CCControlEventTouchUpInside)
end

return SplitTip