--
-- Author: Kumo.Wang
-- 魂灵碎片分解
--
local QUIWidget = import("..widgets.QUIWidget")
local QUIWidgetSoulSpiritFragment = class("QUIWidgetSoulSpiritFragment", QUIWidget)

local QNotificationCenter = import("...controllers.QNotificationCenter")
local QStaticDatabase = import("...controllers.QStaticDatabase")
local QScrollView = import("...views.QScrollView")
local QUIWidgetItemsBoxMount = import("..widgets.mount.QUIWidgetItemsBoxMount")
local QTextFiledScrollUtils = import("...utils.QTextFiledScrollUtils")
local QUIViewController = import("..QUIViewController")
local QUIWidgetAnimationPlayer = import("..widgets.QUIWidgetAnimationPlayer")
local QShop = import("...utils.QShop")
local QUIWidgetShopTap = import("..widgets.QUIWidgetShopTap")
local QHerosUtils = import("...utils.QHerosUtils")
local QRichText = import("...utils.QRichText")

QUIWidgetSoulSpiritFragment.GAP = 10
QUIWidgetSoulSpiritFragment.MARGIN = 0
QUIWidgetSoulSpiritFragment.FRAGMENT_PROMPT = "分解现有魂灵碎片，将会返还%d传灵币，是否确认分解？"
QUIWidgetSoulSpiritFragment.NUMBER_TIME = 1

function QUIWidgetSoulSpiritFragment:ctor(options)
	local ccbFile = "ccb/Widget_HeroRecover_Cailiao.ccbi"
	local callBacks = {
		{ccbCallbackName = "onTriggerLeft", callback = handler(self, QUIWidgetSoulSpiritFragment.onTriggerLeft)},
		{ccbCallbackName = "onTriggerRight", callback = handler(self, QUIWidgetSoulSpiritFragment.onTriggerRight)},
		{ccbCallbackName = "onTriggerRecycle", callback = handler(self, QUIWidgetSoulSpiritFragment.onTriggerRecycle)},
        {ccbCallbackName = "onTriggerRule", callback = handler(self, QUIWidgetSoulSpiritFragment.onTriggerRule)},
	}

	QUIWidgetSoulSpiritFragment.super.ctor(self,ccbFile,callBacks,options)

    self._type = options.type

    self._width = self._ccbOwner.sheet_layout:getContentSize().width
    self._height = self._ccbOwner.sheet_layout:getContentSize().height

    self._ccbOwner.token_gain:setVisible(false)
    self._ccbOwner.soul_gain:setVisible(false)
    self._ccbOwner.material_rule:setVisible(false)
    self._ccbOwner.soul_rule:setVisible(true)
    self._ccbOwner.node_btn_autoSelect:setVisible(false)
    self._ccbOwner.node_btn_recycle:setPositionX(-101)

    self._ccbOwner.store:setVisible(false)
    self._ccbOwner.gain:setString(0)

    local walletConfig = remote.items:getWalletByType("teamMoney")
    QSetDisplayFrameByPath(self._ccbOwner.soul_gain, walletConfig.alphaIcon)
    self._ccbOwner.soul_gain:setVisible(true)

    self._forceUpdate = QTextFiledScrollUtils.new()
    self._firstItem = nil
    self:initExplainTTF()
    local page = app:getNavigationManager():getController(app.mainUILayer):getTopPage()
    self._selectEffectLayer = CCNode:create()
    page:getView():addChild(self._selectEffectLayer)
end

function QUIWidgetSoulSpiritFragment:initExplainTTF( )
    local richText = QRichText.new({
            {oType = "font", content = "魂灵碎片分解可获得",size = 22,color = ccc3(255,232,191),strokeColor=ccc3(0,0,0)},
            {oType = "font", content = "传灵币",size = 22,color = ccc3(0,252,255),strokeColor=ccc3(0,0,0)},
            {oType = "font", content = "，碎片",size = 22,color = ccc3(255,232,191),strokeColor=ccc3(0,0,0)},
            {oType = "font", content = "品质越高",size = 22,color = ccc3(0,252,255),strokeColor=ccc3(0,0,0)},
            {oType = "font", content = "传灵币",size = 22,color = ccc3(255,232,191),strokeColor=ccc3(0,0,0)},
            {oType = "font", content = "越多",size = 22,color = ccc3(0,252,255),strokeColor=ccc3(0,0,0)},
        },790,{autoCenter = true})

    if richText then
        self._ccbOwner.explainTTF:addChild(richText)
    end
