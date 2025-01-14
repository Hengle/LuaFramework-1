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
			sizeX = 0.734375,
			sizeY = 0.7027778,
		},
		children = {
		{
			prop = {
				etype = "Image",
				name = "haoyou",
				varName = "ShouChong",
				posX = 0.6246737,
				posY = 0.5562309,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.7506528,
				sizeY = 0.874059,
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
					etype = "Scroll",
					name = "lb",
					varName = "fr_scroll",
					posX = 0.5,
					posY = 0.5017942,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.988269,
					sizeY = 0.9764031,
				},
			},
			{
				prop = {
					etype = "Image",
					name = "mhy",
					varName = "mhy",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					visible = false,
					sizeX = 0.4265957,
					sizeY = 0.8963168,
					image = "hw1#hw1",
				},
				children = {
				{
					prop = {
						etype = "Label",
						name = "wbz",
						posX = 0.5,
						posY = 0.5,
						anchorX = 0.5,
						anchorY = 0.5,
						sizeX = 1.975935,
						sizeY = 0.3908244,
						text = "您还没有添加任何好友，赶快邀请好友一起闯荡江湖吧！",
						color = "FF43261D",
						fontSize = 24,
						fontOutlineColor = "FF102E21",
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
				name = "an8",
				varName = "GetBtn",
				posX = 0.9159747,
				posY = 0.03420958,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.1542553,
				sizeY = 0.1086956,
				image = "chu1#an1",
				imageNormal = "chu1#an1",
				soundEffectClick = "audio/rxjh/UI/anniu.ogg",
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "z2",
					varName = "GetBtnText",
					posX = 0.5,
					posY = 0.5454545,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.016411,
					sizeY = 0.8880838,
					text = "一键领取",
					fontSize = 22,
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
				etype = "Label",
				name = "wb5",
				varName = "friendNum",
				posX = 0.2067949,
				posY = 0.56892,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.1727825,
				sizeY = 0.08553866,
				text = "30/40",
				color = "FF966856",
				fontSize = 22,
				fontOutlineColor = "FF193B37",
				vTextAlign = 1,
			},
		},
		{
			prop = {
				etype = "Label",
				name = "wb2",
				varName = "GetCount",
				posX = 0.2067949,
				posY = 0.4696844,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.1727825,
				sizeY = 0.08553866,
				text = "100/100",
				color = "FF966856",
				fontSize = 22,
				fontOutlineColor = "FF193B37",
				vTextAlign = 1,
			},
		},
		{
			prop = {
				etype = "Label",
				name = "wb1",
				varName = "GetLabel",
				posX = 0.08542323,
				posY = 0.4696844,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.1727825,
				sizeY = 0.08553866,
				text = "体力领取：",
				color = "FF966856",
				fontSize = 22,
				fontOutlineColor = "FF193B37",
				vTextAlign = 1,
			},
		},
		{
			prop = {
				etype = "Image",
				name = "jdd",
				posX = 0.1718151,
				posY = -0.01308193,
				anchorX = 0.5,
				anchorY = 0.5,
				visible = false,
				sizeX = 0.3186238,
				sizeY = 0.04743083,
				image = "hy#jdd2",
				scale9 = true,
				scale9Left = 0.4,
				scale9Right = 0.4,
			},
			children = {
			{
				prop = {
					etype = "LoadingBar",
					name = "jd",
					varName = "loadingBar",
					posX = 0.5,
					posY = 0.5,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.9782763,
					sizeY = 0.875,
					image = "hy#jdt",
				},
			},
			},
		},
		{
			prop = {
				etype = "Label",
				name = "wb3",
				varName = "Level",
				posX = 0.1718151,
				posY = -0.01308193,
				anchorX = 0.5,
				anchorY = 0.5,
				visible = false,
				sizeX = 0.1258169,
				sizeY = 0.08553866,
				text = "Lv100",
				fontSize = 22,
				fontOutlineEnable = true,
				fontOutlineColor = "FF0C3F3C",
				hTextAlign = 1,
				vTextAlign = 1,
			},
		},
		{
			prop = {
				etype = "Label",
				name = "wb6",
				posX = 0.1181408,
				posY = 0.1454062,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.4367821,
				sizeY = 0.1194926,
				text = "鸡翅领取后可在背包里使用",
				color = "FF65944D",
				fontOutlineColor = "FF193B37",
				hTextAlign = 1,
				vTextAlign = 1,
			},
		},
		{
			prop = {
				etype = "Label",
				name = "wb7",
				posX = 0.08542322,
				posY = 0.56892,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.1727825,
				sizeY = 0.08553866,
				text = "好友数量：",
				color = "FF966856",
				fontSize = 22,
				fontOutlineColor = "FF193B37",
				vTextAlign = 1,
			},
		},
		{
			prop = {
				etype = "Image",
				name = "yd",
				varName = "hideImage",
				posX = 0.02640898,
				posY = 0.2494077,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.04893617,
				sizeY = 0.09288537,
				image = "ty#zyd",
			},
		},
		{
			prop = {
				etype = "Button",
				name = "anj",
				varName = "hideBtn",
				posX = 0.03702766,
				posY = 0.2711078,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.08723404,
				sizeY = 0.1205534,
			},
		},
		{
			prop = {
				etype = "Label",
				name = "ych",
				varName = "hideLable",
				posX = 0.2119361,
				posY = 0.2497549,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.2681363,
				sizeY = 0.1230271,
				text = "隐藏离线好友",
				color = "FF966856",
				vTextAlign = 1,
			},
		},
		{
			prop = {
				etype = "Image",
				name = "jan",
				varName = "selectIcon",
				posX = 0.03702777,
				posY = 0.2711078,
				anchorX = 0.5,
				anchorY = 0.5,
				visible = false,
				sizeX = 0.08723404,
				sizeY = 0.1205534,
				image = "ty#xzjt",
			},
		},
		{
			prop = {
				etype = "Button",
				name = "an9",
				varName = "giveAllVitBtn",
				posX = 0.7204471,
				posY = 0.03420958,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.1542553,
				sizeY = 0.1086956,
				image = "chu1#an1",
				imageNormal = "chu1#an1",
				soundEffectClick = "audio/rxjh/UI/anniu.ogg",
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "z3",
					varName = "GetBtnText2",
					posX = 0.5,
					posY = 0.5454545,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.016411,
					sizeY = 0.8880838,
					text = "一键赠送",
					fontSize = 22,
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
				etype = "Button",
				name = "an10",
				varName = "addFriendBtn",
				posX = 0.3293919,
				posY = 0.03420965,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.1542553,
				sizeY = 0.1086956,
				image = "chu1#an2",
				imageNormal = "chu1#an2",
				soundEffectClick = "audio/rxjh/UI/anniu.ogg",
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "z4",
					varName = "GetBtnText3",
					posX = 0.5,
					posY = 0.5454545,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.016411,
					sizeY = 0.8880838,
					text = "添加好友",
					fontSize = 22,
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
				name = "txd",
				varName = "headframe",
				posX = 0.1070288,
				posY = 0.760452,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.156383,
				sizeY = 0.2332016,
				image = "zdtx#txd",
			},
			children = {
			{
				prop = {
					etype = "Image",
					name = "tx",
					varName = "headIcon",
					posX = 0.5054789,
					posY = 0.6925332,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 0.7210885,
					sizeY = 1.110169,
					image = "jstx2#qiangnan",
				},
			},
			},
		},
		{
			prop = {
				etype = "Button",
				name = "an11",
				varName = "deleteFriendsBtn",
				posX = 0.5249195,
				posY = 0.03420965,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.1542553,
				sizeY = 0.1086956,
				image = "chu1#an2",
				imageNormal = "chu1#an2",
				soundEffectClick = "audio/rxjh/UI/anniu.ogg",
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "z5",
					varName = "GetBtnText4",
					posX = 0.5,
					posY = 0.5454545,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.016411,
					sizeY = 0.8880838,
					text = "删除好友",
					fontSize = 22,
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
				name = "an12",
				varName = "refresh_btn",
				posX = 0.9012933,
				posY = 0.03420958,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.1542553,
				sizeY = 0.1086956,
				image = "chu1#an1",
				imageNormal = "chu1#an1",
				soundEffectClick = "audio/rxjh/UI/anniu.ogg",
			},
			children = {
			{
				prop = {
					etype = "Label",
					name = "z6",
					varName = "GetBtnText5",
					posX = 0.5,
					posY = 0.5454545,
					anchorX = 0.5,
					anchorY = 0.5,
					sizeX = 1.016411,
					sizeY = 0.8880838,
					text = "刷新",
					fontSize = 22,
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
				name = "yd2",
				varName = "friAutoDelImg",
				posX = 0.02640898,
				posY = 0.3561278,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.04893617,
				sizeY = 0.09288537,
				image = "ty#zyd",
			},
		},
		{
			prop = {
				etype = "Button",
				name = "anj2",
				varName = "autoDel",
				posX = 0.03702766,
				posY = 0.377828,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.08723404,
				sizeY = 0.1205534,
			},
		},
		{
			prop = {
				etype = "Label",
				name = "ych2",
				varName = "friAutoDelDesc",
				posX = 0.1636077,
				posY = 0.3564751,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.1714794,
				sizeY = 0.1230271,
				text = "自动移除14天以上未登录的好友",
				color = "FF966856",
				vTextAlign = 1,
			},
		},
		{
			prop = {
				etype = "Image",
				name = "jan2",
				varName = "autoDelMark",
				posX = 0.03702777,
				posY = 0.377828,
				anchorX = 0.5,
				anchorY = 0.5,
				visible = false,
				sizeX = 0.08723404,
				sizeY = 0.1205534,
				image = "ty#xzjt",
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
