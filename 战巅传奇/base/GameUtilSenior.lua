GameUtilSenior = {}

local panel_show ={
	["act1"]={name="extend_newacti",tab=1},----首次充值
	["act2"]={name="menu_shenjiang",tab=1},-----强化
	["act3"]={name="menu_zhuling",tab=1},------注灵
	["act4"]={name="menu_forge",tab=1},------合成
	["act5"]={name="menu_mount",tab=1},------坐骑
	["act6"]={name="menu_wing",tab=1},-------翅膀
	["act7"]={name="main_guild",tab=1},------帮会
	["act8"]={name="menu_shenjiang",tab=1},----战神
	["act9"]={name="panel_boss",tab=1},----野外BOSS
	["act10"]={name="panel_boss",tab=3},----boss积分（。。。）
	["act11"]={name="menu_medal",tab=1},---勋章
	["act12"]={name="menu_zhuansheng",tab=1},---转升
	["act13"]={name="btn_main_rank",tab=1},------
	["act14"]={name="menu_skill",tab=1},-----技能
	["act15"]={name="menu_escort",tab=1},----押镖
	["act16"]={name="menu_furnace",tab=1},---血符
	["act17"]={name="menu_furnace",tab=2},---护盾
	["act18"]={name="menu_furnace",tab=3},---宝石
	["act19"]={name="menu_furnace",tab=4},---灵猪
	["act20"]={name="extend_xunbao",tab=1},---寻宝
	["act21"]={name="extend_lottery_ex",tab=1},----寻宝积分兑换
	["act22"]={name="extend_newacti",tab=3},
	["act23"]={name="panel_chongzhi",},

	["act24"]={name="main_guild", page="hongbao"},------帮会红包
	["act25"]={name="main_forge"},------帮会红包
	["act30"]={name="panel_vip",},
	["act35"]={name="btn_main_wing",},------翅膀
	["act40"]={name="main_consign",tab=3},------寄售（货架)
	["act41"]={name="extend_breakup",},

	["act42"]={name="extend_dice",},
}

local showButtonTab = {
	-- ["menu_mount"] 		= {level = 75,	--[==[day = 3,]==]	name = "坐骑",		mType = "menu",},
	-- ["menu_zhuansheng"] = {level = 80,				name = "转生",		mType = "menu",},
	-- ["menu_medal"] 		= {level = 42,				name = "勋章",		mType = "menu",},
	 ["menu_wing"] 		= {level = 59,	--[==[day = 2,]==]	name = "翅膀",		mType = "menu", },
	 ["btn_main_rank"]		= {level = 70,				name = "排行榜",		mType = "menu",},
	-- ["main_boss"]		= {level = 30,				name = "BOSS",		mType = "rcpart",},
	-- ["menu_escort"]		= {level = 52,				name = "押镖",		mType = "menu",},
	-- ["extend_xunbao"]	= {level = 55,				name = "寻宝",		mType = "rtpart",},
	-- ["menu_shenjiang"]	= {level = 32,				name = "神将",		mType = "menu",},
	-- ["menu_furnace"]	= {level = 20,				name = "熔炉",		mType = "menu",},
	-- ["extend_activity"] = {level = 50,				name = "每日活动",	mType = "rtpart",},
	-- ["menu_spirit"]		= {level = 80,				name = "元神",		mType = "menu",},
	-- ["menu_zhuling"]	= {
	-- 	level = 61,
	-- 	name = "注灵",
	-- 	mType = "menu",
	-- 	openTabs = {
	-- 		[1] = {level=61,	tabName="装备注灵",	index = 1,	mType = "menu"},
	-- 		[2] = {level=62,	tabName="注灵回收",	index = 2,	mType = "menu"},
	-- 	},
	-- },
	-- ["menu_forge"]	= {
	-- 	level = 35,
	-- 	name = "锻造",
	-- 	mType = "menu",
	-- 	openTabs = {
	-- 		[1] = {level=35,	tabName="装备强化",	index = 1,	mType = "menu"},
	-- 		[2] = {level=45,	tabName="强化转移",	index = 2,	mType = "menu"},
	-- 		[3] = {level=63,	tabName="装备合成",	index = 3,	mType = "menu"},
	-- 	},
	-- },
	-- ["extend_richang"]	= {
	-- 	level = 40,
	-- 	name = "日常",
	-- 	mType = "rtpart",
	-- 	openTabs = {
	-- 		[1] = {level=40 ,	tabName="降妖除魔",	index = 1,	mType = "rtpart"},
	-- 		[2] = {level=68 ,	tabName="镇魔塔",	index = 2,	mType = "rtpart"},
	-- 		[3] = {level=80,	tabName="元神塔",	index = 3,	mType = "rtpart"},
	-- 		[4] = {level=60 ,	tabName="副本",		index = 4,	mType = "rtpart"},
	-- 		[5] = {level=70 ,	tabName="组队副本",	index = 5,	mType = "rtpart"},
	-- 		[6] = {level=55 ,	tabName="VIP副本",	index = 6,	mType = "rtpart"},
	-- 		[7] = {level=65 ,	tabName="藏宝地图",	index = 7,	mType = "rtpart"},
	-- 	},
	-- },
}

function GameUtilSenior.handleOpenPanelState(pName,event)
	local selfLevel = GameCharacter._mainAvatar and GameCharacter._mainAvatar:NetAttr(GameConst.net_level) or 1
	local selfZSLevel = GameCharacter._mainAvatar and GameCharacter._mainAvatar:NetAttr(GameConst.net_zslevel) or 1
	local openPanelState = true
	local setTabs = {}
	if pName == "panel_boss" then 
		pName = "main_boss"
	elseif pName == "extend_lottery_ex" then
		pName = "extend_xunbao"
	end
	if showButtonTab[pName] then
		if event and event.index then
			if showButtonTab[pName].openTabs and showButtonTab[pName].openTabs[event.index] then
				if showButtonTab[pName].openTabs[event.index].level and selfLevel < showButtonTab[pName].openTabs[event.index].level or showButtonTab[pName].openTabs[event.index].zslevel and selfZSLevel < showButtonTab[pName].openTabs[event.index].zslevel or not GameSocket.m_func[showButtonTab[pName].openTabs[event.index].mType][pName] then
					setTabs = {
						name = showButtonTab[pName].openTabs[event.index].tabName,
						level = showButtonTab[pName].openTabs[event.index].level,
					}
					openPanelState = false
				end
			end
		else
			if GameSocket.m_func[showButtonTab[pName].mType][pName] then
				-- if selfLevel < showButtonTab[pName].level then return end
				if showButtonTab[pName].openTabs then
					for k,v in pairs(showButtonTab[pName].openTabs) do
						local tabVisible = false
						if v.level and selfLevel >= v.level then
							tabVisible = true
						elseif v.zslevel and selfZSLevel >= v.zslevel then
							tabVisible = true
						end
						if v.level then	
							setTabs[v.index] = {level = v.level, tabid = k,visible = tabVisible,}
						elseif v.zslevel then
							setTabs[v.index] = {zslevel = v.zslevel, tabid = k,visible = tabVisible,}
						end

					end
				-- elseif selfLevel < showButtonTab[pName].level and pName ~= "menu_zhuansheng" then
				-- 	setTabs = {
				-- 		name = showButtonTab[pName].name,
				-- 		level = showButtonTab[pName].level,
				-- 	}
				-- 	openPanelState = false
				end
			else
				openPanelState = false
				if showButtonTab[pName].day then
					setTabs = {
						name = showButtonTab[pName].name,
						day = showButtonTab[pName].day,
					}
				elseif showButtonTab[pName].level then
					setTabs = {
						name = showButtonTab[pName].name,
						level = showButtonTab[pName].level,
					}
				elseif showButtonTab[pName].zslevel then
					setTabs = {
						name = showButtonTab[pName].name,
						zslevel = showButtonTab[pName].zslevel,
					}
				end
			end
		end
	end
	return setTabs, openPanelState
end