end

function QUIWidgetSoulSpiritFragment:onEnter()
    self._scrollView = QScrollView.new(self._ccbOwner.sheet, CCSize(self._width, self._height), {bufferMode = 2, sensitiveDistance = 30, nodeAR = ccp(0.5, 0.5)})

    self._scrollView:addEventListener(QScrollView.GESTURE_MOVING, handler(self, self.onScrollViewMoving))
    self._scrollView:addEventListener(QScrollView.FREEZE, handler(self, self.onScrollViewFreeze))
    self._scrollView:addEventListener(QScrollView.GESTURE_BEGAN, handler(self, self.onScrollViewBegan))
    
    QNotificationCenter.sharedNotificationCenter():addEventListener(QUIWidgetItemsBoxMount.EVENT_CLICK, self.itemClickHandler, self)
    QNotificationCenter.sharedNotificationCenter():addEventListener(QUIWidgetItemsBoxMount.EVENT_CLICK_END, self.itemClickEndHandler, self)
    QNotificationCenter.sharedNotificationCenter():addEventListener(QUIWidgetItemsBoxMount.EVENT_MINUS_CLICK, self.itemMinusClickHandler, self)
    QNotificationCenter.sharedNotificationCenter():addEventListener(QUIWidgetItemsBoxMount.EVENT_MINUS_CLICK_END, self.itemMinusClickEndHandler, self)

    self._scheduler = scheduler.performWithDelayGlobal(function ( ... )
        self._itemSize, self._itemObjects = self._scrollView:setCacheNumber(10, "widgets.QUIWidgetItemsBoxMount")
        self:update()
    end, 0)
end

function QUIWidgetSoulSpiritFragment:onExit()
    if self._forceUpdate then
        self._forceUpdate:stopUpdate()
        self._forceUpdate = nil
    end
    if self._selectEffectLayer then
        self._selectEffectLayer:removeFromParentAndCleanup()
    end

    if self._scheduler ~= nil then
        scheduler.unscheduleGlobal(self._scheduler)
        self._scheduler = nil
    end

    QNotificationCenter.sharedNotificationCenter():removeEventListener(QUIWidgetItemsBoxMount.EVENT_CLICK, self.itemClickHandler,self)
    QNotificationCenter.sharedNotificationCenter():removeEventListener(QUIWidgetItemsBoxMount.EVENT_CLICK_END, self.itemClickEndHandler, self)
    QNotificationCenter.sharedNotificationCenter():removeEventListener(QUIWidgetItemsBoxMount.EVENT_MINUS_CLICK, self.itemMinusClickHandler,self)
    QNotificationCenter.sharedNotificationCenter():removeEventListener(QUIWidgetItemsBoxMount.EVENT_MINUS_CLICK_END, self.itemMinusClickEndHandler, self)

    local page = app:getNavigationManager():getController(app.mainUILayer):getTopPage()
    local soulBar = page.topBar:getBarForType(ITEM_TYPE.SOULMONEY)
    local barSoulIcon = soulBar:getIcon()
    barSoulIcon:stopAllActions()
end

function QUIWidgetSoulSpiritFragment:getAvailableItems()
    local items = {}
    local db = QStaticDatabase:sharedDatabase()
    local config, actorId, characher ,value = nil, nil, nil
    for k, v in pairs(remote.items:getAllSoulSpiritFragment()) do
        config = db:getItemByID(v.type)
        value = {id = v.type, count = v.count, selectedCount = 0, color = config.colour, break_through = config.break_through or 1, item_id = config.id}
        if self._type ~= 1 then
            actorId = db:getActorIdBySoulId(config.id)
            characher = db:getCharacterByID(actorId) or {}
            value.aptitude = characher.aptitude or 10
        end
        items[v.type] = value  -- Here v.type is the item id
    end

    return items
