--version = 1
local l_fileType = "node"

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
			etype = "Grid",
			name = "k1",
			posX = 0.5,
			posY = 0.5,
			anchorX = 0.5,
			anchorY = 0.5,
			sizeX = 0.4953125,
			sizeY = 0.1736111,
		},
		children = {
		{
			prop = {
				etype = "Image",
				name = "bpsdt",
				varName = "root_bg",
				posX = 0.5,
				posY = 0.5,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.99,
				sizeY = 1,
				image = "te#hdt1",
				scale9 = true,
				scale9Left = 0.45,
				scale9Right = 0.45,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "cdd",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					visible = false,
					sizeX = 1,
					sizeY = 1,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "wpm",
					varName = "requireLabel",
					posX = 0.3527626,
					posY = 0.8239952,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.6030737,
					sizeY = 0.3257775,
					text = "达到多少级可以领取",
					color = "FF634624",
					fontSize = 22,
					fontOutlineColor = "FF16312B",
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "wpk",
					varName = "gradeIcon1",
					posX = 0.114292,
					posY = 0.3480613,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.1261298,
					sizeY = 0.64,
					image = "djk#ktong",
				},
				children = {
				{
					prop = {
						etype = "Button",
						name = "an1",
						varName = "btn1",
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
						name = "wp",
						varName = "icon1",
						posX = 0.5,
						posY = 0.538703,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8,
						sizeY = 0.8,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "sld",
						posX = 0.5,
						posY = 0.2395833,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8526314,
						sizeY = 0.2708333,
						image = "sc#sc_sld.png",
					},
				},
				{
					prop = {
						etype = "Label",
						name = "zz",
						varName = "countLabel1",
						posX = 0.5257913,
						posY = 0.2088165,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.7744884,
						sizeY = 0.4154173,
						text = "99",
						fontSize = 18,
						fontOutlineEnable = true,
						hTextAlign = 2,
						vTextAlign = 1,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "ylqt",
						posX = 0.4936416,
						posY = 0.5481949,
						anchorX = 0.5,
						anchorY = 0.5,
						visible = false,
						sizeX = 0.9484282,
						sizeY = 0.926211,
						scale9 = true,
						scale9Left = 0.3,
						scale9Right = 0.3,
						scale9Top = 0.3,
						scale9Bottom = 0.3,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "suo4",
						varName = "lock1",
						posX = 0.2062823,
						posY = 0.2403662,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.3684211,
						sizeY = 0.3645834,
						image = "tb#suo",
					},
				},
				},
			},
			{
				prop = {
					etype = "Image",
					name = "wpk2",
					varName = "gradeIcon2",
					posX = 0.2534609,
					posY = 0.3480613,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.1261298,
					sizeY = 0.64,
					image = "djk#ktong",
				},
				children = {
				{
					prop = {
						etype = "Button",
						name = "an2",
						varName = "btn2",
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
						name = "wp2",
						varName = "icon2",
						posX = 0.5,
						posY = 0.538703,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8,
						sizeY = 0.8,
						image = "tb#yuanbao",
					},
				},
				{
					prop = {
						etype = "Image",
						name = "sld2",
						posX = 0.5,
						posY = 0.2395833,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8526314,
						sizeY = 0.2708333,
						image = "sc#sc_sld.png",
					},
				},
				{
					prop = {
						etype = "Image",
						name = "suo2",
						varName = "lock2",
						posX = 0.2062823,
						posY = 0.2403662,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.3684211,
						sizeY = 0.3645834,
						image = "tb#suo",
					},
				},
				{
					prop = {
						etype = "Label",
						name = "zz2",
						varName = "countLabel2",
						posX = 0.5257913,
						posY = 0.2088163,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.7744884,
						sizeY = 0.4154173,
						text = "99",
						fontSize = 18,
						fontOutlineEnable = true,
						hTextAlign = 2,
						vTextAlign = 1,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "ylqt2",
						posX = 0.4936416,
						posY = 0.5481949,
						anchorX = 0.5,
						anchorY = 0.5,
						visible = false,
						sizeX = 0.9484282,
						sizeY = 0.926211,
						scale9 = true,
						scale9Left = 0.3,
						scale9Right = 0.3,
						scale9Top = 0.3,
						scale9Bottom = 0.3,
					},
				},
				},
			},
			{
				prop = {
					etype = "Image",
					name = "wpk3",
					posX = 0.3926299,
					posY = 0.3480613,
					anchorX = 0.5,
					anchorY = 0.5,
					visible = false,
					lockHV = true,
					sizeX = 0.1261298,
					sizeY = 0.64,
					image = "djk#ktong",
				},
				children = {
				{
					prop = {
						etype = "Button",
						name = "an3",
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
						name = "wp3",
						posX = 0.5,
						posY = 0.538703,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8,
						sizeY = 0.8,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "sld3",
						posX = 0.5,
						posY = 0.2395833,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8526314,
						sizeY = 0.2708333,
						image = "sc#sc_sld.png",
					},
				},
				{
					prop = {
						etype = "Image",
						name = "suo3",
						posX = 0.2062823,
						posY = 0.2403662,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.3684211,
						sizeY = 0.3645834,
						image = "tb#suo",
					},
				},
				{
					prop = {
						etype = "Label",
						name = "zz3",
						varName = "countLabel3",
						posX = 0.5257913,
						posY = 0.2088163,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.7744884,
						sizeY = 0.4154173,
						text = "99",
						fontSize = 18,
						fontOutlineEnable = true,
						hTextAlign = 2,
						vTextAlign = 1,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "ylqt3",
						posX = 0.4936416,
						posY = 0.5481949,
						anchorX = 0.5,
						anchorY = 0.5,
						visible = false,
						sizeX = 0.9484282,
						sizeY = 0.926211,
						scale9 = true,
						scale9Left = 0.3,
						scale9Right = 0.3,
						scale9Top = 0.3,
						scale9Bottom = 0.3,
					},
				},
				},
			},
			{
				prop = {
					etype = "Image",
					name = "ew",
					posX = 0.6461961,
					posY = 0.5630584,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.1221153,
					sizeY = 0.319464,
					image = "sc#xl",
				},
			},
			{
				prop = {
					etype = "Button",
					name = "lq",
					varName = "takeBtn",
					posX = 0.8408566,
					posY = 0.3877193,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.2596947,
					sizeY = 0.512,
					image = "chu1#an2",
					imageNormal = "chu1#an2",
					disablePressScale = true,
					soundEffectClick = "audio/rxjh/UI/anniu.ogg",
				},
				children = {
				{
					prop = {
						etype = "Label",
						name = "lqz",
						varName = "takeLabel",
						posX = 0.5,
						posY = 0.546875,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8247252,
						sizeY = 1.143941,
						text = "领 取",
						fontSize = 24,
						fontOutlineEnable = true,
						fontOutlineColor = "FF2A6953",
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
					name = "ylq",
					varName = "finsh_icon",
					posX = 0.8392634,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					visible = false,
					sizeX = 0.2644744,
					sizeY = 0.8000001,
					image = "czt#ylq",
				},
			},
			{
				prop = {
					etype = "Label",
					name = "wz",
					varName = "stateLabel",
					posX = 0.8408566,
					posY = 0.8239952,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.2450573,
					sizeY = 0.541853,
					text = "2131231",
					color = "FF911D02",
					fontSize = 22,
					fontOutlineColor = "FF16312B",
					hTextAlign = 1,
					vTextAlign = 1,
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
}
--EDITOR animations end tag
local function create()
return UIUtil.createNode(l_fileType, eleRoot, l_animations)
end
return create
