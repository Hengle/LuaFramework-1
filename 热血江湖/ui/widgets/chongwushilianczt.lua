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
			name = "scczt",
			varName = "itemRoot",
			posX = 0.5,
			posY = 0.5,
			anchorX = 0.5,
			anchorY = 0.5,
			lockHV = true,
			sizeX = 0.1138733,
			sizeY = 0.2165402,
		},
		children = {
		{
			prop = {
				etype = "Button",
				name = "an",
				varName = "play_btn",
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
				name = "dt",
				posX = 0.5,
				posY = 0.5,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 1.027295,
				sizeY = 1.04,
				image = "dw#d3",
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "zl2",
					varName = "team",
					posX = 0.5,
					posY = 0.1552658,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.067654,
					sizeY = 0.25,
					text = "xx小队",
					color = "FFC93034",
					fontSize = 18,
					fontOutlineColor = "FF400000",
					hTextAlign = 1,
					vTextAlign = 1,
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "tx1",
				varName = "pet_iconBg",
				posX = 0.5,
				posY = 0.5190838,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.699689,
				sizeY = 0.6610183,
				image = "djk#ktong",
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "txt1",
					varName = "pet_icon",
					posX = 0.5,
					posY = 0.5451064,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.83,
					sizeY = 0.83,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "wk",
					posX = 0.4580873,
					posY = 0.5515568,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.9368423,
					sizeY = 0.8749999,
					image = "cl#sck",
				},
			},
			{
				prop = {
					etype = "Image",
					name = "xx1",
					varName = "start_icon",
					posX = 0.490506,
					posY = 0.171298,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.8999986,
					sizeY = 0.1833636,
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "djd",
				posX = 0.2054462,
				posY = 0.8386544,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.3293133,
				sizeY = 0.307872,
				image = "suic#djk",
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "dj1",
					varName = "level_label",
					posX = 0.5,
					posY = 0.530303,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1,
					sizeY = 1,
					text = "99",
					color = "FFFFE7AF",
					fontOutlineEnable = true,
					fontOutlineColor = "FF975E1F",
					hTextAlign = 1,
					vTextAlign = 1,
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "xz",
				varName = "isSelect",
				posX = 0.5,
				posY = 0.5040416,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.9324411,
				sizeY = 0.965225,
				image = "b#bp",
				scale9 = true,
				scale9Left = 0.4,
				scale9Right = 0.4,
				scale9Top = 0.4,
				scale9Bottom = 0.4,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "dj",
					varName = "select_icon",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.2795956,
					sizeY = 0.2259328,
					image = "chu1#dj",
				},
			},
			{
				prop = {
					etype = "Label",
					name = "ztz",
					varName = "pet_str",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					visible = false,
					sizeX = 0.7726001,
					sizeY = 0.3770359,
					text = "开采中",
					fontSize = 22,
					fontOutlineEnable = true,
					fontOutlineColor = "FF400000",
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
