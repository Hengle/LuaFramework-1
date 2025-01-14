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
			name = "ysjm",
			posX = 0.5,
			posY = 0.5,
			anchorX = 0.5,
			anchorY = 0.5,
			sizeX = 1,
			sizeY = 1,
			layoutType = 5,
		},
		children = {
		{
			prop = {
				etype = "Image",
				name = "shoucangpin",
				posX = 0.6154346,
				posY = 0.4080302,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.6208553,
				sizeY = 0.7499006,
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
					name = "bja",
					posX = 0.4849305,
					posY = 0.5107388,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.9623114,
					sizeY = 0.9706842,
					image = "b#d2",
					scale9 = true,
					scale9Left = 0.4,
					scale9Right = 0.4,
					scale9Top = 0.4,
					scale9Bottom = 0.4,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "xsk4",
					posX = 0.265969,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.5300565,
					sizeY = 1,
					scale9 = true,
					scale9Left = 0.4,
					scale9Right = 0.4,
					scale9Top = 0.4,
					scale9Bottom = 0.4,
					alpha = 0.5,
				},
				children = {
				{
					prop = {
						etype = "Scroll",
						name = "lb",
						varName = "scroll",
						posX = 1.320052,
						posY = 0.5122984,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9676774,
						sizeY = 0.9479159,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "cdd3",
						posX = 0.4222891,
						posY = 0.5108612,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 1.229723,
						sizeY = 0.6389736,
						image = "d#bt",
						alpha = 0.5,
						rotation = 90,
					},
				},
				},
			},
			{
				prop = {
					etype = "Button",
					name = "seach5",
					varName = "mountBtn",
					posX = 0.2199839,
					posY = 0.1063863,
					anchorX = 0.5,
					anchorY = 0.5,
					lockHV = true,
					sizeX = 0.218952,
					sizeY = 0.1222384,
					image = "chu1#an1",
					imageNormal = "chu1#an1",
					soundEffectClick = "audio/rxjh/UI/anniu.ogg",
				},
				children = {
				{
					prop = {
						etype = "Label",
						name = "wz5",
						varName = "mountLabel",
						posX = 0.4927007,
						posY = 0.5454545,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8551134,
						sizeY = 0.8344491,
						text = "装 裱",
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
					name = "xsk3",
					posX = 0.2199839,
					posY = 0.6988235,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.4318911,
					sizeY = 0.5037705,
					scale9 = true,
					scale9Top = 0.4,
					scale9Bottom = 0.4,
					alpha = 0.5,
				},
				children = {
				{
					prop = {
						etype = "RichText",
						name = "js",
						varName = "descLabel",
						posX = 0.4999999,
						posY = 0.537789,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8541375,
						sizeY = 0.568953,
						text = "介绍写在这",
						color = "FF966856",
						fontSize = 22,
					},
				},
				{
					prop = {
						etype = "RichText",
						name = "bzm9",
						varName = "fromLabel",
						posX = 0.5261205,
						posY = 0.1656269,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9062207,
						sizeY = 0.2126605,
						text = "来自藏宝图：一二三四五六",
						color = "FFC93034",
						fontSize = 22,
						vTextAlign = 1,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "xian",
						posX = 0.2293066,
						posY = 0.9286885,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.342968,
						sizeY = 0.1838235,
						image = "hd#cbttop",
						scale9 = true,
						scale9Left = 0.45,
						scale9Right = 0.45,
					},
					children = {
					{
						prop = {
							etype = "Label",
							name = "bzm7",
							posX = 0.8549863,
							posY = 0.5940624,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 1.528278,
							sizeY = 0.8268517,
							text = "藏品描述",
							color = "FFF1E9D7",
							vTextAlign = 1,
						},
					},
					},
				},
				{
					prop = {
						etype = "Image",
						name = "fgt",
						posX = 0.75,
						posY = 0.08157125,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.4166404,
						sizeY = 0.05147059,
						image = "d2#fgt",
					},
				},
				{
					prop = {
						etype = "Image",
						name = "fgt2",
						posX = 0.25,
						posY = 0.08157125,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.4166404,
						sizeY = 0.05147059,
						image = "d2#fgt",
						flippedX = true,
					},
				},
				},
			},
			{
				prop = {
					etype = "Image",
					name = "xsk5",
					posX = 0.2199838,
					posY = 0.3037152,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.396984,
					sizeY = 0.2052459,
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
						name = "sxd1",
						varName = "attrRoot1",
						posX = 0.5,
						posY = 0.7042475,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8988439,
						sizeY = 0.3104562,
						scale9 = true,
						scale9Left = 0.2,
						scale9Right = 0.6,
					},
					children = {
					{
						prop = {
							etype = "Label",
							name = "sx1",
							varName = "attrNameLabel1",
							posX = 0.2188797,
							posY = 0.2065872,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2869182,
							sizeY = 1,
							text = "气血",
							color = "FF966856",
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "sx2",
							varName = "attrValueLabel1",
							posX = 0.5322608,
							posY = 0.2065872,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2869182,
							sizeY = 1,
							text = "1600",
							color = "FFF1E9D7",
							fontOutlineEnable = true,
							fontOutlineColor = "FFA47848",
							fontOutlineSize = 2,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "sx3",
							varName = "addLabel1",
							posX = 0.8367084,
							posY = 0.2065872,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2869182,
							sizeY = 1,
							text = "+1600",
							color = "FF76D646",
							fontOutlineEnable = true,
							fontOutlineColor = "FF5B7838",
							fontOutlineSize = 2,
							vTextAlign = 1,
						},
					},
					},
				},
				{
					prop = {
						etype = "Image",
						name = "sxd2",
						varName = "attrRoot2",
						posX = 0.5,
						posY = 0.2875826,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8988439,
						sizeY = 0.3104562,
						scale9 = true,
						scale9Left = 0.2,
						scale9Right = 0.6,
					},
					children = {
					{
						prop = {
							etype = "Label",
							name = "sx4",
							varName = "attrNameLabel2",
							posX = 0.2188797,
							posY = 0.4100509,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2869182,
							sizeY = 1,
							text = "气血气血:",
							color = "FF966856",
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "sx5",
							varName = "attrValueLabel2",
							posX = 0.5322606,
							posY = 0.4100509,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2869182,
							sizeY = 1,
							text = "1600",
							color = "FFF1E9D7",
							fontOutlineEnable = true,
							fontOutlineColor = "FFA47848",
							fontOutlineSize = 2,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "sx6",
							varName = "addLabel2",
							posX = 0.8367084,
							posY = 0.4100509,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2869182,
							sizeY = 1,
							text = "+1600",
							color = "FF76D646",
							fontOutlineEnable = true,
							fontOutlineColor = "FF5B7838",
							fontOutlineSize = 2,
							vTextAlign = 1,
						},
					},
					},
				},
				{
					prop = {
						etype = "Image",
						name = "xian2",
						posX = 0.5,
						posY = 1,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.5895757,
						sizeY = 0.3248567,
						image = "chu1#top2",
						scale9Left = 0.45,
						scale9Right = 0.45,
					},
					children = {
					{
						prop = {
							etype = "Label",
							name = "bzm8",
							posX = 0.5,
							posY = 0.5,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.7843062,
							sizeY = 1.201316,
							text = "藏品属性",
							color = "FFF1E9D7",
							fontOutlineEnable = true,
							fontOutlineColor = "FFA47848",
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
						name = "xad",
						posX = 0.5,
						posY = 0.4368334,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9,
						sizeY = 0.0180476,
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
					etype = "Image",
					name = "topz5",
					posX = 0.1790435,
					posY = 1.053062,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.3510783,
					sizeY = 0.09430242,
					image = "chu1#zld",
					scale9 = true,
					scale9Left = 0.4,
					scale9Right = 0.4,
				},
				children = {
				{
					prop = {
						etype = "Label",
						name = "bzm11",
						varName = "nameLabel",
						posX = 0.5000001,
						posY = 0.5200014,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9993613,
						sizeY = 1,
						text = "什么类型的宝藏",
						color = "FF966856",
						fontSize = 22,
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "xx21",
						varName = "star1",
						posX = 0.6476565,
						posY = -0.8780879,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.1362007,
						sizeY = 0.7463191,
						image = "ty#xx",
					},
				},
				{
					prop = {
						etype = "Image",
						name = "xx22",
						varName = "star2",
						posX = 0.7761191,
						posY = -0.8780871,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.1362007,
						sizeY = 0.7463191,
						image = "ty#xx",
					},
				},
				{
					prop = {
						etype = "Image",
						name = "xx23",
						varName = "star3",
						posX = 0.9045817,
						posY = -0.878087,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.1362007,
						sizeY = 0.7463191,
						image = "ty#xx",
					},
				},
				{
					prop = {
						etype = "Image",
						name = "xx24",
						posX = 0.7761192,
						posY = -0.8780866,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.1362007,
						sizeY = 0.7463191,
						image = "ty#xx",
						alpha = 0.3,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "xx25",
						posX = 0.9045818,
						posY = -0.8780869,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.1362007,
						sizeY = 0.7463191,
						image = "ty#xx",
						alpha = 0.3,
					},
				},
				},
			},
			{
				prop = {
					etype = "Grid",
					name = "tsk",
					varName = "edgeRoot",
					posX = 0.2218076,
					posY = 0.113409,
					anchorX = 0.5,
					anchorY = 0.5,
					visible = false,
					sizeX = 0.4357793,
					sizeY = 0.1723259,
				},
				children = {
				{
					prop = {
						etype = "Button",
						name = "seach6",
						varName = "edgeBtn",
						posX = 0.5000001,
						posY = 0.3817763,
						anchorX = 0.5,
						anchorY = 0.5,
						lockHV = true,
						sizeX = 0.4567616,
						sizeY = 0.6448587,
						image = "chu1#an1",
						imageNormal = "chu1#an1",
						soundEffectClick = "audio/rxjh/UI/anniu.ogg",
					},
					children = {
					{
						prop = {
							etype = "Label",
							name = "wz6",
							varName = "edgeLabel",
							posX = 0.4927007,
							posY = 0.5454545,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.8551134,
							sizeY = 0.8344491,
							text = "镶 边",
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
						etype = "RichText",
						name = "tsz",
						varName = "des",
						posX = 0.5000001,
						posY = 0.8490178,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9844981,
						sizeY = 0.6893806,
						text = "条件文字写在这里",
						color = "FFC93034",
						fontSize = 18,
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				},
			},
			},
		},
		{
			prop = {
				etype = "Grid",
				name = "btk",
				posX = 0.5962844,
				posY = 0.8279642,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.6325543,
				sizeY = 0.0928467,
			},
			children = {
			{
				prop = {
					etype = "Button",
					name = "an1",
					varName = "chipBtn",
					posX = 0.4830182,
					posY = 0.4316705,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1902011,
					sizeY = 0.8676189,
					image = "chu1#fy1",
					imageNormal = "chu1#fy1",
					imagePressed = "chu1#fy2",
					imageDisable = "chu1#fy1",
					disablePressScale = true,
					soundEffectClick = "audio/rxjh/UI/anniu.ogg",
				},
				children = {
				{
					prop = {
						etype = "Label",
						name = "btz1",
						posX = 0.5,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9583492,
						sizeY = 0.7881951,
						text = "秘宝线索",
						color = "FF966856",
						fontSize = 24,
						fontOutlineColor = "FF51361C",
						fontOutlineSize = 2,
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				},
			},
			{
				prop = {
					etype = "Button",
					name = "an2",
					varName = "collectionBtn",
					posX = 0.8753029,
					posY = 0.4316703,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1902011,
					sizeY = 0.8676189,
					image = "chu1#fy1",
					imageNormal = "chu1#fy1",
					imagePressed = "chu1#fy2",
					imageDisable = "chu1#fy1",
					disablePressScale = true,
					soundEffectClick = "audio/rxjh/UI/anniu.ogg",
				},
				children = {
				{
					prop = {
						etype = "Label",
						name = "btz2",
						posX = 0.5,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9583492,
						sizeY = 0.7881951,
						text = "收藏品",
						color = "FF966856",
						fontSize = 24,
						fontOutlineColor = "FF51361C",
						fontOutlineSize = 2,
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				},
			},
			{
				prop = {
					etype = "Button",
					name = "an3",
					varName = "findBtn",
					posX = 0.6791607,
					posY = 0.4316705,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1902011,
					sizeY = 0.8676189,
					image = "chu1#fy1",
					imageNormal = "chu1#fy1",
					imagePressed = "chu1#fy2",
					imageDisable = "chu1#fy1",
					disablePressScale = true,
					soundEffectClick = "audio/rxjh/UI/anniu.ogg",
				},
				children = {
				{
					prop = {
						etype = "Label",
						name = "btz3",
						posX = 0.5,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9583492,
						sizeY = 0.7881951,
						text = "寻 宝",
						color = "FF966856",
						fontSize = 24,
						fontOutlineColor = "FF51361C",
						fontOutlineSize = 2,
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				},
			},
			},
		},
		{
			prop = {
				etype = "Button",
				name = "bz",
				varName = "helpBtn",
				posX = 0.9346238,
				posY = 0.1075652,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.05,
				sizeY = 0.0875,
				image = "tong#bz",
				imageNormal = "tong#bz",
				disablePressScale = true,
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
