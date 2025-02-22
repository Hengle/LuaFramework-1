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
			etype = "Grid",
			name = "ysjm",
			posX = 0.5,
			posY = 0.5,
			anchorX = 0.5,
			anchorY = 0.5,
			sizeX = 0.88,
			sizeY = 0.98,
		},
		children = {
		{
			prop = {
				etype = "Image",
				name = "dt",
				posX = 0.2455488,
				posY = 0.3363578,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.3640206,
				sizeY = 0.3405796,
				image = "b#db5",
				scale9 = true,
				scale9Left = 0.3,
				scale9Right = 0.3,
				scale9Top = 0.3,
				scale9Bottom = 0.3,
				alpha = 0.9,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "dbj3",
					varName = "bg3",
					posX = 0.4916218,
					posY = 0.141829,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.8438349,
					sizeY = 0.1997395,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "dbj2",
					varName = "bg2",
					posX = 0.4916218,
					posY = 0.34846,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.8438349,
					sizeY = 0.1997395,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "dbj",
					varName = "bg1",
					posX = 0.4916218,
					posY = 0.555091,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.8438349,
					sizeY = 0.1997395,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "da",
					posX = 0.5,
					posY = 0.3905534,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.8285589,
					sizeY = 0.631467,
					image = "b#d2",
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
						name = "xian",
						posX = 0.5,
						posY = 0.33333,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 1,
						sizeY = 0.0131796,
						image = "b#xian",
						scale9 = true,
						scale9Left = 0.4,
						scale9Right = 0.4,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "xian2",
						posX = 0.5,
						posY = 0.6666667,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 1,
						sizeY = 0.0131796,
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
					name = "z1",
					varName = "title",
					posX = 0.4039145,
					posY = 0.8584672,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.4896204,
					sizeY = 0.2205351,
					text = "全身升级",
					color = "FF966856",
					fontSize = 26,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "z3",
					varName = "attribute2",
					posX = 0.3214266,
					posY = 0.3879918,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.3246446,
					sizeY = 0.1695843,
					text = "加成2",
					color = "FF966856",
					fontSize = 22,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "z6",
					varName = "attribute1",
					posX = 0.3214266,
					posY = 0.6008651,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.3246446,
					sizeY = 0.1695843,
					text = "加成1",
					color = "FF966856",
					fontSize = 22,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "z4",
					varName = "attribute3",
					posX = 0.3214266,
					posY = 0.1751186,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.3246446,
					sizeY = 0.1695843,
					text = "加成3",
					color = "FF966856",
					fontSize = 22,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "z7",
					varName = "attribute1Value",
					posX = 0.6841248,
					posY = 0.6008651,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.3246446,
					sizeY = 0.1695843,
					text = "加成1",
					color = "FFF1E9D7",
					fontSize = 22,
					fontOutlineEnable = true,
					fontOutlineColor = "FFA47848",
					fontOutlineSize = 2,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "z8",
					varName = "attribute3Value",
					posX = 0.6841248,
					posY = 0.1751186,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.3246446,
					sizeY = 0.1695843,
					text = "加成1",
					color = "FFF1E9D7",
					fontSize = 22,
					fontOutlineEnable = true,
					fontOutlineColor = "FFA47848",
					fontOutlineSize = 2,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "z9",
					varName = "attribute2Value",
					posX = 0.6841248,
					posY = 0.3879918,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.3246446,
					sizeY = 0.1695843,
					text = "加成1",
					color = "FFF1E9D7",
					fontSize = 22,
					fontOutlineEnable = true,
					fontOutlineColor = "FFA47848",
					fontOutlineSize = 2,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "z2",
					varName = "awardValue",
					posX = 0.7155917,
					posY = 0.8584672,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.366073,
					sizeY = 0.2205351,
					text = "+30",
					color = "FF65944D",
					fontSize = 26,
					hTextAlign = 2,
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