end

function QUIWidgetSoulSpiritFragment:update()
    self._scrollView:clearCache()

    self._materialNumber = 0
    self._items = self:getAvailableItems()

    -- sort material by id
    local materials = {}
    for k, v in pairs(self._items) do
        table.insert(materials, {id = k, value = v})
    end
    table.sort(materials, function (x, y) 
            if x.value.aptitude == y.value.aptitude then
                if x.value.count == y.value.count then
                    return x.value.item_id < y.value.item_id
                else
                    return x.value.count > y.value.count 
                end
            else
                return x.value.aptitude < y.value.aptitude
            end
        end)

    -- set correct position for each item
    local x = QUIWidgetSoulSpiritFragment.MARGIN + self._itemSize.width/2 + 10
    local y = -self._height/2 + 20
    for k, v in ipairs(materials) do
        if not self._scrollView then break end
        if self._items[v.id] ~= nil then
            self._scrollView:addItemBox(x, y, self._items[v.id])
            x = x + QUIWidgetSoulSpiritFragment.GAP + self._itemSize.width
        end
    end

    local scrollViewWidth = #materials * (QUIWidgetSoulSpiritFragment.GAP + self._itemSize.width) + QUIWidgetSoulSpiritFragment.MARGIN + 10
    if scrollViewWidth <= self._width then
        self._ccbOwner.arrowLeft:setVisible(false)
        self._ccbOwner.arrowRight:setVisible(false)
    else
        self._ccbOwner.arrowLeft:setVisible(true)
        self._ccbOwner.arrowRight:setVisible(true)
    end

    self._scrollView:setRect(0, -self._height, 0, scrollViewWidth)
    self._firstItem = materials[1] and self._items[materials[1].id] or nil
    self:updateMaterialNumber()

    -- self._recycleMoney:setMoney(remote.user.soulMoney)
end

function QUIWidgetSoulSpiritFragment:updateMaterialNumber()
    local materialNumber = 0
    for k, v in pairs(self._items) do
        if v.selectedCount > 0 then
            materialNumber = materialNumber + QStaticDatabase:sharedDatabase():getItemByID(v.id).soul_recycle * v.selectedCount
        end
    end

    if materialNumber > self._materialNumber then
        self:nodeEffect(self._ccbOwner.gain)
    end

    self._forceUpdate:addUpdate(self._materialNumber, materialNumber, handler(self, self._onForceUpdate), QUIWidgetSoulSpiritFragment.NUMBER_TIME)
    self._materialNumber = materialNumber

    for _, v in ipairs(self._itemObjects) do
        if v and v.setNeedshadow then
            v:setNeedshadow( false )
        end
    end
end

function QUIWidgetSoulSpiritFragment:_onForceUpdate(value)
    self._ccbOwner.gain:setString(tostring(math.ceil(value)))
end

function QUIWidgetSoulSpiritFragment:nodeEffect(node)
    if node ~= nil then
        local actionArrayIn = CCArray:create()
        actionArrayIn:addObject(CCScaleTo:create(0.23, 2))
        actionArrayIn:addObject(CCScaleTo:create(0.23, 1))
        local ccsequence = CCSequence:create(actionArrayIn)
        node:runAction(ccsequence)
    end
end

-- Callbacks
function QUIWidgetSoulSpiritFragment:onTriggerLeft()
    if self._playing then return end

    self._scrollView:stopAllActions()
    if math.abs(self._scrollView:getPositionX()) < self._width then
        self._scrollView:runToLeft(true)
    else
        local offset = math.ceil(math.abs(self._scrollView:getPositionX())/self._itemSize.width)*self._itemSize.width
        self._scrollView:moveTo(-(offset - self._width), self._scrollView:getPositionY(), true)
    end
end

function QUIWidgetSoulSpiritFragment:onTriggerRight()
    if self._playing then return end

    self._scrollView:stopAllActions()
    if self._scrollView:getWidth() - math.abs(self._scrollView:getPositionX()) < 2 * self._width then
        self._scrollView:runToRight(true)
    else
        local offset = math.floor((self._width + math.abs(self._scrollView:getPositionX()))/self._itemSize.width)*self._itemSize.width
        self._scrollView:moveTo(-offset, self._scrollView:getPositionY(), true)
    end
