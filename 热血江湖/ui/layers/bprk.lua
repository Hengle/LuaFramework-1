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
			scale9Left = 0.3,
			scale9Right = 0.3,
			scale9Top = 0.3,
			scale9Bottom = 0.3,
			alpha = 0.8,
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
			sizeX = 0.88,
			sizeY = 0.98,
		},
		children = {
		{
			prop = {
				etype = "Button",
				name = "a1",
				varName = "join",
				posX = 0.3148604,
				posY = 0.1123712,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.1447088,
				sizeY = 0.09070294,
				image = "chu1#an2",
				alpha = 0,
				alphaCascade = true,
				imageNormal = "chu1#an2",
				soundEffectClick = "audio/rxjh/UI/anniu.ogg",
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "z1",
					posX = 0.5,
					posY = 0.546875,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.101596,
					sizeY = 1.123373,
					text = "加入帮派",
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
				etype = "Button",
				name = "a2",
				varName = "create",
				posX = 0.682687,
				posY = 0.1123712,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.1447088,
				sizeY = 0.09070294,
				image = "chu1#an1",
				alpha = 0,
				alphaCascade = true,
				imageNormal = "chu1#an1",
				soundEffectClick = "audio/rxjh/UI/anniu.ogg",
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "z2",
					posX = 0.5,
					posY = 0.546875,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.101596,
					sizeY = 1.123373,
					text = "创建帮派",
					fontSize = 26,
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
				name = "kp1",
				posX = 0.1538344,
				posY = 0.5445674,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.280079,
				sizeY = 0.629634,
				alpha = 0,
				alphaCascade = true,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "dt3",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.242547,
					sizeY = 1.062418,
					image = "kp#kp",
					scale9Left = 0.3,
					scale9Right = 0.3,
					scale9Top = 0.3,
					scale9Bottom = 0.3,
					alphaCascade = true,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "bt1",
						posX = 0.5,
						posY = 0.861886,
						anchorX = 0.5,
						anchorY = 0.5,
						lockHV = true,
						sizeX = 0.2704082,
						sizeY = 0.05296608,
						image = "ka#fbtx1",
					},
				},
				{
					prop = {
						etype = "Label",
						name = "sm1",
						posX = 0.5,
						posY = 0.3445642,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.5488769,
						sizeY = 0.2615141,
						text = "副本秘境，斩获奇宝。寻幽觅险，其乐无穷。行侠仗义，替天行道。",
						color = "FF966856",
						fontSize = 22,
						fontOutlineColor = "FF00152E",
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "tp",
						posX = 0.5,
						posY = 0.6312841,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.4770409,
						sizeY = 0.3983049,
						image = "ka#ka_fbtx.png",
					},
				},
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "kp2",
				posX = 0.5124292,
				posY = 0.5445674,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.280079,
				sizeY = 0.629634,
				alpha = 0,
				alphaCascade = true,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "dt6",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.242547,
					sizeY = 1.062418,
					image = "kp#kp",
					scale9Left = 0.3,
					scale9Right = 0.3,
					scale9Top = 0.3,
					scale9Bottom = 0.3,
					alphaCascade = true,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "bt2",
						posX = 0.5,
						posY = 0.861886,
						anchorX = 0.5,
						anchorY = 0.5,
						lockHV = true,
						sizeX = 0.2678572,
						sizeY = 0.05084743,
						image = "ka#bpzb1",
					},
				},
				{
					prop = {
						etype = "Label",
						name = "sm2",
						posX = 0.5,
						posY = 0.3445642,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.5488769,
						sizeY = 0.2615141,
						text = "群龙无首，逐鹿中原。兄弟齐心，众志成城。独霸江湖，谁与争锋。",
						color = "FF966856",
						fontSize = 22,
						fontOutlineColor = "FF00152E",
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "tp2",
						posX = 0.5,
						posY = 0.6312841,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.4770409,
						sizeY = 0.3983049,
						image = "ka#bpzb",
					},
				},
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "kp3",
				posX = 0.871024,
				posY = 0.5445675,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.280079,
				sizeY = 0.629634,
				alpha = 0,
				alphaCascade = true,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "dt9",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.242547,
					sizeY = 1.062418,
					image = "kp#kp",
					scale9Left = 0.3,
					scale9Right = 0.3,
					scale9Top = 0.3,
					scale9Bottom = 0.3,
					alphaCascade = true,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "bt3",
						posX = 0.5,
						posY = 0.861886,
						anchorX = 0.5,
						anchorY = 0.5,
						lockHV = true,
						sizeX = 0.2678572,
						sizeY = 0.05084743,
						image = "ka#bxtx1",
					},
				},
				{
					prop = {
						etype = "Label",
						name = "sm3",
						posX = 0.5,
						posY = 0.3445642,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.5488769,
						sizeY = 0.2615141,
						text = "镖行天下，富甲一方。腰缠万贵，骑鹤扬州。挥金如土，一掷千金。",
						color = "FF966856",
						fontSize = 22,
						fontOutlineColor = "FF00152E",
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "tp3",
						posX = 0.5,
						posY = 0.6312841,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.4770409,
						sizeY = 0.3983049,
						image = "ka#ka_bxtx.png",
					},
				},
				},
			},
			},
		},
		{
			prop = {
				etype = "Label",
				name = "tj1",
				varName = "join_faction",
				posX = 0.3148604,
				posY = 0.04368807,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.242383,
				sizeY = 0.1004589,
				text = "Lv15级开放",
				color = "FFC93034",
				fontSize = 24,
				hTextAlign = 1,
				vTextAlign = 1,
				alpha = 0,
			},
		},
		{
			prop = {
				etype = "Label",
				name = "tj2",
				varName = "create_faction",
				posX = 0.682687,
				posY = 0.04368807,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.242383,
				sizeY = 0.1004589,
				text = "Lv20级开放",
				color = "FFC93034",
				fontSize = 24,
				hTextAlign = 1,
				vTextAlign = 1,
				alpha = 0,
			},
		},
		},
	},
	{
		prop = {
			etype = "Grid",
			name = "das",
			posX = 0.5,
			posY = 0.9194159,
			anchorX = 0.5,
			anchorY = 0.5,
			sizeX = 1,
			sizeY = 0.1544992,
			layoutType = 9,
			layoutTypeW = 9,
		},
		children = {
		{
			prop = {
				etype = "Button",
				name = "ht",
				varName = "closeBtn",
				posX = 0.9624786,
				posY = 0.6411617,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.05234375,
				sizeY = 0.683211,
				image = "chu1#gb",
				alpha = 0,
				imageNormal = "chu1#gb",
				soundEffectClick = "audio/rxjh/UI/ui_guanbi.ogg",
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
	kp1 = {
		kp1 = {
			scale = {{0, {0, 0, 1}}, {150, {1.1, 1.1, 1}}, {200, {1,1,1}}, },
			alpha = {{0, {1}}, },
		},
	},
	kp2 = {
		kp2 = {
			scale = {{0, {0, 0, 1}}, {100, {1.1, 1.1, 1}}, {200, {1,1,1}}, },
			alpha = {{0, {1}}, },
		},
	},
	kp3 = {
		kp3 = {
			scale = {{0, {0, 0, 1}}, {100, {1.1, 1.1, 1}}, {200, {1,1,1}}, },
			alpha = {{0, {1}}, },
		},
	},
	jr = {
		a1 = {
			alpha = {{0, {0}}, {200, {1}}, },
		},
	},
	cj = {
		a2 = {
			alpha = {{0, {0}}, {200, {1}}, },
		},
		ht = {
			alpha = {{0, {0}}, {200, {1}}, },
		},
	},
	tj1 = {
		tj1 = {
			alpha = {{0, {0}}, {200, {1}}, },
		},
	},
	tj2 = {
		tj2 = {
			alpha = {{0, {0}}, {200, {1}}, },
		},
	},
	c_dakai = {
		{0,"kp1", 1, 0},
		{0,"kp2", 1, 100},
		{0,"kp3", 1, 200},
		{0,"jr", 1, 400},
		{0,"cj", 1, 400},
		{0,"tj1", 1, 500},
		{0,"tj2", 1, 500},
	},
}
--EDITOR animations end tag
local function create()
return UIUtil.createNode(l_fileType, eleRoot, l_animations)
end
return create