function GameUtilSenior.addSlideMove(panel, slideOutCallBack)
	local posbegan,posmove,posend,timeBegan,timeMove
	local panelPosX = panel:getPositionX()
	local panelPosY = panel:getPositionY()
	local panelSize = panel:getContentSize()
	local lastingTime

	local function onSlideBack(direction)
		lastingTime = math.abs(panelPosX - panel:getPositionX()) / 800
		panel:stopAllActions()
		panel:runAction(
			cc.EaseSineOut:create(
				cc.MoveTo:create(lastingTime, panel.defaultPos)
			)
		)
	end

	local function onSlideOut(moveVector)
		local function callback(dx)
			-- print("callback")
			if slideOutCallBack then
				slideOutCallBack()
			end
		end
		local moveDistance
		local missPosX
		local panelPosX = panel:getPositionX()
		if moveVector < 0 then--往右边移动
			moveDistance = display.width - panelPosX + panel:getAnchorPoint().x * panelSize.width
			missPosX = display.width + panel:getAnchorPoint().x * panelSize.width + 50
		else
			moveDistance = panelPosX + (1 - panel:getAnchorPoint().x) * panelSize.width
			missPosX = (panel:getAnchorPoint().x - 1) * panelSize.width - 50
		end

		if moveDistance < 0 then
			if slideOutCallBack then
				slideOutCallBack()
			end
			return
		end

		lastingTime = moveDistance / 1600
		panel:stopAllActions()
		panel:runAction(
			cc.Sequence:create(
				cc.EaseSineOut:create(
					cc.MoveTo:create(
						lastingTime, cc.p(missPosX, panel:getPositionY())
					)
				),
				cc.CallFunc:create(callback)
			)
		)

	end

    local function slidelayer(sender, touch_type)
    	if not sender.touchState then sender.touchState = touch_type end

    	if sender.touchState > touch_type then return end

    	sender.touchState = touch_type

		if touch_type == ccui.TouchEventType.began then
			posbegan = sender:getTouchBeganPosition()
			timeBegan = GameBaseLogic.getTime()
		elseif touch_type == ccui.TouchEventType.moved then
			local ignoreLength = 100
			posmove = sender:getTouchMovePosition()
			if not posbegan then posbegan = posmove end
			if math.abs(posbegan.x-posmove.x) > ignoreLength then
				panel:setPositionX(posmove.x-posbegan.x+panelPosX+ignoreLength*(posbegan.x-posmove.x)/math.abs(posbegan.x-posmove.x))
			end
		elseif touch_type == ccui.TouchEventType.ended or touch_type == ccui.TouchEventType.canceled then
			if posmove then
				if math.abs(posbegan.x-posmove.x) > 200 then
					onSlideOut(posbegan.x-posmove.x)
				elseif math.abs(posbegan.x-posmove.x) > 150 then
					local speed  = math.abs(posbegan.x-posmove.x) / (GameBaseLogic.getTime()-timeBegan)
					if speed >1500 then
						onSlideOut(posbegan.x-posmove.x)
					else
						posend = sender:getTouchEndPosition()
						onSlideBack(posbegan.x-posend.x)
					end
				else
					posend = sender:getTouchEndPosition()
					onSlideBack(posbegan.x-posend.x)
				end
				posbegan,posmove,posend,timeBegan=nil
			end
			sender.touchState = nil
		end
	end

	local dragArea = ccui.Widget:create()
	dragArea:setName("dragArea")
	dragArea:setContentSize(panelSize)
	dragArea:setAnchorPoint(cc.p(0, 0))
	panel:addChild(dragArea,10)
	dragArea:setTouchEnabled(true)
	dragArea:setSwallowTouches(false)
	dragArea:addTouchEventListener(slidelayer)
end

function GameUtilSenior.setPanelMoveEnabled(panel, movable)
	local dragArea = panel:getWidgetByName("dragArea")
	if dragArea then
		if movable then
			dragArea:setTouchEnabled(true)
			dragArea:setSwallowTouches(false)
		else
			dragArea:setTouchEnabled(false)
		end
	end
end

function GameUtilSenior.touchlink(pSender,parent,richlabel)
	-- if touch_type == ccui.TouchEventType.ended then
		local pWidget = pSender
		-- local _touchEndPos = cc.p(pWidget:getTouchEndPosition().x,pWidget:getTouchEndPosition().y)
		local paramlist = pWidget.user_data
		if pWidget then
			local m_nSeed = GameSocket.m_nNpcTalkId
			if paramlist and paramlist ~= "" then
				if string.find(paramlist,"ui_accept_task") then

				elseif string.find(paramlist,"ui_done_task") then

				end
				if not string.find(paramlist,"event:") then
					return
				else
					paramlist = string.sub(paramlist,7)
				end
				local param = string.split(paramlist, "_")
				if #param <= 0 then
					return
				end
				if param[1] == "talk" then
					if #param > 1 then
						if parent == "panel_npctalk" then
							GameSocket:NpcTalk(m_nSeed,param[2])
						elseif parent == "panel_playertalk" then
							GameSocket:PlayerTalk(m_nSeed,param[2])
						elseif parent == "panel_itemtalk" then
							GameSocket:ItemTalk(GameSocket.m_nItemTalkId,m_nSeed,param[2])
						end
					end
				elseif param[1] == "local" then
					local action = param[2]
					if action =="chat" then
						if parent == "panel_chat" then
							GameSocket:dispatchEvent({name = GameMessageCode.EVENT_TALK_PANEL, result = param})
							return
						end
					elseif action =="goto" then
						if parent == "panel_chat" then
							GameUtilSenior.litenerTaskLink(paramlist)
							return
						end
					elseif param[2] == "itemname" then
						local itemdef = GameSocket:getItemDefByName(param[3])
						if itemdef then
							-- GameSocket:dispatchEvent({name = GameMessageCode.EVENT_TOUCH_ITEM_LABEL_LINK, typeId = itemdef.mTypeID})
							local level = param[4] or 0
							local zlevel = param[5] or 0
							GameSocket:dispatchEvent(
							{
								name	= GameMessageCode.EVENT_HANDLE_TIPS, 
								typeId	= itemdef.mTypeID,
								visible	= true,
								mLevel	= tonumber(level),
								mZLevel	= tonumber(zlevel),
								titleText = GameConst.str_close,
								tipsPos	= cc.p(display.cx, display.height*0.47),
							})
						end
						return
					elseif param[2] == "itemid" then
						local itemid = tonumber(param[3])
						if itemid then
							local itemdef = GameSocket:getItemDefByID(itemid)
							if itemdef then
								-- GameSocket:dispatchEvent({name = GameMessageCode.EVENT_TOUCH_ITEM_LABEL_LINK, typeId = itemdef.mTypeID})
								local level = param[4] or 0
								local zlevel = param[5] or 0
								GameSocket:dispatchEvent(
								{
									name	= GameMessageCode.EVENT_HANDLE_TIPS, 
									typeId	= itemdef.mTypeID,
									visible	= true,
									mLevel	= tonumber(level),
									mZLevel	= tonumber(zlevel),
									titleText = GameConst.str_close,
									tipsPos	= cc.p(display.cx, display.height*0.47),
								})
							end
						end
						return
					elseif param[2] == "OpenPanel" then
						local param3 = param[3]
						if panel_show[param3] and panel_show[param3].tab then
							GameSocket:dispatchEvent({name = GameMessageCode.EVENT_OPEN_PANEL, str = panel_show[param3].name,tab = panel_show[param3].tab})
						elseif panel_show[param3] and panel_show[param3].page then
							GameSocket:dispatchEvent({name = GameMessageCode.EVENT_OPEN_PANEL, str = panel_show[param3].name,page = panel_show[param3].page})
						elseif panel_show[param3] then
							GameSocket:dispatchEvent({name = GameMessageCode.EVENT_OPEN_PANEL, str = panel_show[param3].name})
						end
					elseif param[2] == "SeverOpen" then
						if param[3] then
							GameSocket:PushLuaTable("gui.moduleGuiButton.handlePanelData",GameUtilSenior.encode({actionid = param[3]}))
						end
					elseif param[2] == "FlyTo" then
						if param[3] then
							GameSocket:PushLuaTable("gui.moduleGuiButton.handlePanelData",GameUtilSenior.encode({actionid = param[3], fly = 1}))
						end
					end
				elseif param[1] == "voice" then
					if param[2] and param[3] then
						-- GameCCBridge.playRecord(GameUtilSenior.ByteToStr(param[2]), GameUtilSenior.ByteToStr(param[3]))
						return
					end
				elseif param[1] == "sell" then
					if #param==6 then
						GameSocket:dispatchEvent({name =GameMessageCode.EVENT_SHOW_CHAT_SELL,params = param})
						return
					end
				elseif param[1] == "panel" then
					if param[2] and param[3] then
						GameSocket:dispatchEvent({name = GameMessageCode.EVENT_OPEN_PANEL,str = param[2].."_"..param[3]})
					end
				elseif param[1] == "guild" then --申请帮会
					if param[2] then
						local guild_name = GameCharacter._mainAvatar:NetAttr(GameConst.net_guild_name)
						if guild_name and guild_name~="" then
							GameSocket:alertLocalMsg("当前已加入帮会，无法继续申请！")
						else
							GameSocket:JoinGuild(param[2], 0)
							GameSocket:alertLocalMsg("正在申请加入["..param[2].."]帮会！")
						end
						return
					end
				elseif param[1] == "PushLuaTable" then
					--向服务段发送请求,字符中的_使用u95替换
					print("sadasd",param[1],string.gsub(param[2],"u95","_"),string.gsub(param[3],"u95","_"),param[4])
					if param[2] and param[3] then
						GameSocket:PushLuaTable(string.gsub(param[2],"u95","_"),GameUtilSenior.encode({actionid = string.gsub(param[3],"u95","_"),data=string.gsub(param[4],"u95","_")}))
					end
				end
				GameSocket:dispatchEvent({name = GameMessageCode.EVENT_CLOSE_PANEL,str = parent})
				GameSocket:dispatchEvent({name = GameMessageCode.EVENT_MAINUI_VISIBLE, visible=true} )
			end
		end
	-- end
