--version = 1
local l_fileType = "layer"

local UIUtil = require "ui/common/UIUtil"

--EDITOR elements start tag
local eleRoot = 
{
	prop = {
		etype = "Layer",
		name = "root",
		posX = 0,
		posY = 0,
		anchorX = 0,
		anchorY = 0,
	},
	children = {
	{
		prop = {
			etype = "Image",
			name = "ddd",
			posX = 0.5,
			posY = 0.5,
			anchorX = 0.5,
			anchorY = 0.5,
			sizeX = 1,
			sizeY = 1,
			image = "b#dd",
			scale9 = true,
			scale9Left = 0.2,
			scale9Right = 0.2,
			scale9Top = 0.2,
			scale9Bottom = 0.2,
			alpha = 0.7,
		},
		children = {
		{
			prop = {
				etype = "Button",
				name = "dd",
				posX = 0.5,
				posY = 0.5,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 1,
				sizeY = 1,
			},
		},
		},
	},
	{
		prop = {
			etype = "Grid",
			name = "ysjm",
			posX = 0.5,
			posY = 0.5,
			anchorX = 0.5,
			anchorY = 0.5,
			sizeX = 1,
			sizeY = 1,
		},
		children = {
		{
			prop = {
				etype = "Image",
				name = "dt",
				posX = 0.5,
				posY = 0.4791665,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.5802954,
				sizeY = 0.6447728,
				scale9 = true,
				scale9Left = 0.45,
				scale9Right = 0.45,
				scale9Top = 0.45,
				scale9Bottom = 0.45,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "kk2",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.625,
					sizeY = 0.9499999,
					image = "b#cs",
					scale9 = true,
					scale9Left = 0.45,
					scale9Right = 0.45,
					scale9Top = 0.2,
					scale9Bottom = 0.7,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "lu",
						posX = 0.5,
						posY = 0.6346256,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.7862375,
						sizeY = 0.7051761,
						image = "luzi#luzi",
					},
				},
				},
			},
			{
				prop = {
					etype = "Button",
					name = "gb",
					varName = "close_btn",
					posX = 0.7638523,
					posY = 0.900612,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.08750931,
					sizeY = 0.1357067,
					image = "baishi#x",
					imageNormal = "baishi#x",
					soundEffectClick = "audio/rxjh/UI/ui_guanbi.ogg",
				},
			},
			{
				prop = {
					etype = "Button",
					name = "an1",
					varName = "exchange_btn",
					posX = 0.5,
					posY = 0.2105306,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1669408,
					sizeY = 0.1249363,
					image = "chu1#sn1",
					imageNormal = "chu1#sn1",
					soundEffectClick = "audio/rxjh/UI/anniu.ogg",
				},
				children = {
				{
					prop = {
						etype = "Label",
						name = "j1",
						posX = 0.5,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9322476,
						sizeY = 1.09296,
						text = "转 换",
						color = "FF966856",
						fontSize = 24,
						fontOutlineColor = "FF347468",
						fontOutlineSize = 2,
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				},
			},
			{
				prop = {
					etype = "Label",
					name = "tsy",
					varName = "dayLeftTimes",
					posX = 0.5,
					posY = 0.09841451,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.6293772,
					sizeY = 0.1700324,
					text = "今日剩余次数",
					color = "FF65944D",
					fontOutlineColor = "FFA47848",
					fontOutlineSize = 2,
					hTextAlign = 1,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "jh",
					posX = 0.5015626,
					posY = 0.6050281,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1036649,
					sizeY = 0.1809423,
					image = "chlq#jiantou",
				},
			},
			{
				prop = {
					etype = "Image",
					name = "tb1",
					varName = "item_bg",
					posX = 0.5,
					posY = 0.7738065,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.1265519,
					sizeY = 0.202483,
					image = "djk#ktong",
				},
				children = {
				{
					prop = {
						etype = "Button",
						name = "btn1",
						varName = "item_btn",
						posX = 0.5,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 1,
						sizeY = 1,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "djt",
						varName = "item_icon",
						posX = 0.4986857,
						posY = 0.514829,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.7673153,
						sizeY = 0.7726135,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "suo",
						varName = "suo",
						posX = 0.202514,
						posY = 0.2238061,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.3191489,
						sizeY = 0.319149,
						image = "tb#suo",
					},
				},
				{
					prop = {
						etype = "Label",
						name = "sl1",
						varName = "item_count",
						posX = 0.5624479,
						posY = 0.2226454,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.6398509,
						sizeY = 0.3371575,
						text = "x1",
						fontOutlineEnable = true,
						hTextAlign = 2,
						vTextAlign = 1,
					},
				},
				},
			},
			{
				prop = {
					etype = "Label",
					name = "tsy2",
					posX = 0.5,
					posY = 0.92,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.6293772,
					sizeY = 0.1700324,
					text = "选择一种道具进行转换",
					color = "FFD25B2C",
					fontSize = 22,
					fontOutlineColor = "FFA47848",
					fontOutlineSize = 2,
					hTextAlign = 1,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Scroll",
					name = "lb",
					varName = "itemScroll",
					posX = 0.5,
					posY = 0.4043109,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.4992384,
					sizeY = 0.195,
					horizontal = true,
					showScrollBar = false,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "tq",
					posX = 0.6372663,
					posY = 0.2104267,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.0703125,
					sizeY = 0.1125,
					image = "tb#tongqian",
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "tbsuo",
						posX = 0.6333332,
						posY = 0.3222224,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.5555556,
						sizeY = 0.5555555,
						image = "tb#suo",
					},
				},
				{
					prop = {
						etype = "Label",
						name = "sla",
						varName = "coin_cost",
						posX = 2.424362,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 2.673869,
						sizeY = 0.944926,
						text = "x9999",
						color = "FF966856",
						vTextAlign = 1,
					},
				},
				},
			},
			},
		},
		},
	},
	},
}
--EDITOR elements end tag
--EDITOR animations start tag
local l_animations =
{
	dk = {
		ysjm = {
			scale = {{0, {0.3, 0.3, 1}}, {150, {1.05, 1.05, 1}}, {200, {1,1,1}}, },
		},
	},
	c_dakai = {
		{0,"dk", 1, 0},
	},
}
--EDITOR animations end tag
local function create()
return UIUtil.createNode(l_fileType, eleRoot, l_animations)
end
return create
