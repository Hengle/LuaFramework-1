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
			name = "pz",
			varName = "exproot",
			posX = 0.7443928,
			posY = 0.33125,
			anchorX = 0.5,
			anchorY = 0.5,
			sizeX = 0.3008529,
			sizeY = 0.6402778,
			layoutType = 9,
			layoutTypeW = 9,
		},
		children = {
		{
			prop = {
				etype = "Image",
				name = "tp1",
				varName = "expbg1",
				posX = 0.3470405,
				posY = 0.8270116,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.5037761,
				sizeY = 0.05422993,
				image = "zd#jsd",
				alphaCascade = true,
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "jc1",
					varName = "exp1",
					posX = 1.05105,
					posY = 0.5202496,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.191005,
					sizeY = 1.644051,
					text = "+22",
					color = "FFFFAC62",
					fontSize = 22,
					fontOutlineEnable = true,
					fontOutlineColor = "FF120D23",
					vTextAlign = 1,
					alphaCascade = true,
					colorTL = "FFF6FF65",
					colorTR = "FFF6FF65",
					colorBR = "FFA1FF26",
					colorBL = "FFA1FF26",
				},
			},
			{
				prop = {
					etype = "Image",
					name = "b7",
					varName = "bg1",
					posX = 0.3097399,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.2474227,
					sizeY = 0.84,
					image = "zd#jisha",
					alphaCascade = true,
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "tp2",
				varName = "expbg2",
				posX = 0.3470405,
				posY = 0.8270116,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.5037761,
				sizeY = 0.05422993,
				image = "zd#jsd",
				alphaCascade = true,
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "jc2",
					varName = "exp2",
					posX = 1.05105,
					posY = 0.5202496,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.191005,
					sizeY = 1.644051,
					text = "+22",
					color = "FFFFAC62",
					fontSize = 22,
					fontOutlineEnable = true,
					fontOutlineColor = "FF120D23",
					vTextAlign = 1,
					alphaCascade = true,
					colorTL = "FFF6FF65",
					colorTR = "FFF6FF65",
					colorBR = "FFA1FF26",
					colorBL = "FFA1FF26",
				},
			},
			{
				prop = {
					etype = "Image",
					name = "b6",
					varName = "bg2",
					posX = 0.3097399,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.2474227,
					sizeY = 0.84,
					image = "zd#jisha",
					alphaCascade = true,
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "tp3",
				varName = "expbg3",
				posX = 0.3470405,
				posY = 0.8270116,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.5037761,
				sizeY = 0.05422993,
				image = "zd#jsd",
				alphaCascade = true,
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "jc3",
					varName = "exp3",
					posX = 1.05105,
					posY = 0.5202496,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.191005,
					sizeY = 1.644051,
					text = "+22",
					color = "FFFFAC62",
					fontSize = 22,
					fontOutlineEnable = true,
					fontOutlineColor = "FF120D23",
					vTextAlign = 1,
					alphaCascade = true,
					colorTL = "FFF6FF65",
					colorTR = "FFF6FF65",
					colorBR = "FFA1FF26",
					colorBL = "FFA1FF26",
				},
			},
			{
				prop = {
					etype = "Image",
					name = "b5",
					varName = "bg3",
					posX = 0.3097399,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.2474227,
					sizeY = 0.84,
					image = "zd#jisha",
					alphaCascade = true,
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "tp4",
				varName = "expbg4",
				posX = 0.3470405,
				posY = 0.8270116,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.5037761,
				sizeY = 0.05422993,
				image = "zd#jsd",
				alphaCascade = true,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "b4",
					varName = "bg4",
					posX = 0.3097399,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.2474227,
					sizeY = 0.84,
					image = "zd#jisha",
					alphaCascade = true,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "jc4",
					varName = "exp4",
					posX = 1.05105,
					posY = 0.5202496,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.191005,
					sizeY = 1.644051,
					text = "+22",
					color = "FFFFAC62",
					fontSize = 22,
					fontOutlineEnable = true,
					fontOutlineColor = "FF120D23",
					vTextAlign = 1,
					alphaCascade = true,
					colorTL = "FFF6FF65",
					colorTR = "FFF6FF65",
					colorBR = "FFA1FF26",
					colorBL = "FFA1FF26",
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
	gy = {
	},
}
--EDITOR animations end tag
local function create()
return UIUtil.createNode(l_fileType, eleRoot, l_animations)
end
return create