end

function GameUtilSenior.litenerTaskLink(paramstr)  --解析点击任务列表中某个任务的传送数据。
	print(paramstr)
	local param=string.split(paramstr,"_")
	-- local mainRole = CCGhostManager:getMainAvatar()
	-- GameCharacter._mainAvatar = GameCharacter._mainAvatar or CCGhostManager:getMainAvatar()
	if param and #param>0 then
		if param[1]=="local" then
			local walktag=2
			if param[2]=="goto" or param[2]=="walkto" then
				if param[2]=="walkto" then walktag=1 end
				if #param==4 then
					local xx=tonumber(param[3])
					local yy=tonumber(param[4])
					GameCharacter._mainAvatar:startAutoMoveToPos(xx,yy,walktag)
				end
				if #param==5 or #param==6 then
					local map_name=param[3]
					local xx=tonumber(param[4])
					local yy=tonumber(param[5])
					if #param==6 then GameCharacter._targetNPCName=param[6] end
					
					GameCharacter.startAutoMoveToMap(map_name,xx,yy,walktag) --移动到目标地图的位置
					-- 判断自己的位置和目标位置
					if GameCharacter._mainAvatar:NetAttr(GameConst.net_x) == xx and GameCharacter._mainAvatar:NetAttr(GameConst.net_y) == yy then
						return true
					end
				end
				-- local mModels = GameSocket.mModels[GameCharacter._mainAvatar:NetAttr(GameConst.net_id)]
				-- if mModels and mModels[7] and mModels[7]>0 and GameCharacter._mainAvatar:NetAttr(GameConst.net_mount)==0 and GameCharacter._mainAvatar:NetAttr(GameConst.net_level)>=65 then
				-- 	GameSocket:PushLuaTable("gui.PanelMount.onPanelData",GameUtilSenior.encode({ actionid= "mounting",}))
				-- 	GameSocket:ChangeMount()
				-- else
				-- 	GameSocket:alertLocalMsg("坐骑功能尚未开启！","alert")
				-- end
			end
		--elseif param[1]=="talk" then
		--	GameSocket:NpcTalk(param[2],"100")
		elseif param[1]=="fly" then
			GameSocket:DirectFly(param[2])
		elseif param[1]=="click" then
			GameSocket:ServerScript(param[2])
		elseif param[1] == "guide" then
			-- if GameSocket.mNetMap.mName~="邪恶领地[副本]" then
			-- 	GameSocket:dispatchEvent({name = GameMessageCode.EVENT_SHOW_GUIDE, lv = tonumber(param[2])})
			-- end
		elseif param[1] == "attack" then
			if param[2] and param[2] ~= "" then
				local pGhost=NetCC:findGhostByName(param[2])
			 	if pGhost and pGhost:NetAttr(GameConst.net_type)==GameConst.GHOST_MONSTER then
					CCGhostManager:selectSomeOne(pGhost:NetAttr(GameConst.net_id))
					GameCharacter.startAutoFight()
				else
					GameSocket:ServerScript("attack|"..param[3])
			 	end
			 end
		elseif param[1]=="open" then
			if #param >= 3 then
				local pName = param[2].."_"..param[3]
				if pName == "extend_richang" then
					-- local map = cc.NetClient:getInstance():getMap()
					-- if map then
					-- 	local mapNames = {"蜘蛛洞","蛮荒之地","皇陵一层"}
					-- 	if not table.indexof(mapNames, map:MapName()) then
					-- 		GameSocket:dispatchEvent({name = GameMessageCode.EVENT_SHOW_GUIDE, lv = tonumber(param[4])})
					-- 	end
					-- end
				else
					-- GameSocket:dispatchEvent({name = GameMessageCode.EVENT_OPEN_PANEL,str = pName, mParam = {guideLv = tonumber(param[4])} })
					if pName == "menu_recycle" then
						GameSocket:dispatchEvent({name = GameMessageCode.EVENT_OPEN_PANEL,str = pName, mParam = {guideLv = tonumber(param[4])} })
					elseif pName == "menu_getequip" then
						GameSocket:dispatchEvent({name = GameMessageCode.EVENT_TASK_GET_EQUIP,visible = true})
					else
						GameSocket:dispatchEvent({name = GameMessageCode.EVENT_SHOW_GUIDE, lv = tonumber(param[4])})
					end

				end
				-- if pName == "menu_forge" then
				-- 	GameSocket:dispatchEvent({name = GameMessageCode.EVENT_OPEN_PANEL,str = pName, mParam = {guideLv = param[4]} })
				-- elseif pName == "extend_richang" then
				-- 	GameSocket:dispatchEvent({name = GameMessageCode.EVENT_OPEN_PANEL,str = pName, mParam = {guideLv = param[4]} })
				-- elseif pName == "menu_recycle" then
				-- 	GameSocket:dispatchEvent({name = GameMessageCode.EVENT_OPEN_PANEL,str = pName, mParam = {guideLv = param[4]} })
				-- end
			end
		elseif param[1] == "autofight" then
			GameCharacter.startAutoFight()
		end
		-- GameBaseLogic.NetClient():dispatchEvent({name=GameMessageCode.EVENT_GUIDE_SWITCH})
	end
end

function GameUtilSenior.decode(text)
	return json.decode(text)
end

function GameUtilSenior.encode(text)
	return json.encode(text)
end

function GameUtilSenior.httpRequest(url,listener,node)
	local xhr = cc.XMLHttpRequest:new()
	xhr.responseType = cc.XMLHTTPREQUEST_RESPONSE_STRING
    xhr:open("GET", url)
    local function httpcallback()
    	if listener and type(listener)=="function" then
    		if node and GameUtilSenior.isObjectExist(node) then
    			listener(xhr)
    		end
    	end
    end
    xhr:registerScriptHandler(httpcallback)
    xhr.timeout=8
    xhr:send()
    return xhr
end

--[[--

创建一个文字输入框,并返回 CCEditBox 对象。

可用参数：

-   image: 输入框的图像,可以是图像名或者是 cc.Sprite9Scale 显示对象。用 display.newScale9Sprite() 创建 cc.Sprite9Scale 显示对象。
-   imagePressed: 输入状态时输入框显示的图像（可选）
-   imageDisabled: 禁止状态时输入框显示的图像（可选）
-   listener: 回调函数
-   size: 输入框的尺寸,用 CCSize(宽度, 高度) 创建
-   x, y: 坐标（可选）

~~~ lua

local function onEdit(event, editbox)
	if event == "began" then
		-- 开始输入
	elseif event == "changed" then
		-- 输入框内容发生变化
	elseif event == "ended" then
		-- 输入结束
	elseif event == "return" then
		-- 从输入框返回
	end
end

local editbox = GameUtilSenior.newEditBox({
	image = "EditBox.png",
	listener = onEdit,
	size = CCSize(200, 40)
})

~~~

注意: 使用setInputFlag(0) 可设为密码输入框。

注意：构造输入框时,请使用setPlaceHolder来设定初始文本显示。setString为出现输入法后的默认文本。

注意：事件触发机制,player模拟器上与真机不同,请使用真机实测(不同ios版本貌似也略有不同)。

注意：changed事件中,需要条件性使用setString（如trim或转化大小写等）,否则在某些ios版本中会造成死循环。

~~~ lua

--错误,会造成死循环

editbox:setString(string.trim(editbox:getText()))

~~~

~~~ lua

--正确,不会造成死循环
local _text = editbox:getText()
local _trimed = string.trim(_text)
if _trimed ~= _text then
	editbox:setString(_trimed)
end

~~~

@param table params 参数表格对象

@return CCEditBox 文字输入框

]]

function GameUtilSenior.clickOtherPlace(layer_name,zorder,hideAddList)
	local container=cc.Layer:create()
   	container:setContentSize(cc.size(display.width,display.height))
   	container:setTouchEnabled(true)
   	local _touchListener = cc.EventListenerTouchOneByOne:create()
   	_touchListener:registerScriptHandler(hideAddList,cc.Handler.EVENT_TOUCH_BEGAN)
   	_touchListener:registerScriptHandler(hideAddList,cc.Handler.EVENT_TOUCH_MOVED)
   	_touchListener:registerScriptHandler(hideAddList,cc.Handler.EVENT_TOUCH_ENDED)
   	_touchListener:setSwallowTouches(false)
   	local eventDispatcher = container:getEventDispatcher()
   	eventDispatcher:addEventListenerWithSceneGraphPriority(_touchListener, container)
   	layer_name:addChild(container)
   	container:setLocalZOrder(zorder)