end

function QUIWidgetSoulSpiritFragment:onTriggerRule()
    app.sound:playSound("common_small")
    app:getNavigationManager():pushViewController(app.middleLayer, {uiType = QUIViewController.TYPE_DIALOG, uiClass = "QUIDialogHeroRebornRule", 
        options = {type = 21}}, {isPopCurrentDialog = false})
end

function QUIWidgetSoulSpiritFragment:onTriggerRecycle(noPrompt)
    if self._playing or self._materialNumber == 0 then return end
    app.sound:playSound("common_small")
    local content = string.format(QUIWidgetSoulSpiritFragment.FRAGMENT_PROMPT, self._materialNumber)
    app:alert({content = content, title = "系统提示", callback = function (state)
            if state == ALERT_TYPE.CONFIRM then
                self:onTriggerRecycleFinished()
            end
        end})
end

function QUIWidgetSoulSpiritFragment:onTriggerRecycleFinished()
    local items = {}
    for k, v in pairs(self._items) do
        if v.selectedCount > 0 then
            table.insert(items, {type = v.id, count = v.selectedCount})
        end
    end

    remote.soulSpirit:soulSpiritDecomposeRequest(items, function ()
        print("material recycle successfully")
        self:showRecycleFinishAnimation()
        end)
end

function QUIWidgetSoulSpiritFragment:showRecycleFinishAnimation()
    self._playing = true
    self._ccbOwner.angelEffect:setVisible(false)
    local effectName = "effects/chongsheng_huolu2.ccbi"
    local effect = QUIWidgetAnimationPlayer.new()
    self._ccbOwner.angelEffect1:addChild(effect)
    effect:playAnimation(effectName, nil,nil,false)
    effect:setPositionY(-100)
    local arr = CCArray:create()
    arr:addObject(CCDelayTime:create(1))
    arr:addObject(CCCallFunc:create(function() 
            self._playing = false 
            local awards = {}
            table.insert(awards, {id = "teamMoney", typeName = ITEM_TYPE.TEAM_MONEY, count = self._materialNumber})
            app:getNavigationManager():pushViewController(app.middleLayer, {uiType=QUIViewController.TYPE_DIALOG, uiClass="QUIDialogAwardsAlert",
                    options = {awards = awards}}, {isPopCurrentDialog = false})
            
            self:update()
            effect:stopAnimation()
        end))

    local action = CCSequence:create(arr)
    self._ccbOwner.angelEffect1:runAction(action)
end


function QUIWidgetSoulSpiritFragment:setNodeCascadeOpacityEnabled( node )
    -- body
    if node then
        node:setCascadeOpacityEnabled(true)
        local children = node:getChildren()
        if children then
            for index = 0, children:count()-1, 1 do
                local tempNode = children:objectAtIndex(index)
                local tempNode = tolua.cast(tempNode, "CCNode")
                if tempNode then
                    self:setNodeCascadeOpacityEnabled(tempNode)
                end
            end
        end
    end
end

function QUIWidgetSoulSpiritFragment:showSelectAnimation(item)
    local icon = QUIWidgetItemsBoxMount.new(true)
    icon:setGoodsInfo(item.id, ITEM_TYPE.ITEM, 0, false)
    -- icon:setNameVisibility(false)
    icon:setName("")


    self:setNodeCascadeOpacityEnabled(icon)

    local p = item.itemWidget:convertToWorldSpaceAR(ccp(0,0))
    icon:setPosition(p.x, p.y)
    self._selectEffectLayer:addChild(icon)
    icon:setScale(0.8)
    local targetP = self._ccbOwner.effect:convertToWorldSpaceAR(ccp(0,0))
    local arr = CCArray:create()
    
    local bezierConfig = ccBezierConfig:new()
    bezierConfig.endPosition = targetP
    bezierConfig.controlPoint_1 = ccp(p.x + (targetP.x - p.x) * 0.333, p.y + (targetP.y- p.y) * 0.8)
    bezierConfig.controlPoint_2 = ccp(p.x + (targetP.x - p.x) * 0.667, p.y + (targetP.y- p.y) * 1)
    local bezierTo = CCBezierTo:create(0.4, bezierConfig)
    arr:addObject(CCSpawn:createWithTwoActions(bezierTo, CCDelayTime:create(0.2)))
    arr:addObject(CCCallFunc:create(function()
            icon:removeFromParentAndCleanup(true)
        end))
    local seq = CCSequence:create(arr)
    icon:runAction(seq)
