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
			name = "jd",
			varName = "bossRoot",
			posX = 0.5,
			posY = 0.35,
			anchorX = 0.5,
			anchorY = 0.5,
			sizeX = 1,
			sizeY = 0.7,
			layoutType = 3,
			layoutTypeW = 3,
		},
		children = {
		{
			prop = {
				etype = "Image",
				name = "dt",
				varName = "findRoot",
				posX = 0.4150329,
				posY = 0.3331537,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.3884243,
				sizeY = 0.1958064,
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
					name = "ltk",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1,
					sizeY = 1.207377,
					image = "zd#ltd",
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
					name = "xt",
					varName = "bloodIcon",
					posX = 0.5241215,
					posY = 0.3078944,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.6637394,
					sizeY = 0.2229283,
					image = "jlgc#jdd",
					scale9Left = 0.4,
					scale9Right = 0.4,
				},
				children = {
				{
					prop = {
						etype = "LoadingBar",
						name = "jdt",
						varName = "bloodBar",
						posX = 0.5121212,
						posY = 0.5000001,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9393939,
						sizeY = 0.6363637,
						image = "jlgc#jdt",
					},
				},
				{
					prop = {
						etype = "Image",
						name = "caol1",
						varName = "redPoint3",
						posX = 0.3786012,
						posY = 0.4521185,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.07398567,
						sizeY = 1.476191,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "caol2",
						varName = "redPoint2",
						posX = 0.6167713,
						posY = 0.4521183,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.07398567,
						sizeY = 1.476191,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "caol3",
						varName = "redPoint1",
						posX = 0.8382351,
						posY = 0.4521183,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.07398567,
						sizeY = 1.476191,
					},
				},
				},
			},
			{
				prop = {
					etype = "Image",
					name = "txd",
					posX = 0.1345815,
					posY = 0.5709172,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1769972,
					sizeY = 0.8917133,
					image = "jlgc#txd",
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "tx",
						varName = "bossHead",
						posX = 0.5,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						lockHV = true,
						sizeX = 0.7930151,
						sizeY = 0.7930148,
					},
				},
				},
			},
			{
				prop = {
					etype = "Grid",
					name = "jd1",
					varName = "lotto1",
					posX = 0.768948,
					posY = 0.8745421,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1753741,
					sizeY = 0.8996857,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "yb1",
						varName = "icon1",
						posX = 0.5,
						posY = 0.4324223,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.6881284,
						sizeY = 0.6757764,
						image = "tb#yuanbao",
					},
					children = {
					{
						prop = {
							etype = "Image",
							name = "suo",
							varName = "lock1",
							posX = 0.6247223,
							posY = 0.3128136,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.4375,
							sizeY = 0.4375,
							image = "tb#suo",
						},
					},
					},
				},
				{
					prop = {
						etype = "Label",
						name = "slz1",
						varName = "count1",
						posX = 0.4885315,
						posY = 0.07200868,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8832127,
						sizeY = 0.806141,
						text = "x1",
						fontSize = 18,
						fontOutlineEnable = true,
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				{
					prop = {
						etype = "Label",
						name = "bh1",
						varName = "number1",
						posX = 0.5,
						posY = 0.4246626,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8832127,
						sizeY = 0.806141,
						text = "?",
						fontSize = 22,
						fontOutlineEnable = true,
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				},
			},
			{
				prop = {
					etype = "Grid",
					name = "jd2",
					varName = "lotto2",
					posX = 0.5943778,
					posY = 0.8745421,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1753741,
					sizeY = 0.8996857,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "yb2",
						varName = "icon2",
						posX = 0.5,
						posY = 0.4324223,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.6881284,
						sizeY = 0.6757764,
						image = "tb#yuanbao",
					},
					children = {
					{
						prop = {
							etype = "Image",
							name = "suo2",
							varName = "lock2",
							posX = 0.6247223,
							posY = 0.3128136,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.4375,
							sizeY = 0.4375,
							image = "tb#suo",
						},
					},
					},
				},
				{
					prop = {
						etype = "Label",
						name = "slz2",
						varName = "count2",
						posX = 0.4885315,
						posY = 0.07200868,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8832127,
						sizeY = 0.806141,
						text = "x1",
						fontSize = 18,
						fontOutlineEnable = true,
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				{
					prop = {
						etype = "Label",
						name = "bh2",
						varName = "number2",
						posX = 0.5,
						posY = 0.4246626,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8832127,
						sizeY = 0.806141,
						text = "?",
						fontSize = 22,
						fontOutlineEnable = true,
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				},
			},
			{
				prop = {
					etype = "Grid",
					name = "jd3",
					varName = "lotto3",
					posX = 0.4097508,
					posY = 0.8745421,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1753741,
					sizeY = 0.8996857,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "yb3",
						varName = "icon3",
						posX = 0.5,
						posY = 0.4324223,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.6881284,
						sizeY = 0.6757764,
						image = "tb#yuanbao",
					},
					children = {
					{
						prop = {
							etype = "Image",
							name = "suo3",
							varName = "lock3",
							posX = 0.6247223,
							posY = 0.3128136,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.4375,
							sizeY = 0.4375,
							image = "tb#suo",
						},
					},
					},
				},
				{
					prop = {
						etype = "Label",
						name = "slz3",
						varName = "count3",
						posX = 0.4885315,
						posY = 0.07200868,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8832127,
						sizeY = 0.806141,
						text = "x1",
						fontSize = 18,
						fontOutlineEnable = true,
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				{
					prop = {
						etype = "Label",
						name = "bh3",
						varName = "number3",
						posX = 0.5,
						posY = 0.4246626,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.8832127,
						sizeY = 0.806141,
						text = "?",
						fontSize = 22,
						fontOutlineEnable = true,
						hTextAlign = 1,
						vTextAlign = 1,
					},
				},
				},
			},
			{
				prop = {
					etype = "Grid",
					name = "dhjd",
					varName = "baozha",
					posX = 0.768948,
					posY = 0.8745421,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1753741,
					sizeY = 0.8996857,
				},
				children = {
				{
					prop = {
						etype = "Image",
						name = "bao1",
						posX = 0.5,
						posY = 0.421286,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 1.720321,
						sizeY = 1.689441,
						image = "uieffect/xinjia021.png",
						alpha = 0,
						blendFunc = 1,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "bao2",
						posX = 0.5,
						posY = 0.421286,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.5734403,
						sizeY = 0.563147,
						image = "uieffect/png_10218waihuanguangquan.png",
						alpha = 0,
						blendFunc = 1,
					},
				},
				{
					prop = {
						etype = "Image",
						name = "bao3",
						posX = 0.5,
						posY = 0.421286,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.6881284,
						sizeY = 0.6757764,
						image = "uieffect/guang2.png",
						alpha = 0,
						blendFunc = 1,
					},
				},
				{
					prop = {
						etype = "Particle",
						name = "lizi01",
						sizeXAB = 52.31583,
						sizeYAB = 22.19669,
						posXAB = 41.59908,
						posYAB = 18.43782,
						posX = 0.4770918,
						posY = 0.2076641,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.6,
						sizeY = 0.25,
						angle = 90,
						duration = 0.8,
						emitterType = 0,
						finishParticleSize = 0,
						startParticleSize = 30,
						startParticleSizeVariance = 20,
						maxParticles = 15,
						particleLifespan = 0.6,
						particleLifespanVariance = 0.1,
						sourcePositionVariancex = 30,
						sourcePositionVariancey = 30,
						sourcePositionx = 30,
						sourcePositiony = 30,
						speed = 20,
						speedVariance = 18,
						startColorBlue = 1,
						startColorGreen = 1,
						startColorRed = 1,
						textureFileName = "uieffect/lizi041161121.png",
					},
				},
				{
					prop = {
						etype = "Particle",
						name = "lizi2",
						sizeXAB = 52.31583,
						sizeYAB = 22.19669,
						posXAB = 73.54745,
						posYAB = 48.38763,
						posX = 0.8435013,
						posY = 0.544987,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.6,
						sizeY = 0.25,
						angle = 360,
						angleVariance = 360,
						duration = 0.2,
						emitterType = 0,
						emissionRate = 1000,
						rotationIsDir = true,
						finishColorBlue = 0,
						finishColorGreen = 0.5019608,
						finishParticleSize = 0,
						startParticleSize = 60,
						startParticleSizeVariance = 40,
						maxParticles = 8,
						particleLifespan = 0.5,
						particleLifespanVariance = 0.1,
						speed = 250,
						speedVariance = 150,
						startColorBlue = 0.7529412,
						startColorGreen = 1,
						startColorRed = 1,
						textureFileName = "uieffect/guang06.png",
					},
				},
				{
					prop = {
						etype = "Image",
						name = "bao4",
						posX = 0.5,
						posY = 0.421286,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 1.146881,
						sizeY = 1.126294,
						image = "uieffect/shanguang_00058.png",
						alpha = 0,
						blendFunc = 1,
					},
				},
				},
			},
			{
				prop = {
					etype = "Label",
					name = "xl",
					posX = 0.5,
					posY = 0.04862249,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.6171408,
					sizeY = 0.545791,
					text = "巨灵血量",
					hTextAlign = 1,
					vTextAlign = 1,
				},
			},
			{
				prop = {
					etype = "Label",
					name = "xl2",
					varName = "bossCount",
					posX = 0.3209943,
					posY = 0.04862249,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.6171408,
					sizeY = 0.545791,
					text = "(1/7)",
					vTextAlign = 1,
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "buffd",
				varName = "buffBg",
				posX = 0.5881438,
				posY = 0.2659176,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.03125,
				sizeY = 0.0755858,
				image = "jlgc#dk",
				alphaCascade = true,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "bufft",
					varName = "buffIcon",
					posX = 0.5062612,
					posY = 0.4873418,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.875,
					sizeY = 0.9187499,
					image = "jlgc#suiji",
				},
			},
			},
		},
		{
			prop = {
				etype = "Grid",
				name = "Jineng",
				posX = 0.5,
				posY = 0.5,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 1,
				sizeY = 0.9980159,
			},
			children = {
			{
				prop = {
					etype = "FrameAni",
					name = "tu1",
					sizeXAB = 35,
					sizeYAB = 34.93056,
					posXAB = 752.8152,
					posYAB = 133.1073,
					posX = 0.5881369,
					posY = 0.2646268,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.02734375,
					sizeY = 0.06944445,
					alpha = 0,
					alphaCascade = true,
					frameEnd = 8,
					frameName = "uieffect/jineng.png",
					delay = 0.1,
					frameWidth = 64,
					frameHeight = 64,
					column = 4,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "tu5",
					posX = 0.5874991,
					posY = 0.2673189,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.078125,
					sizeY = 0.1388889,
					image = "uieffect/kuosang013.png",
					alpha = 0,
					blendFunc = 1,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "tu2",
					posX = 0.5890602,
					posY = 0.2693025,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.1992188,
					sizeY = 0.5079365,
					image = "uieffect/guangyun030.png",
					alpha = 0,
					blendFunc = 1,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "tu7",
					posX = 0.5890602,
					posY = 0.2693025,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.078125,
					sizeY = 0.1988072,
					image = "uieffect/004guangyun.png",
					alpha = 0,
					blendFunc = 1,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "tu3",
					posX = 0.5890602,
					posY = 0.2693025,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.15625,
					sizeY = 0.3769841,
					image = "uieffect/028_guangyun.png",
					alpha = 0,
					blendFunc = 1,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "tu4",
					posX = 0.5890602,
					posY = 0.2693025,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.078125,
					sizeY = 0.1587302,
					image = "uieffect/shanguang_000581.png",
					alpha = 0,
					blendFunc = 1,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "tu6",
					posX = 0.5886964,
					posY = 0.2657309,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.0625,
					sizeY = 0.1587302,
					image = "uieffect/barbarian_revenge_buttonFX.png",
					alpha = 0,
					blendFunc = 1,
				},
			},
			{
				prop = {
					etype = "Particle",
					name = "lizi3",
					sizeXAB = 768,
					sizeYAB = 125.75,
					posXAB = 1096.654,
					posYAB = 151.5724,
					posX = 0.8567607,
					posY = 0.3013367,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.6,
					sizeY = 0.25,
					angle = 360,
					angleVariance = 180,
					duration = 0.8,
					emitterType = 0,
					finishColorAlpha = 0,
					rotationStart = -1,
					rotationStartVariance = -1,
					finishParticleSize = 0,
					startParticleSize = 100,
					startParticleSizeVariance = 80,
					maxParticles = 15,
					particleLifespan = 0.6,
					particleLifespanVariance = 0.1,
					sourcePositionVariancex = 50,
					sourcePositionVariancey = 50,
					sourcePositionx = 50,
					sourcePositiony = 50,
					speed = 10,
					speedVariance = 10,
					startColorBlue = 1,
					startColorGreen = 1,
					startColorRed = 1,
					textureFileName = "uieffect/d3gd.png",
				},
			},
			{
				prop = {
					etype = "Particle",
					name = "lizi4",
					sizeXAB = 37.16381,
					sizeYAB = 37.43502,
					posXAB = 752.2018,
					posYAB = 133.3213,
					posX = 0.5876577,
					posY = 0.2650523,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.02903423,
					sizeY = 0.07442351,
					angle = 0,
					duration = 0.9,
					emitterType = 2,
					rotationIsDir = true,
					cwRectangle = true,
					rotationStart = -1,
					rotationStartVariance = -1,
					finishParticleSize = 30,
					finishParticleSizeVariance = 20,
					startParticleSize = 10,
					startParticleSizeVariance = 5,
					maxParticles = 20,
					particleLifespan = 0.6,
					particleLifespanVariance = 0.1,
					speed = 200,
					speedVariance = 50,
					startColorBlue = 1,
					startColorGreen = 1,
					startColorRed = 1,
					textureFileName = "uieffect/lizi041161121.png",
				},
			},
			},
		},
		{
			prop = {
				etype = "Image",
				name = "sda",
				posX = 0.5366578,
				posY = 1.337909,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.6,
				sizeY = 0.25,
				image = "uieffect/guangyun030.png",
				alpha = 0,
				blendFunc = 1,
			},
		},
		},
	},
	{
		prop = {
			etype = "Grid",
			name = "jd4",
			posX = 0.1755276,
			posY = 0.6261908,
			anchorX = 0.5,
			anchorY = 0.5,
			sizeX = 0.35,
			sizeY = 0.75,
			layoutType = 7,
			layoutTypeW = 7,
		},
		children = {
		{
			prop = {
				etype = "Grid",
				name = "dyjd",
				varName = "teamRoot",
				posX = 0.5,
				posY = 0.5,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 1,
				sizeY = 1,
				layoutType = 7,
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "gg",
					posX = 0.3186943,
					posY = 0.3882788,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.6122284,
					sizeY = 0.4865296,
					image = "b#rwd",
					scale9 = true,
					scale9Left = 0.4,
					scale9Right = 0.4,
					scale9Top = 0.4,
					scale9Bottom = 0.4,
				},
				children = {
				{
					prop = {
						etype = "Scroll",
						name = "rwlb",
						varName = "scroll",
						posX = 0.4982125,
						posY = 0.5181502,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 0.9744787,
						sizeY = 0.6790465,
						showScrollBar = false,
					},
				},
				{
					prop = {
						etype = "Grid",
						name = "d2",
						posX = 0.5230163,
						posY = 0.9172876,
						anchorX = 0.5,
						anchorY = 0.5,
						lockHV = true,
						sizeX = 1.037395,
						sizeY = 0.1808855,
					},
					children = {
					{
						prop = {
							etype = "Label",
							name = "djs4",
							varName = "time_label2",
							posX = 0.1607125,
							posY = 0.5319111,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.2573819,
							sizeY = 1.35981,
							text = "排名",
							color = "FFFFFF00",
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "djs5",
							posX = 0.3926642,
							posY = 0.5319115,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.4798522,
							sizeY = 1.35981,
							text = "名字",
							color = "FFFFFF00",
							hTextAlign = 1,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "djs6",
							posX = 0.8217534,
							posY = 0.5319115,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.32365,
							sizeY = 1.35981,
							text = "伤害",
							color = "FFFFFF00",
							hTextAlign = 1,
							vTextAlign = 1,
						},
					},
					},
				},
				{
					prop = {
						etype = "Grid",
						name = "d3",
						posX = 0.5230163,
						posY = 0.07231874,
						anchorX = 0.5,
						anchorY = 0.5,
						lockHV = true,
						sizeX = 1.037395,
						sizeY = 0.1808855,
					},
					children = {
					{
						prop = {
							etype = "Label",
							name = "djs7",
							varName = "time_label3",
							posX = 0.209943,
							posY = 0.5319111,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.3558429,
							sizeY = 1.35981,
							text = "我的伤害：",
							fontSize = 18,
							vTextAlign = 1,
						},
					},
					{
						prop = {
							etype = "Label",
							name = "djs9",
							varName = "selfDamage",
							posX = 0.6594026,
							posY = 0.5528992,
							anchorX = 0.5,
							anchorY = 0.5,
							sizeX = 0.5922006,
							sizeY = 1.35981,
							text = "伤害",
							fontSize = 18,
							hTextAlign = 1,
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
	},
	{
		prop = {
			etype = "Grid",
			name = "js",
			varName = "endTips",
			posX = 0.5,
			posY = 0.7163151,
			anchorX = 0.5,
			anchorY = 0.5,
			visible = false,
			sizeX = 0.6158864,
			sizeY = 0.5631685,
			layoutType = 5,
			layoutTypeW = 5,
		},
		children = {
		{
			prop = {
				etype = "Image",
				name = "tips",
				posX = 0.5,
				posY = 0.6208438,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.832134,
				sizeY = 0.1529047,
				image = "d#tst",
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "tsz",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.8767938,
					sizeY = 1.559474,
					text = "所有巨灵已全部被击杀，活动已结束。",
					color = "FFFFFF00",
					fontSize = 22,
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
	chu = {
		dyjd = {
			moveP = {{0, {-0.3, 0.5, 0}}, {300, {0.5, 0.5, 0}}, },
		},
	},
	ru = {
		dyjd = {
			moveP = {{0, {0.5, 0.5, 0}}, {200, {-0.3, 0.5, 0}}, },
		},
	},
	tu1 = {
		tu1 = {
			alpha = {{0, {1}}, {1450, {1}}, {1500, {0}}, },
		},
	},
	bao1 = {
		bao1 = {
			scale = {{0, {3, 3, 1}}, {100, {4, 4, 1}}, },
			alpha = {{0, {1}}, {50, {1}}, {100, {0}}, },
		},
	},
	bao2 = {
		bao2 = {
			scale = {{0, {0, 0, 1}}, {150, {10, 10, 1}}, },
			alpha = {{0, {1}}, {100, {0}}, },
		},
		bao3 = {
			scale = {{0, {2, 2, 1}}, {800, {3, 3, 1}}, },
			alpha = {{0, {1}}, {800, {0}}, },
		},
	},
	bao3 = {
		bao4 = {
			scale = {{0, {1,1,1}}, {400, {3, 3, 1}}, },
			alpha = {{0, {1}}, {400, {0}}, },
		},
	},
	tu2 = {
		tu2 = {
			scale = {{0, {0, 3, 1}}, {100, {2, 1, 1}}, {700, {2.2, 1, 1}}, {1000, {2.2, 0, 1}}, },
			alpha = {{0, {1}}, {150, {1}}, {600, {0.9}}, {1000, {0}}, },
		},
	},
	tu3 = {
		tu3 = {
			scale = {{0, {1, 1, 1}}, {800, {1.2, 1.2, 1}}, },
			alpha = {{0, {1}}, {800, {0}}, },
		},
	},
	tu4 = {
		tu4 = {
			scale = {{0, {0, 0, 1}}, {100, {3, 3, 1}}, {150, {2.6, 2.6, 1}}, {200, {2.8, 2.8, 1}}, {1000, {4, 4, 1}}, {1200, {0, 0, 1}}, },
			alpha = {{0, {1}}, {100, {1}}, {300, {0.4}}, {1200, {0}}, },
		},
	},
	tu5 = {
		tu5 = {
			scale = {{0, {1, 1, 1}}, {150, {4, 3, 1}}, {400, {4.4, 3.1, 1}}, },
			alpha = {{0, {1}}, {150, {1}}, {400, {0}}, },
		},
	},
	tu6 = {
		tu6 = {
			alpha = {{0, {1}}, {1450, {1}}, {1500, {0}}, },
		},
	},
	tu7 = {
		tu7 = {
			scale = {{0, {2, 2, 1}}, {800, {3, 3, 1}}, },
			alpha = {{0, {1}}, {800, {0}}, },
		},
	},
	ss = {
		buffd = {
			alpha = {{0, {1}}, {400, {0}}, {700, {1}}, },
		},
	},
	c_box = {
		{2,"gy", 1, 0},
		{2,"gy2", 1, 0},
		{2,"liz", 1, 0},
	},
	c_chu = {
		{0,"chu", 1, 0},
	},
	c_ru = {
		{0,"ru", 1, 0},
	},
	c_bao1 = {
		{0,"bao1", 1, 0},
		{0,"bao2", 1, 50},
		{2,"lizi01", 1, 0},
		{0,"bao3", 1, 0},
		{2,"lizi2", 1, 50},
	},
	c_tu = {
		{0,"tu6", 1, 0},
		{0,"tu1", 1, 0},
		{2,"lizi4", 1, 0},
		{0,"tu2", 1, 1400},
		{0,"tu3", 1, 1400},
		{0,"tu4", 1, 1450},
		{0,"tu5", 1, 1400},
		{2,"lizi3", 1, 1400},
		{0,"tu7", 1, 1400},
	},
	c_ss = {
		{0,"ss", -1, 0},
	},
}
--EDITOR animations end tag
local function create()
return UIUtil.createNode(l_fileType, eleRoot, l_animations)
end
return create