end
function GameUtilSenior.newEditBox(params)
	local imageNormal = params.image
	-- local imagePressed = params.imagePressed
	-- local imageDisabled = params.imageDisabled

	if type(imageNormal) == "string" then
		if string.byte(imageNormal) == 35 then --#
			imageNormal = ccui.Scale9Sprite:create()
			imageNormal:initWithSpriteFrame(display.newSpriteFrame(string.sub(params.image, 2)))
			imageNormal:setScale9Enabled(true)
			imageNormal:setContentSize(params.size)
		else
			imageNormal = ccui.Scale9Sprite:create(imageNormal)
		end
	end
	-- if type(imagePressed) == "string" then
	-- 	if string.byte(imagePressed) == 35 then
	-- 		imagePressed = ccui.Scale9Sprite:create()
	-- 		imagePressed:initWithSpriteFrame(display.newSpriteFrame(string.sub(params.imagePressed, 2)))
	-- 	else
	-- 		imagePressed = ccui.Scale9Sprite:create(imagePressed)
	-- 	end
	-- end
	-- if type(imageDisabled) == "string" then
	-- 	if string.byte(imageDisabled) == 35 then
	-- 		imageDisabled = ccui.Scale9Sprite:create()
	-- 		imageDisabled:initWithSpriteFrame(display.newSpriteFrame(string.sub(params.imageDisabled, 2)))
	-- 	else
	-- 		imageDisabled = ccui.Scale9Sprite:create(imageDisabled)
	-- 	end
	-- end

	local editbox = ccui.EditBox:create(params.size, imageNormal, imageNormal, imageNormal)
	editbox:setFontName(FONT_NAME):setPlaceholderFontName(FONT_NAME)

	if editbox then
		if params.name then
			editbox:setName(params.name)
		end
		if params.color then
			editbox:setFontColor(params.color)
		end

		editbox:registerScriptEditBoxHandler(function (event, editbox)
			if params.listener then
				params.listener(event, editbox)
			end
		end)

		if params.x and params.y then
			editbox:setPosition(params.x, params.y)
		end

		if params.placeHolder then
			editbox:setPlaceHolder(params.placeHolder)
		end

		if params.placeHolderColor then
			editbox:setPlaceholderFontColor(params.placeHolderColor)
		end

		if params.placeHolderSize then
			editbox:setPlaceholderFontSize(params.placeHolderSize)
		end

		if params.fontSize then
			editbox:setFontSize(params.fontSize)
		end	
		if params.anchor then
			editbox:setAnchorPoint(params.anchor)
		else
			editbox:setAnchorPoint(cc.p(0.5, 0.5))
		end
		if params.maxlen then
			editbox:setMaxLength(params.maxlen)
		end

		editbox:setInputMode(params.inputMode or cc.EDITBOX_INPUT_MODE_SINGLELINE)
	end
	editbox.setString = editbox.setText
	return editbox
end

function GameUtilSenior.newTextField(param)
	local textfield=ccui.TextField:create()

	if param.size then
		textfield:setContentSize(param.size)
		textfield:setTouchSize(param.size)
		textfield:setTouchAreaEnabled(true)
	end
	if checkint(param.x) and checkint(param.y) then
		textfield:setPosition(cc.p(param.x,param.y))
	end
	if type(param.place)=="string" then
		textfield:setPlaceHolder(param.place)
	else
		textfield:setPlaceHolder("")
	end
	if checkint(param.fontsize) then
		textfield:setFontSize(param.fontsize)
	else
		textfield:setFontSize(22)
	end
	if checkint(param.maxlen) then
		textfield:setMaxLengthEnabled(true)
		textfield:setMaxLength(param.maxlen)
	end
	if param.anchor then
		textfield:setAnchorPoint(param.anchor)
	end
	if type(listener)=="function" then
		textfield:addEventListener(listener)
	end

	textfield.getText=textfield.getString
	textfield.setString=textfield.setText

	return textfield
end

function GameUtilSenior.newUILabel(table)
	if table then
		if not table.text then table.text = "" end
		if not table.font then table.font = FONT_NAME end
		if not table.fontSize then table.fontSize = 24 end
		if not table.color then table.color = display.COLOR_WHITE end
	end
	local uiLabel = ccui.Text:create(table.text,table.font,table.fontSize)
	uiLabel:setColor(table.color)
	if table.contentSize then
		uiLabel:setContentSize(table.contentSize.width,table.contentSize.height)
		uiLabel:setTextAreaSize(cc.size(table.contentSize.width,table.contentSize.height))
		uiLabel:ignoreContentAdaptWithSize(false)
	end
	if table.anchor then
		uiLabel:setAnchorPoint(table.anchor)
	end
	if table.position then
		uiLabel:setPosition(table.position)
	end
	if table.mName then
		uiLabel:setName(table.mName)
	end
	if table.opacity then
		uiLabel:setOpacity(table.opacity)
	end
	if table.outlineColor and table.outlineStrength then
		uiLabel:enableOutline(table.outlineColor,table.outlineStrength)
	end
	return uiLabel
end

function GameUtilSenior.showAlert(title, message, buttonLabels, listener, node)
	device.showAlert(title, message, buttonLabels, function (event)
		if not node and listener then
			listener(event)
		elseif GameUtilSenior.isObjectExist(node) and listener then
			listener(event)
		end
	end)
end


function GameUtilSenior.getWidgetCenterPos(widget)
	if GameUtilSenior.isObjectExist(widget) then
		local anchor = widget:getAnchorPoint()
		local pos = widget:getAnchorPointInPoints()

		local m_pos = widget:convertToWorldSpace(cc.p((0.5-anchor.x)*widget:getContentSize().width+pos.x,(0.5-anchor.y)*widget:getContentSize().height+pos.y))
		
		return m_pos
	end
end

function GameUtilSenior.asyncload(parent, widgetName, filepath, touchenabled)
	local widget = parent:getWidgetByName(widgetName)
	if widget then
		widget:setTouchEnabled(touchenabled)
		asyncload_callback(filepath, widget, function(filepath, texture)
			if GameUtilSenior.isObjectExist(widget) then
				widget:loadTexture(filepath)
			end
		end)
	end
end

function GameUtilSenior.btnSetEnable(btn, enable)
	btn:setTouchEnabled(enable)
	btn:setBright(enable)
end

function GameUtilSenior.decimal2Hex(decimal)--10进制转16进制
	local result
	if decimal <= 9 then
		result = tostring(decimal)
	else
		result = string.char(64+decimal-9)--A的ascii从65开始
	end
	return result
end

function GameUtilSenior.getColorHex(decimal)
	local color = GameBaseLogic.getColor(decimal)
	for k,v in pairs(color) do
		local decade = GameUtilSenior.decimal2Hex(math.floor(v/16))
		local single = GameUtilSenior.decimal2Hex(v%16)
		color[k] = tostring(decade)..single
	end
	return color.r..color.g..color.b
end


--一个中文字长度是1，一个英文字长度为0.5
function GameUtilSenior.getColorJsonLength(json)
	local temp = GameUtilSenior.decode(json)
	if not temp then
		temp = {
			[1] = {json,},
		}
	end

	local length = 0
	local totalLength = 0
	for i,v in ipairs(temp) do
		v[1] = GameBaseLogic.clearHtmlText(v[1])
		length = length + string.utf8len(v[1])
		totalLength = totalLength + string.len(v[1])
	end

	local chineseNum = (totalLength - length)/2
	local asciiNum = length - chineseNum
	return chineseNum + asciiNum / 2
end

function GameUtilSenior.getStrLen(str)
	local length = string.utf8len(str)
	local totalLength = string.len(str)
	local chineseNum = (totalLength - length)/2
	local asciiNum = length - chineseNum
	return chineseNum, asciiNum
end

function GameUtilSenior.clearJsonColor(json)
	local temp = GameUtilSenior.decode(json)
	if not temp then
		return json
	end

	local tempString = ""
	if temp then
		for i,v in ipairs(temp) do
			tempString = tempString..v[1]
		end
	end
	return tempString
end

function GameUtilSenior.analyseColorJson(json)
	local temp = GameUtilSenior.decode(json)
	if not temp then
		return json
	end

	local tempString = ""
	if temp then
		for i,v in ipairs(temp) do
			if string.find(v[1], "<a") then
				if string.find(v[1], "<a color") then
					tempString = tempString..v[1]
				else
					tempString = tempString..string.gsub(v[1], "<a", "<a color=#"..v[2])
				end
			else
				if not v[2] then
					tempString = tempString..v[1]
				else
					tempString = tempString.."<font color=#"..v[2].." >"..v[1].."</font>"
				end
			end
		end
	end
	return tempString
end

function GameUtilSenior.runDelayCallfunc(target, delay, callfunc) -- 延时调用函数
	if target then
		local time = delay or 0.2
		target:runAction(
			cca.seq({
				cca.delay(time),
				cca.cb(callfunc)
			})
		)
	end
end

