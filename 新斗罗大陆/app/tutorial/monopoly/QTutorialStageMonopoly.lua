-- 
-- @Author: Kumo
-- @Date:   2018-08-16 21:11:29
-- 
local QTutorialStage = import("..QTutorialStage")
local QTutorialStageMonopoly = class("QTutorialStageMonopoly", QTutorialStage)
local QTutorialPhase01Monopoly = import(".QTutorialPhase01Monopoly")

function QTutorialStageMonopoly:ctor(options)
	QTutorialStageMonopoly.super.ctor(self)
	self._enableTouch = false
end

function QTutorialStageMonopoly:_createTouchNode()
  	local touchNode = CCNode:create()
    touchNode:setCascadeBoundingBox(CCRect(0.0, 0.0, display.width, display.height))
    touchNode:setTouchMode(cc.TOUCH_MODE_ONE_BY_ONE)
    touchNode:setTouchSwallowEnabled(true)
    app.tutorialNode:addChild(touchNode)
    self._touchNode = touchNode
end

function QTutorialStageMonopoly:_createPhases()
    table.insert(self._phases, QTutorialPhase01Monopoly.new(self))

    self._phaseCount = table.nums(self._phases)
end

function QTutorialStageMonopoly:enableTouch(func)
    self._enableTouch = true
    self._touchCallBack = func
end

function QTutorialStageMonopoly:disableTouch()
    self._enableTouch = false
    self._touchCallBack = nil
end

function QTutorialStageMonopoly:start()
    self:_createTouchNode()
    self._touchNode:setTouchEnabled(true)
    self._touchNode:addNodeEventListener(cc.NODE_TOUCH_EVENT, handler(self, QTutorialStageMonopoly._onTouch))
    QTutorialStageMonopoly.super.start(self)
end

function QTutorialStageMonopoly:ended() 
    if self._forceStop ~= true then
        local page = app:getNavigationManager():getController(app.mainUILayer):getTopPage()
        page:buildLayer()
        scheduler.performWithDelayGlobal(function()
            page:checkGuiad()
        end,0)
    end
	if self._touchNode ~= nil then
		self._touchNode:setTouchEnabled( false )
		self._touchNode:removeFromParent()
		self._touchNode = nil
	end
end

function QTutorialStageMonopoly:_onTouch(event)
    if self._enableTouch == true and self._touchCallBack ~= nil then
        return self._touchCallBack(event)
    elseif event.name == "began" then
        return true
    end
end

return QTutorialStageMonopoly
