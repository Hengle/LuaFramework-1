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
			name = "jie",
			posX = 0.5,
			posY = 0.5,
			anchorX = 0.5,
			anchorY = 0.5,
			sizeX = 0.4851562,
			sizeY = 0.09722222,
		},
		children = {
		{
			prop = {
				etype = "RichText",
				name = "mc",
				varName = "desc",
				posX = 0.3398479,
				posY = 0.8014402,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.6184343,
				sizeY = 0.9137024,
				text = "金科状元（豹子点数）",
				color = "FFFFDE42",
				fontSize = 18,
				vTextAlign = 1,
			},
		},
		{
			prop = {
				etype = "Image",
				name = "tb1",
				varName = "dice1",
				posX = 0.05717293,
				posY = 0.3559508,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.05152979,
				sizeY = 0.4571427,
				image = "items6#1",
			},
		},
		{
			prop = {
				etype = "Image",
				name = "tb2",
				varName = "dice2",
				posX = 0.1145216,
				posY = 0.3559508,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.05152979,
				sizeY = 0.4571427,
				image = "items6#longjing",
			},
		},
		{
			prop = {
				etype = "Image",
				name = "tb3",
				varName = "dice3",
				posX = 0.1718703,
				posY = 0.3559508,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.05152979,
				sizeY = 0.4571427,
				image = "items6#longjing",
			},
		},
		{
			prop = {
				etype = "Image",
				name = "tb4",
				varName = "dice4",
				posX = 0.229219,
				posY = 0.3559508,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.05152979,
				sizeY = 0.4571427,
				image = "items6#longjing",
			},
		},
		{
			prop = {
				etype = "Image",
				name = "tb5",
				varName = "dice5",
				posX = 0.2865677,
				posY = 0.3559508,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.05152979,
				sizeY = 0.4571427,
				image = "items6#longjing",
			},
		},
		{
			prop = {
				etype = "Image",
				name = "tb6",
				varName = "dice6",
				posX = 0.3439164,
				posY = 0.3559508,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.05152979,
				sizeY = 0.4571427,
				image = "items6#longjing",
			},
		},
		{
			prop = {
				etype = "Image",
				name = "jt",
				posX = 0.5,
				posY = 0,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 1.011583,
				sizeY = 0.01428572,
				image = "dkyl#xian",
			},
		},
		{
			prop = {
				etype = "Image",
				name = "dj1",
				varName = "item1",
				posX = 0.4809741,
				posY = 0.5,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.1062802,
				sizeY = 0.9428568,
				image = "djk#ktong",
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "djt1",
					varName = "itemIcon1",
					posX = 0.4986858,
					posY = 0.5200127,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.8310284,
					sizeY = 0.8259836,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "sl1",
					varName = "itemCount1",
					posX = 0.5198514,
					posY = 0.1907619,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.7885479,
					sizeY = 0.9109429,
					text = "x100",
					fontSize = 16,
					fontOutlineEnable = true,
					hTextAlign = 2,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Button",
					name = "btn1",
					varName = "itemBtn1",
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
					name = "suo",
					varName = "itemSuo1",
					posX = 0.1880343,
					posY = 0.2287507,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.380385,
					sizeY = 0.3803851,
					image = "tb#suo",
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "dj2",
				varName = "item2",
				posX = 0.5939306,
				posY = 0.4999999,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.1062802,
				sizeY = 0.9428568,
				image = "djk#ktong",
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "djt2",
					varName = "itemIcon2",
					posX = 0.4986858,
					posY = 0.5200127,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.8310284,
					sizeY = 0.8259836,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "sl2",
					varName = "itemCount2",
					posX = 0.5198514,
					posY = 0.1907619,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.7885479,
					sizeY = 0.9109429,
					text = "x100",
					fontSize = 16,
					fontOutlineEnable = true,
					hTextAlign = 2,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Button",
					name = "btn2",
					varName = "itemBtn2",
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
					name = "suo2",
					varName = "itemSuo2",
					posX = 0.1880343,
					posY = 0.2287507,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.380385,
					sizeY = 0.3803851,
					image = "tb#suo",
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "dj3",
				varName = "item3",
				posX = 0.7068871,
				posY = 0.5,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.1062802,
				sizeY = 0.9428568,
				image = "djk#ktong",
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "djt3",
					varName = "itemIcon3",
					posX = 0.4986858,
					posY = 0.5200127,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.8310284,
					sizeY = 0.8259836,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "sl3",
					varName = "itemCount3",
					posX = 0.5198514,
					posY = 0.1907619,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.7885479,
					sizeY = 0.9109429,
					text = "x100",
					fontSize = 16,
					fontOutlineEnable = true,
					hTextAlign = 2,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Button",
					name = "btn3",
					varName = "itemBtn3",
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
					name = "suo3",
					varName = "itemSuo3",
					posX = 0.1880343,
					posY = 0.2287507,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.380385,
					sizeY = 0.3803851,
					image = "tb#suo",
				},
			},
			},
		},
		{
			prop = {
				etype = "Label",
				name = "jlz2",
				varName = "getTimes",
				posX = 0.9709443,
				posY = 0.5000004,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.3606284,
				sizeY = 0.7363986,
				text = "卜中次数:10",
				color = "FF42C7FF",
				fontSize = 16,
				vTextAlign = 1,
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