function GameUtilSenior.setTimeFormat(milliSecond , typeT)
	local day = math.floor(milliSecond / 3600000 / 24)
	local hour = math.floor(milliSecond%(3600000*24) / 3600000)
	local minute = math.floor(milliSecond%3600000 / 60000)
	local second = math.floor(milliSecond % 60000 / 1000)
	local milliSecondStr = math.floor(milliSecond % 1000)
	local str = ""
	if not typeT then
		if day >0 then str = str..day.."天" end
		if hour>0 then str = str..hour.."时" end
		if minute>0 then str = str..minute.."分" end
		if second>0 then str = str..second.."秒" end
	elseif typeT == 1 then
		str = minute.."分"..second.."秒"
	elseif typeT == 2 then
		str = string.format("%02d:%02d:%02d",hour,minute,second)
		-- str = (hour >= 10 and hour or "0" ..hour) ..":"..(minute >= 10 and minute or "0" ..minute)..":"..(second >= 10 and second or "0" ..second)
	elseif typeT == 3 then
		str = string.format("%02d:%02d",minute,second)
		-- str = (minute >= 10 and minute or "0" ..minute)..":"..(second >= 10 and second or "0" ..second)
	elseif typeT == 4 then
		str = string.format("%02d时%02d分%02d秒",hour,minute,second)
		-- str = hour.."时"..minute.."分"..second.."秒"
	elseif typeT == 5 then
		str = {day , hour , minute , second , milliSecondStr}
	elseif typeT == 6 then
		str = string.format("%02d天%02d时%02d分",day,hour,minute)
		-- str = day.."天"..(hour%24) .."时"..minute.."分"
	elseif typeT == 7 then
		str = string.format("%02d时%02d分",hour,minute)
		-- str = hour.."时"..minute.."分"
	elseif typeT == 8 then
		if day>0 then
			str = day.."天"..(hour >= 10 and hour or "0" ..hour) .."小时"..(minute >= 10 and minute or "0" ..minute).."分"..(second >= 10 and second or "0" ..second).."秒"
		else
			str = (hour >= 10 and hour or "0" ..hour) .."小时"..(minute >= 10 and minute or "0" ..minute).."分"..(second >= 10 and second or "0" ..second).."秒"
		end
	end	
	return str
end

function GameUtilSenior.handleAttrChange(diff)
	local PLAYERJOB ={
		[100] = "mDC:",
		[101] = "mMC:",
		[102] = "mSC:",
	}

	if not GUIMain or not GUIMain.InfoPart then return end

	local function sendOut()
		local firstInQueue = true
		for i,v in ipairs(GUIMain.diff) do
			-- print(v.char,PLAYERJOB[GameBaseLogic.GetMainRole():NetAttr(GameConst.net_job)])
			if v.char == "mDC:" or v.char == "mMC:" or v.char == "mSC:" then
				if not GameCharacter._mainAvatar or v.char ~= PLAYERJOB[GameCharacter._mainAvatar:NetAttr(GameConst.net_job)] then 
					v.value ,v.value2= 0,0 
				end
			end
			if v.value > 0 or checkint(v.value2) > 0 then
				local value_string = "+"..(v.char)..tostring(v.value)
				if v.value2 then
					value_string = value_string..":"..v.value2
				end
				table.insert(GameSocket.msgMid, value_string)
				if firstInQueue then
					firstInQueue = false
					GameSocket:dispatchEvent({name = GameMessageCode.EVENT_MAIN_ATTR_PLUS, firstInQueue = true})
				else
					GameSocket:dispatchEvent({name = GameMessageCode.EVENT_MAIN_ATTR_PLUS, firstInQueue = false})
				end
			elseif v.value < 0 or checkint(v.value2) < 0 then
				local value_string = "-"..(v.char)..tostring(math.abs(v.value))
				if v.value2 then
					value_string = value_string..":"..math.abs(v.value2)
				end
				table.insert(GameSocket.msgMid, value_string)
				if firstInQueue then
					firstInQueue = false
					GameSocket:dispatchEvent({name = GameMessageCode.EVENT_MAIN_ATTR_PLUS, firstInQueue = true})
				else
					GameSocket:dispatchEvent({name = GameMessageCode.EVENT_MAIN_ATTR_PLUS, firstInQueue = false})
				end
			end
		end
	end

	--延时是为了可以在短时间内提升多次属性时计算总和而不至于只显示最后一条
	local actionWaiting = cca.seq({cca.delay(0.2), cca.callFunc(sendOut)})
	actionWaiting:setTag(1)
	if not GUIMain.InfoPart:getActionByTag(1) then
		GUIMain.diff= {
			[1]  = {char = "mHp:",			value = 0,},
			[2]  = {char = "mAC:",			value = 0, value2 = 0,},
			[3]  = {char = "mMAC:",			value = 0, value2 = 0,},
			[4]  = {char = "mDC:",			value = 0, value2 = 0,},
			[5]  = {char = "mMC:",			value = 0, value2 = 0,},
			[6]  = {char = "mSC:",			value = 0, value2 = 0,},
			[7]  = {char = "critPoint:",	value = 0,},
			[8]  = {char = "critProb:",		value = 0,},
			[9]  = {char = "mLuck:",		value = 0,},
			[10] = {char = "mDodge:",		value = 0,},
			[11] = {char = "mAccuracy:",	value = 0,},
			[12] = {char = "tenacity:",		value = 0,},
			[13] = {char = "holyDam:",	value = 0,},--img_ignoremMAC_green_plus,img_ignoremAC_green_plus
		}
	else
		GUIMain.InfoPart:stopActionByTag(1)
	end

	for i = 1,13 do
		GUIMain.diff[i].value = GUIMain.diff[i].value + diff[i].value
		if i > 1 and i < 7 then
			GUIMain.diff[i].value2 = GUIMain.diff[i].value2 + diff[i].value2
		end
	end
	GUIMain.InfoPart:runAction(actionWaiting)
end