end

-- return 1 means this hero has never been summoned(collected) and aptitude above A
-- return 2 means this hero is among top N
-- return 0 means normal
function QUIWidgetSoulSpiritFragment:checkSpecialHero(itemId)
    local actorId = QStaticDatabase:sharedDatabase():getActorIdBySoulId(itemId)
    if not table.find(remote.user.collectedHeros, actorId) then
        local aptitude = QStaticDatabase:sharedDatabase():getActorSABC(actorId)
        if aptitude.qc ~= "B" and aptitude.qc ~= "C" then
            return 1
        end
    end

    local heroInfos, count = remote.herosUtil:getMaxForceHeros()
    if count > 0 and heroInfos then 
        for i = 1, count do 
            if heroInfos[i] and heroInfos[i].id == actorId then
                return 2
            end
        end
    end

    return 0
end

-- Item click event
function QUIWidgetSoulSpiritFragment:itemClickHandler(event)
    if self._isMoving == true or self._playing then return end

    local item = self._items[event.itemID]
    local func = function ( ... )
        if item ~= nil then
            if item.selectedCount < item.count then
                item.selectedCount = item.count
                item.itemWidget = event.source
                item.itemWidget:setGoodsInfo(item.id, ITEM_TYPE.ITEM, item.selectedCount .. "/" .. item.count, true)
                item.itemWidget:showMinusButton(item.selectedCount > 0)
                self:updateMaterialNumber()
                self:showSelectAnimation(item)
            else
                app.tip:floatTip("所选道具数量已达上限")
            end
        end
    end
 
    func()
end

function QUIWidgetSoulSpiritFragment:itemClickEndHandler(event)
    if self._isMoving == true or self._playing then return end

    local item = self._items[event.itemID]
    if item ~= nil and item.selectedCount ~= nil then
        item.itemWidget = event.source
        item.itemWidget:showMinusButton(item.selectedCount > 0)
    end
end

function QUIWidgetSoulSpiritFragment:itemMinusClickHandler(event)
    if self._isMoving == true or self._playing then return end

    print("minus" .. event.itemID)
    local item = self._items[event.itemID]
    if item ~= nil and item.selectedCount > 0 then
        item.selectedCount = item.selectedCount - 1
        item.itemWidget = event.source
        item.itemWidget:setGoodsInfo(event.itemID, ITEM_TYPE.ITEM, item.selectedCount.."/"..item.count, true)
        item.itemWidget:showMinusButton(item.selectedCount > 0)
        self:updateMaterialNumber()
    end
end

function QUIWidgetSoulSpiritFragment:itemMinusClickEndHandler(event)
    if self._isMoving == true or self._playing then return end

    local item = self._items[event.itemID]
    if item ~= nil and item.selectedCount > 0 then
        item.itemWidget = event.source
        item.itemWidget:showMinusButton(item.selectedCount > 0)
    end
end

function QUIWidgetSoulSpiritFragment:onScrollViewMoving()
    self._isMoving = true
end

function QUIWidgetSoulSpiritFragment:onScrollViewBegan( ... )
    self._isMoving = false
end

function QUIWidgetSoulSpiritFragment:onScrollViewFreeze( ... )
    if self._scrollView:getPositionX() >= 0 then
        self._ccbOwner.arrowLeft:setVisible(false)
    else
        self._ccbOwner.arrowLeft:setVisible(true)
    end
    if -self._scrollView:getPositionX() + self._width >= self._scrollView:getWidth() then
        self._ccbOwner.arrowRight:setVisible(false)
    else
        self._ccbOwner.arrowRight:setVisible(true)
    end 
end



return QUIWidgetSoulSpiritFragment
