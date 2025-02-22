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
				posY = 0.5,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.5515625,
				sizeY = 0.7194445,
				scale9 = true,
				scale9Left = 0.3,
				scale9Right = 0.3,
				scale9Top = 0.3,
				scale9Bottom = 0.3,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "wk",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1,
					sizeY = 1,
					image = "b#cs",
					scale9 = true,
					scale9Left = 0.45,
					scale9Right = 0.45,
					scale9Top = 0.2,
					scale9Bottom = 0.7,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "jqd",
					posX = 0.5,
					posY = 0.7729508,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.97124,
					sizeY = 0.3069147,
					image = "d#tyd",
					scale9 = true,
					scale9Left = 0.45,
					scale9Right = 0.45,
					scale9Top = 0.45,
					scale9Bottom = 0.45,
					alpha = 0.4,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "zl5",
					varName = "diamond_count",
					posX = 0.3136045,
					posY = 0.6962325,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1231108,
					sizeY = 0.1109918,
					text = "500",
					color = "FF65944D",
					fontSize = 24,
					hTextAlign = 1,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "tb",
					posX = 0.4033827,
					posY = 0.6962325,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.0802763,
					sizeY = 0.1094113,
					image = "tb#tb_yuanbao.png",
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "suo1",
						varName = "diamond_suo",
						posX = 0.6353616,
						posY = 0.2799986,
						anchorX = 0.5,
						anchorY = 0.5,
						lockHV = true,
						sizeX = 0.5085755,
						sizeY = 0.5085754,
						image = "tb#tb_suo.png",
					},
				},
				},
			},
			{
				prop = {
					etype = "Label",
					name = "zl7",
					varName = "times_desc",
					posX = 0.5,
					posY = 0.7913139,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.7712854,
					sizeY = 0.178784,
					text = "（今日已购买次数：5/88）",
					color = "FF966856",
					fontSize = 22,
					hTextAlign = 1,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "zl8",
					varName = "detaile_desc",
					posX = 0.4999999,
					posY = 0.8756246,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.003068,
					sizeY = 0.178784,
					text = "在现有体力的基础上再获得150体力",
					color = "FF966856",
					fontSize = 22,
					fontOutlineColor = "FF06100F",
					hTextAlign = 1,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "jt",
					posX = 0.5056179,
					posY = 0.6962325,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.04249292,
					sizeY = 0.07528957,
					image = "cl2#yjt",
				},
			},
			{
				prop = {
					etype = "Image",
					name = "tb2",
					varName = "item_icon",
					posX = 0.7006053,
					posY = 0.6962325,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.07925305,
					sizeY = 0.1080167,
					image = "tb#tl",
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "suo2",
						varName = "coin_suo",
						posX = 0.1784247,
						posY = 0.2291411,
						anchorX = 0.5,
						anchorY = 0.5,
						visible = false,
						lockHV = true,
						sizeX = 0.4564681,
						sizeY = 0.5173303,
						image = "tb#tb_suo.png",
					},
				},
				},
			},
			{
				prop = {
					etype = "Label",
					name = "zl9",
					varName = "vit_count",
					posX = 0.5557855,
					posY = 0.6962325,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1846022,
					sizeY = 0.1109918,
					text = "50000",
					color = "FF65944D",
					fontSize = 24,
					hTextAlign = 2,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Button",
					name = "an1",
					varName = "cancel_btn",
					posX = 0.9725162,
					posY = 0.9339346,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.09490085,
					sizeY = 0.1467181,
					image = "chu1#gb",
					imageNormal = "chu1#gb",
					disablePressScale = true,
					soundEffectClick = "audio/rxjh/UI/ui_guanbi.ogg",
				},
			},
			{
				prop = {
					etype = "Button",
					name = "an2",
					varName = "buy_btn",
					posX = 0.5,
					posY = 0.5162462,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.2308782,
					sizeY = 0.1235521,
					image = "chu1#an1",
					imageNormal = "chu1#an1",
					soundEffectClick = "audio/rxjh/UI/anniu.ogg",
				},
				children = {
				{
					prop = {
						etype = "Label",
						name = "anz2",
						posX = 0.5,
						posY = 0.546875,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.958208,
						sizeY = 1.00501,
						text = "购 买",
						fontSize = 24,
						fontOutlineEnable = true,
						fontOutlineColor = "FFB35F1D",
						fontOutlineSize = 2,
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				},
			},
			{
				prop = {
					etype = "Image",
					name = "top",
					posX = 0.5,
					posY = 0.9999995,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.3739377,
					sizeY = 0.1003861,
					image = "chu1#top",
					scale9Left = 0.4,
					scale9Right = 0.4,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "tt",
						varName = "title_desc",
						posX = 0.5,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						lockHV = true,
						sizeX = 0.5075758,
						sizeY = 0.4807692,
						image = "biaoti#gmtl",
					},
				},
				},
			},
			{
				prop = {
					etype = "Image",
					name = "jqd3",
					posX = 0.5017741,
					posY = 0.1928771,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.9665272,
					sizeY = 0.3174339,
					image = "b#d2",
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
						name = "xian",
						posX = 0.5,
						posY = 0.5790608,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8,
						sizeY = 0.01216317,
						image = "b#xian",
						scale9 = true,
						scale9Left = 0.4,
						scale9Right = 0.4,
					},
				},
				},
			},
			{
				prop = {
					etype = "Label",
					name = "zl13",
					posX = 0.5,
					posY = 0.3934679,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.9839094,
					sizeY = 0.178784,
					text = "体力会自然恢复，以下途径可获得体力",
					color = "FFC93034",
					fontSize = 22,
					hTextAlign = 1,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Button",
					name = "an3",
					varName = "friends_go",
					posX = 0.25,
					posY = 0.1966691,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1501416,
					sizeY = 0.2471042,
					image = "tl#hyzs",
					scale9Left = 0.4,
					scale9Right = 0.4,
					imageNormal = "tl#hyzs",
					soundEffectClick = "audio/rxjh/UI/ui_guanbi.ogg",
				},
			},
			{
				prop = {
					etype = "Button",
					name = "an4",
					varName = "production_go",
					posX = 0.5,
					posY = 0.1966691,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1501416,
					sizeY = 0.2471042,
					image = "tl#scdj",
					scale9Left = 0.4,
					scale9Right = 0.4,
					imageNormal = "tl#scdj",
					soundEffectClick = "audio/rxjh/UI/ui_guanbi.ogg",
				},
			},
			{
				prop = {
					etype = "Button",
					name = "an5",
					varName = "faction_go",
					posX = 0.75,
					posY = 0.1966691,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1501416,
					sizeY = 0.2471042,
					image = "tl#cjyx",
					scale9Left = 0.4,
					scale9Right = 0.4,
					imageNormal = "tl#cjyx",
					soundEffectClick = "audio/rxjh/UI/ui_guanbi.ogg",
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
			scale = {{0, {0, 0, 1}}, {150, {1.05, 1.05, 1}}, {200, {1,1,1}}, },
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