--文字类未读以及奖励类未领则返回1
function GameUtilSenior.checkMailPriority(singleMail)
	-- if (#singleMail.item > 0 and singleMail.isReceive == 0) or (#singleMail.item == 0 and singleMail.isOpen == 0) then
	-- 	return 1
	-- end
	if  singleMail.isOpen == 0 then
	 	return 1
	 end
	return 0
end

----针对聊天消息中地址信息处理，防止被屏蔽----
function GameUtilSenior.StrToByte(str)
	local enStr =""
	for i=1,#str do
		enStr = enStr..string.format("%03d",string.byte(str,i))
	end
	return enStr
end

function GameUtilSenior.ByteToStr(enStr)
	local str=""
	local num = nil
	for i=1,#enStr,3 do
		num = tonumber(string.sub(enStr,i,i+2))
		if num then
			str = str..string.char(num)
			num = nil
		end
	end
	return str
end

function GameUtilSenior.checkInvalidChar(str,symbol)
	local tmp,tmp1,tmp2
	local i=1
	while i<=#str do
		tmp=string.byte(str,i)
		i=i+1
		if tmp<192 and not symbol then
			if (tmp>=48 and tmp<=57) or (tmp>=65 and tmp<=90) or (tmp>=97 and tmp<=122) then

			else
				return true
				end
			--192及以上为双字节字符
			--224~239为三字节汉字
			elseif tmp>=228 and tmp<240 then
				--此处因为汉字一从228开始,前面是其他符号可抛弃
				tmp1=string.byte(str,i)
				i=i+1
				if tmp1>191 or tmp1<128 then
					return true
				end
				tmp2=string.byte(str,i)
				i=i+1
				if tmp2>191 or tmp2<128 then
					return true
			end
		--240及以上为四字节字符
		elseif tmp>=240 then
			return true
		end
	end
end

function GameUtilSenior.getFilelist(filepath, start, finish, zeroCount, suffix)
	local filelist = {}
	suffix = suffix or "png"
	for i = 1, finish - start + 1 do
		filelist[i] = filepath.."/"..string.format("%0"..zeroCount.."d", start+i-1).."."..suffix
	end
	return filelist
end

function GameUtilSenior.getAnimateByFileList(filelist,node,delay,callback)
	if type(filelist)=="table" then
		if callback and type(callback)=="function" then

			for i,v in ipairs(filelist) do
				if not cc.FileUtils:getInstance():isFileExist(v) then
					if cc.FileUtils:getInstance():isFileExist(filelist[1]) then
						local frames={}
						asyncload_callback(filelist[1], node, function (thefile,res)
							frames[1]=cc.SpriteFrame:createWithTexture(res,cc.rect(0,0,res:getContentSize().width,res:getContentSize().height))
							local anim=cc.Animate:create(cc.Animation:createWithSpriteFrames(frames,1))
							callback(anim)
						end)
					end
					return
				end
			end

			asyncload_list(filelist, node, function (filelist,res)
				local frames={}
				for i,v in ipairs(filelist) do
					frames[i]=cc.SpriteFrame:createWithTexture(res[v],cc.rect(0,0,res[v]:getContentSize().width,res[v]:getContentSize().height))
				end

				local anim=cc.Animate:create(cc.Animation:createWithSpriteFrames(frames,delay))

				callback(anim)
			end)
		else
			local frames={}
			for i,v in ipairs(filelist) do
				if not cc.FileUtils:getInstance():isFileExist(v) then
					if cc.FileUtils:getInstance():isFileExist(filelist[1]) then
						local texture=cc.CacheManager:getInstance():loadImage(filelist[1])
						if texture then
							frames[1]=cc.SpriteFrame:createWithTexture(res,cc.rect(0,0,res:getContentSize().width,res:getContentSize().height))
						end
						local anim=cc.Animate:create(cc.Animation:createWithSpriteFrames(frames,1))

						return anim
					end
					return
				end
			end
			for i,v in ipairs(filelist) do
				local texture=cc.CacheManager:getInstance():loadImage(v)
				if not texture then
					return
				end
				frames[i]=cc.SpriteFrame:createWithTexture(texture,cc.rect(0,0,texture:getContentSize().width,texture:getContentSize().height))
			end

			local anim=cc.Animate:create(cc.Animation:createWithSpriteFrames(frames,delay))

			return anim
		end
	end
end

function GameUtilSenior.getAnimateByFrameList(file,ftype,framelist,node,delay,callback)
	if type(filelist)=="string" and type(framelist)=="table" then
		if callback and type(callback)=="function" then
			local exit=false
			asyncload_frames(filelist,ftype,function (filename)
				if not exit then
					local frames={}
					for i,v in ipairs(framelist) do
						frames[i]=cc.SpriteFrameCache:getInstance():getSpriteFrameByName(v)
					end

					local anim=cc.Animate:create(cc.Animation:createWithSpriteFrames(frames,delay))

					if not node or GameUtilSenior.isObjectExist(node) then
						callback(anim)
					end
				end
				remove_frames(filelist,ftype)
			end)
			if node then
				cc(node):addNodeEventListener(cc.NODE_EVENT, function (event)
		            if event.name == "exit" then
		                exit=true
		            end
		        end)
			else
				print("asyncload_callback has not target !!!")
			end
		else
			local texture=cc.CacheManager:getInstance():loadImage(file..ftype)
			if texture then
				asyncload_frames(filelist,ftype,function (filename)
					local frames={}
					for i,v in ipairs(framelist) do
						frames[i]=cc.SpriteFrameCache:getInstance():getSpriteFrameByName(v)
					end

					local anim=cc.Animate:create(cc.Animation:createWithSpriteFrames(frames,delay))

					remove_frames(filelist,ftype)

					return anim
				end,node)
			end
		end
	end
end

function GameUtilSenior.isObjectExist(object)
	if object and not tolua.isnull(object) then return true end
end

-- function GameUtilSenior.hitTest(widget,pos)
-- 	local size=widget:getContentSize()
-- 	local rect=cc.rect(0,0,size.width,size.height)
-- 	local npos=widget:convertToNodeSpace(pos)
-- 	return cc.rectContainsPoint(rect,npos)
-- end

function GameUtilSenior.hitTest( node,sender )
	if GameUtilSenior.isObjectExist(node) then
		local pos
		if sender.x and sender.y then
			pos = sender
		else
			pos = sender:getTouchEndPosition();
		end
		local size = node:getContentSize();
		if node.getViewSize then
		    size = node:getViewSize();
		end
		return cc.rectContainsPoint(cc.rect(0, 0, size.width, size.height), node:convertToNodeSpace(pos));
	end
end

function GameUtilSenior.shadeNode(params)
	local vertDefaultSource = [[
	attribute vec4 a_position; 
	attribute vec2 a_texCoord; 
	attribute vec4 a_color;
	#ifdef GL_ES
	varying lowp vec4 v_fragmentColor;
	varying mediump vec2 v_texCoord;
	#else
	varying vec4 v_fragmentColor; 
	varying vec2 v_texCoord;
	#endif
	void main()
	{
	gl_Position = CC_PMatrix * a_position; 
	v_fragmentColor = a_color;
	v_texCoord = a_texCoord;
	}]]

	local shaders = {
		["gray"] = [[
			#ifdef GL_ES 
			precision mediump float; 
			#endif
			varying vec4 v_fragmentColor; 
			varying vec2 v_texCoord; 
			void main(void) 
			{ 
			vec4 c = texture2D(CC_Texture0, v_texCoord); 
			gl_FragColor.xyz = vec3(0.4*c.r + 0.4*c.g +0.4*c.b);
			gl_FragColor.w = c.w;
			}
		]],
		["outline"] = [[
			#ifdef GL_ES
			precision lowp float;
			#endif
			varying vec4 v_fragmentColor;
			varying vec2 v_texCoord;
			void main()
			{
			float radius = 0.0005;
			float threshold = 1.75;
			vec4 accum = vec4(0.0);
			vec4 normal = vec4(0.0);
		 	vec3 u_outlineColor = vec3();

			normal = texture2D(CC_Texture0, vec2(v_texCoord.x, v_texCoord.y));

			accum += texture2D(CC_Texture0, vec2(v_texCoord.x - radius, v_texCoord.y - radius));
			accum += texture2D(CC_Texture0, vec2(v_texCoord.x + radius, v_texCoord.y - radius));
			accum += texture2D(CC_Texture0, vec2(v_texCoord.x + radius, v_texCoord.y + radius));
			accum += texture2D(CC_Texture0, vec2(v_texCoord.x - radius, v_texCoord.y + radius));
			accum *= threshold;
			accum.rgb =  u_outlineColor * accum.a;
			normal = (accum * (1.0 - normal.a)) + (normal * normal.a);
			gl_FragColor = v_fragmentColor * normal;
			}
		]]
	}
	if not params.node or not params.shaderType then return end
	if not shaders[params.shaderType] then return end
	local shaderScript = shaders[params.shaderType]
	if params.shaderType == "outline" then
		-- local start,finish = string.find(shaderScript, "vec3 u_outlineColor = vec3%(")
		-- shaderScript = string.sub(shaderScript, 1,finish)..(params.rgbFString or "0.2,1,0.3")..string.sub(shaderScript, finish+1,-1)
		shaderScript = string.gsub(shaderScript,"vec3%(","vec3("..(params.rgbFString or "0.2,1,0.3"))
	end

	-- node:setGLProgram(cc.GLProgramCache:getInstance():getGLProgram("ShaderPositionTextureColor_noMVP"))
	local pProgram = cc.GLProgram:createWithByteArrays(vertDefaultSource, shaderScript)
	pProgram:bindAttribLocation(cc.ATTRIBUTE_NAME_POSITION,cc.VERTEX_ATTRIB_POSITION)
	pProgram:bindAttribLocation(cc.ATTRIBUTE_NAME_COLOR,cc.VERTEX_ATTRIB_COLOR)
	pProgram:bindAttribLocation(cc.ATTRIBUTE_NAME_TEX_COORD,cc.VERTEX_ATTRIB_FLAG_TEX_COORDS)
	pProgram:link()
	pProgram:updateUniforms()
	params.node:setGLProgram(pProgram)
end

function GameUtilSenior.getChildFromNode(root, name)
	if root and name then
		if root:getName() == name then
			return root 
		end
		for k,v in pairs(root:getChildren()) do
			local child = GameUtilSenior.getChildFromNode(v, name)
			if child then
				return child
			end
		end
	end
end

function GameUtilSenior.updateNamePos(nameSprite)
	if GameUtilSenior.isObjectExist(nameSprite) then
		local mVipSprite = nameSprite:getChildByName("mVipSprite")
		local mNameLabel = nameSprite:getChildByName("mNameLabel")
		if mVipSprite then
			local nameWidth = mNameLabel:getContentSize().width
			local vipWidth = mVipSprite:getContentSize().width
			mVipSprite:setPositionX(- 0.5 * (nameWidth + vipWidth))
			-- mNameLabel:setPositionX(vipWidth * 0.5)
		end
	end
end

-----倒计时
function GameUtilSenior.setCountDown(node,times,interval,callback)
	local function kickTime()
		node.countTimes = node.countTimes or 0
		if node.countTimes>=times then
			node:setTouchEnabled(true):setBright(true)
			node.countTimes = nil
			callback(node)
		else
			node:setTouchEnabled(false)
			node:setBright(false)
			node:setTitleText(times-node.countTimes)
			node.countTimes = node.countTimes + 1
		end
	end
	node:runAction(cca.rep(cca.seq({cca.cb(function() kickTime() end),cca.delay(interval)}),times+1))
end

function GameUtilSenior.stringifyData(obj, skips)
	local result = "";
	for k,v in pairs(obj) do
		if (not skips) or (not table.indexof(skips, k)) then
			if tostring(v) then
				--print("nimabi", k, v)
				if not (result == "") then
					result = result..","
				end
				result = result..k.."="..tostring(v)
			end
		end
	end
	return result;
end

function GameUtilSenior.parseData(str)
	local data = {}
	local tempData = string.split(str,",")
	for i,v in ipairs(tempData) do
		local temp = string.split(v,"=")
		if temp[2] == "false" then
			temp[2] = false
		elseif temp[2] == "true" then
			temp[2] = true
		elseif tonumber(temp[2]) then
			temp[2] = tonumber(temp[2])			
		end
		data[temp[1]] = temp[2]
	end
	return data
end

function GameUtilSenior.ToBase64(source_str)
    local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    local s64 = ''
    local str = source_str

    while #str > 0 do
        local bytes_num = 0
        local buf = 0

        for byte_cnt=1,3 do
            buf = (buf * 256)
            if #str > 0 then
                buf = buf + string.byte(str, 1, 1)
                str = string.sub(str, 2)
                bytes_num = bytes_num + 1
            end
        end

        for group_cnt=1,(bytes_num+1) do
            b64char = math.fmod(math.floor(buf/262144), 64) + 1
            s64 = s64 .. string.sub(b64chars, b64char, b64char)
            buf = buf * 64
        end

        for fill_cnt=1,(3-bytes_num) do
            s64 = s64 .. '='
        end
    end

    return s64
end

function GameUtilSenior.FromBase64(str64)
    local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    local temp={}
    for i=1,64 do
        temp[string.sub(b64chars,i,i)] = i
    end
    temp['=']=0
    local str=""
    for i=1,#str64,4 do
        if i>#str64 then
            break
        end
        local data = 0
        local str_count=0
        for j=0,3 do
            local str1=string.sub(str64,i+j,i+j)
            if not temp[str1] then
                return
            end
            if temp[str1] < 1 then
                data = data * 64
            else
                data = data * 64 + temp[str1]-1
                str_count = str_count + 1
            end
        end
        for j=16,0,-8 do
            if str_count > 0 then
                str=str..string.char(math.floor(data/math.pow(2,j)))
                data=math.mod(data,math.pow(2,j))
                str_count = str_count - 1
            end
        end
    end
    return str
end

function GameUtilSenior.performWithInterval(listener, endListener, total, interval)
	local handle
    local index = 0 
    local sharedScheduler = cc.Director:getInstance():getScheduler()
    interval = interval or 1
    handle = sharedScheduler:scheduleScriptFunc(function()
    	index = index + 1
    	if index >= total  then
    		endListener()
    		sharedScheduler:unscheduleScriptEntry(handle)
    	else
    		listener()
    	end
    end, interval, false)
    return handle
end

function GameUtilSenior.addMutilClickListener(pSender, singleListener, doubleListener)
	local sharedScheduler = cc.Director:getInstance():getScheduler()
	local isMoved, oneHandle
	local count = 0

    local function singleClick()
        sharedScheduler:unscheduleScriptEntry(oneHandle)   
        count = 0
        if singleListener then
        	singleListener(pSender)
        end
    end
   
    local function doubleClick()
        count = 0
        if doubleListener then
        	doubleListener(pSender)
        end
    end
   
    local function touchListener(sender, touchType)
    	if sender.hitTestCall and not sender.hitTestCall(sender) then
    		return
    	end
        if touchType == ccui.TouchEventType.began then
            
        elseif touchType == ccui.TouchEventType.moved then
        	local _touchStartPos = pSender:getTouchBeganPosition()
			local _touchMovePos = pSender:getTouchMovePosition()
			if cc.pDistanceSQ(_touchStartPos,_touchMovePos) > 50*50 then
				if oneHandle then
					sharedScheduler:unscheduleScriptEntry(oneHandle)
					oneHandle = nil
				end
            	isMoved = true
			end
        elseif touchType == ccui.TouchEventType.ended then
            if isMoved then
             	isMoved = false
             	return false
            end
            if count == 1 then
                sharedScheduler:unscheduleScriptEntry(oneHandle)
                doubleClick();
            elseif count == 0 then
                oneHandle = sharedScheduler:scheduleScriptFunc(singleClick, 0.25, false)
                count = count + 1
            end       
        end
    end
    pSender:addTouchEventListener(touchListener)
end

function GameUtilSenior.addLongClickListener(pSender, longListener)
	local beginHandle, isTouch

	local function longClick()
        if isTouch then longListener() end
    end
   
    local function touchListener(sender, touchType)
        if sender == btn then
            if touchType == ccui.TouchEventType.began then
                isTouch = true
                beginHandle = cc.Director:getInstance():getScheduler():scheduleScriptFunc(longClick,1,false)    
            elseif touchType == ccui.TouchEventType.ended then
                cc.Director:getInstance():getScheduler():unscheduleScriptEntry(beginHandle)
                isTouch = false
            end
        end
    end
    pSender:addTouchEventListener(touchListener)
end

function GameUtilSenior.bound(min,value,max)
	return math.max(min,math.min(value,max));
end

function GameUtilSenior.half(t)
	local new
	if GameUtilSenior.isTable(t) then
		new = {}
		for k,v in pairs(t) do
			new[k] = v/2
		end
	elseif GameUtilSenior.isNumber(t) then
		new = t/2
	end
	return new
end

--纯文本根据长度自动插入\n换行

function GameUtilSenior.autoNewlineString(input,width,fontSize)
    local len  = string.len(input)
    local left = len
    local newStr = ""
    local arr  = {0, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc}
    local curlen = 0 
    while left ~= 0 do
        local tmp = string.byte(input, -left)
        local i   = #arr
        while arr[i] do
            if tmp >= arr[i] then
                if i>1 then
                	curlen = curlen + fontSize
        			newStr = newStr..string.sub(input,-left,-left+2)
                else
        			newStr = newStr..string.sub(input,-left,-left)
                	curlen = curlen + fontSize/2
                end
                left = left - i
                break
            end
            i = i - 1
        end
        if curlen>=width then
        	newStr = newStr.."\n"
        	curlen = 0
        end

    end
    return newStr
end

function table.slice(t,st,ed)
	if type(t)~="table" then return t end
	if not ed then ed = #t end
	st = GameUtilSenior.bound(0, st, #t)
	ed = GameUtilSenior.bound(0, ed, #t)
	local newt = {};
	for i=st,ed do
		table.insert(newt,t[i])
	end
	return newt;
end

function GameUtilSenior.numberToChinese(num)
	local enum = {["0"] = "零", ["1"] = "一", ["2"] = "二", ["3"] = "三", ["4"] = "四", ["5"] = "五", ["6"] = "六", ["7"] = "七", ["8"] = "八", ["9"] = "九", }
	local struct = {[1] = "",[2] = "十",[3] = "百",[4] = "千",[5] = "万",[6] = "十",[7] = "百",[8] = "千",[9] = "亿",[10] = "十",[11] = "百",[12] = "千"}
	local n,s,str = tonumber(num),"",""
	if n then
		n = math.modf(n)--取整数部分
		s = tostring(n)
		local zero,wan = 0,0
		local weizhi,char,hanzi,danwei
		for i=#s-1,0,-1 do
			weizhi = #s-i
			char = string.sub(s,i+1,i+1)
			hanzi = enum[char]
			danwei = struct[weizhi] or ""
			if char =="0" then
				zero = zero + 1
				if weizhi ==1 then
					hanzi = "" --消除末尾的零
				elseif weizhi%4==1 then
					hanzi = "" --消除 零万 前面的零
					danwei = "" --遇到万 单位则交给前面的数字处理单位
				else
					if zero >1 then
						hanzi = "" --如果连续出现两个以上零，只记一个
					end
					danwei = ""
				end
			else
				zero = 0
				if char == "1" and weizhi%4 == 2 then
					hanzi = "";	--消除一十万前面一
				end
				if math.floor(weizhi/4) ~=wan then
					wan = wan + 1
					if weizhi%4 > 1 then
						danwei = danwei .. struct[math.floor(weizhi/4)*4+1] --添加单位
					end
				end
			end
			str = hanzi..danwei..str
		end
	end
	return str;
end

function GameUtilSenior.addUnderLine(label, color, width, posY)
	posY = checknumber(posY)
	local pWidth = label:getContentSize().width
	local underline = display.newLine({{1,posY}, {pWidth,posY}},
	    {borderColor = color,
	    borderWidth = width})
	label:addChild(underline)
	return underline
end

function isType( target,tType )
	return target~=nil and type(target) == tType
end

function GameUtilSenior.isString(target)
	return isType(target, "string")
end

function GameUtilSenior.isNumber(target)
	return isType(target, "number")
end

function GameUtilSenior.isTable(target)
	return isType(target, "table")
end

function GameUtilSenior.isFunction(target)
	return isType(target, "function")
end

function GameUtilSenior.isUserData(target)
	return isType(target, "userdata")
end

function GameUtilSenior.isBool(target)
	return isType(target, "boolean")
end

function GameUtilSenior.addEditBoxTo(param)
	local parent = param.parent
	local inputMode = param.inputMode or cc.EDITBOX_INPUT_MODE_ANY
	local fontSize = param.fontSize or 20
	local color = param.color or 0xD6BEA9
	local pSize = parent:getContentSize()
	local name = param.name or "numInput"
	local placeHolder = param.placeHolder or ""

	local editBox = GameUtilSenior.newEditBox({
		name = "numInput",
		image = "#null",
		size = pSize,
		listener = param.listener,
		color = GameBaseLogic.getColor(color),
		x = 0,
		y = 0,
		fontSize = fontSize,
		inputMode = inputMode
	})

	editBox:align(display.BOTTOM_LEFT,0,0)
		:setPlaceHolder(placeHolder)
		:addTo(parent)
		:setString("")
		
	return editBox
end


function GameUtilSenior.createEditBox(param)
	local inputText
	local bindLabel = param.bindLabel
	local endCallFunc = param.endCallFunc
	local function onEdit(event,editBox)
		if event == "began" then
			-- if bindLabel then bindLabel:hide() end
			editBox:setText("")
		elseif event == "changed" then

		elseif event == "ended" then
		elseif event == "return" then
			inputText = editBox:getText()
			if inputText ~= "" then
				editBox:setText("")
				-- if bindLabel then bindLabel:setString(inputText) end
				if GameUtilSenior.isFunction(endCallFunc) then
					endCallFunc(inputText)
				end
			end
			-- if bindLabel then bindLabel:show() end
		end
	end
	param.listener = onEdit
	local editBox = GameUtilSenior.addEditBoxTo(param)

	return editBox
end

function GameUtilSenior.newCustomEditBox(param)
	if not (param and param.parent and param.bindLabel) then
		return
	end
	param.bindLabel:setString("")
	local mEditBox = GameUtilSenior.createEditBox(param)
	return mEditBox
end

function GameUtilSenior.isSame(a,b)
	if type(a) == type(b) then
		if type(a) == "table" then
			for k,v in pairs(a) do
				if not GameUtilSenior.isSame(v,b[k]) then
					return false
				end
			end
			return true
		else
			return a == b
		end
	else
		return false
	end
end

function GameUtilSenior.formatDate(time)
	local date = tonumber(os.date("%Y%m%d",time))
	local year = math.floor(date / 10000)
	local month = math.floor((date % 10000) / 100)
	local day = date % 100
	return year.."年"..month.."月"..day.."日"
end

function GameUtilSenior.getJobName(jobId)
	local jobName = {
		["warrior"] = "战士",
		["wizard"] = "法师",
		["taoist"] = "道士",
		["100"] = "战士",
		["101"] = "法师",
		["102"] = "道士",
	}
	return jobName[tostring(jobId)]
end

--给按钮增加光晕呼吸灯
function GameUtilSenior.addHaloToButton(target, res,pos,width,height)
	if not GameUtilSenior.isObjectExist(target) then return end
	local pSize = target:getContentSize()
	local imgBln = target:getChildByName("img_bln")
	if not imgBln then
		imgBln = ccui.ImageView:create(res, ccui.TextureResType.plistType)
			:align(display.CENTER, pSize.width * 0.5, pSize.height * 0.5)
			:addTo(target)
			:setName("img_bln")
	end
	if pos then
		imgBln:setPositionX(pos.x)
		imgBln:setPositionY(pos.y)
	end
	if width and width >0 or height and height > 0 then
		imgBln:setScale9Enabled(true)
		imgBln:setContentSize(cc.size(width,height))
	end
	imgBln:stopAllActions()
	imgBln:runAction(cca.repeatForever(cca.seq({
			cca.fadeOut(0.5),
			cca.fadeIn(0.5),
		})
	))
end

function GameUtilSenior.removeHaloFromButton(target) 
	if not GameUtilSenior.isObjectExist(target) then return end
	target:removeChildByName("img_bln")
end

function GameUtilSenior.remedyCount(count)
	local now = os.time()
	count = checkint(count)
	return function()
		return count + now - os.time()
	end
end
--倒计时方法
function GameUtilSenior.runCountDown(widget,count,cb)
	if GameUtilSenior.isObjectExist(widget) then
		local remedy = GameUtilSenior.remedyCount(count)
		widget:stopAllActions()
		widget:runAction(cca.rep(cca.seq({
			cca.cb(function ( target )
				if GameUtilSenior.isFunction(cb) then
					cb(target,remedy())
				end
			end),
			cca.delay(1)
		}),count+1))
	end
end

--[[
	date 参数	默认当前时间值
	year,month,day,hour,min,sec,isdst--夏令时
--]]
function GameUtilSenior.convertToTime(date)
	date = date or {}
	local now = os.date("*t",os.time())
	for k,v in pairs(now) do
		if date[k] then
			now[k] = date[k]
		end
	end
	return os.time(now)
end

--获取数字小数点左边有多少位
function GameUtilSenior.getDigitCapacity(num)
	return num == 0 and 1 or math.ceil(math.log10(math.abs(num)))
end


--[[
	特效统一添加接口
]]--
function GameUtilSenior.addEffect( parent,name,group,id,pos,ap,isblend,loop,fun )
	if not parent then return end
	if not name then return end
	if parent:getChildByName(name) then return end
	if not id then return end
	if not GameUtilSenior.isNumber(group) then
		group = 4
	end
	local effectSprite = cc.Sprite:create()
	effectSprite:setName(name)
	parent:addChild(effectSprite)
	local animate = cc.AnimManager:getInstance():getPlistAnimate(group, id, 4, 3,false,false,0,function(animate,shouldDownload)
							if not parent then
								print("addEffect not vaild parent")
								return
							end
							print("addEffect callback")
							if not effectSprite then
								print("addEffect not vaild")
								return
							end
							print("addEffect check vaild")
							if animate then
								effectSprite:runAction(cca.repeatForever(animate))
							end
							print("addEffect is vaild")
							if not isblend then
								effectSprite:setBlendFunc({src=gl.SRC_ALPHA,dst=gl.ONE})
							end
							if pos and pos.x then
								effectSprite:setPositionX(pos.x)
							end
							if pos and pos.y then
								effectSprite:setPositionY(pos.y)
							end
							if not ap then
								effectSprite:setAnchorPoint(cc.p(0.5,0.5))
							end
							if not pos then
								local parentSize = parent:getContentSize()
								effectSprite:setPositionX(parentSize.width * 0.5)
								effectSprite:setPositionY(parentSize.height * 0.5)
							end
							if shouldDownload==true then
								parent:release()
								effectSprite:release()
							end
						end,
						function(animate)
							parent:retain()
							effectSprite:retain()
						end
						)
	return effectSprite
end

function GameUtilSenior.print_table( t )  
    local print_r_cache={}
    local function sub_print_r(t,indent)
        if (print_r_cache[tostring(t)]) then
            print(indent.."*"..tostring(t))
        else
            print_r_cache[tostring(t)]=true
            if (type(t)=="table") then
                for pos,val in pairs(t) do
                    if (type(val)=="table") then
                        print(indent.."["..pos.."] => "..tostring(t).." {")
                        sub_print_r(val,indent..string.rep(" ",string.len(pos)+8))
                        print(indent..string.rep(" ",string.len(pos)+6).."}")
                    elseif (type(val)=="string") then
                        print(indent.."["..pos..'] => "'..val..'"')
                    else
                        print(indent.."["..pos.."] => "..tostring(val))
                    end
                end
            else
                print(indent..tostring(t))
            end
        end
    end
    if (type(t)=="table") then
        print(tostring(t).." {")
        sub_print_r(t,"  ")
        print("}")
    else
        sub_print_r(t,"  ")
    end
    print()
end


--游戏窗口顶部的动画标题
function GameUtilSenior.showTitleAnimals(title_animal)
	local startNum = 1
	local function startShowTitleBg()
	
		if startNum < 12 then
			local filepath = string.format("ui/image/ContainerTitle/new_game_panel_title_%d.png",startNum)
			asyncload_callback(filepath, title_animal, function(filepath, texture)
				title_animal:loadTexture(filepath)
			end)
		end
		
		startNum= startNum+1
		if startNum ==12 then
			startNum =1
		end
	end
	title_animal:setPositionY(title_animal:getPositionY()-50)  --微调位置
	title_animal:stopAllActions()
	title_animal:runAction(cca.repeatForever(cca.seq({cca.delay(0.1),cca.cb(startShowTitleBg)}),tonumber(18)))	
end

--双击道具打开对应的面板(需要热更的东西在这边写)
local itemsOpen = {
	[28000012]={itemName="强化+20卷轴",  panelName = "panel_quickAddEquip",value = 20},
	[28000013]={itemName="强化+15卷轴",  panelName = "panel_quickAddEquip",value = 15},
	[28000014]={itemName="强化+12卷轴",  panelName = "panel_quickAddEquip",value = 12},
	[28000027]={itemName="强化+12卷轴",  panelName = "panel_quickAddEquip",value = 10},
	[28000028]={itemName="强化+12卷轴",  panelName = "panel_quickAddEquip",value = 11},

}
function GameUtilSenior.useItemOpen(type_id)
	if itemsOpen[type_id] then
		GameSocket:dispatchEvent({name=GameMessageCode.EVENT_OPEN_PANEL,str=itemsOpen[type_id].panelName,value = itemsOpen[type_id].value,id=type_id})
		return true
	end
	return false
end