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
		closeAfterOpenAni = true,
	},
	children = {
	{
		prop = {
			etype = "Grid",
			name = "zbzd",
			posX = 0.5,
			posY = 0.4861344,
			anchorX = 0.5,
			anchorY = 0.5,
			sizeX = 1,
			sizeY = 1,
			layoutType = 5,
			layoutTypeW = 5,
		},
		children = {
		{
			prop = {
				etype = "Image",
				name = "guang",
				posX = 0.5017022,
				posY = 0.7357228,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.1432249,
				sizeY = 0.25,
				image = "uieffect/SoundWave.png",
				alpha = 0,
				blendFunc = 1,
			},
		},
		{
			prop = {
				etype = "Image",
				name = "g1",
				posX = 0.5013745,
				posY = 0.7407744,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.09150312,
				sizeY = 0.5128888,
				image = "uieffect/transporting_line_01.png",
				alpha = 0,
				rotation = 90,
				blendFunc = 1,
			},
		},
		{
			prop = {
				etype = "Image",
				name = "g2",
				posX = 0.496228,
				posY = 0.745221,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.5363563,
				sizeY = 0.9175236,
				image = "uieffect/flare0422.png",
				alpha = 0,
				blendFunc = 1,
			},
		},
		{
			prop = {
				etype = "Particle",
				name = "lizi5",
				sizeXAB = 768,
				sizeYAB = 180,
				posXAB = 1054.32,
				posYAB = 619.5709,
				posX = 0.8236878,
				posY = 0.8605151,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.6,
				sizeY = 0.25,
				angle = 0,
				duration = 0.5,
				emitterType = 0,
				emissionRate = 100,
				middleColorAlpha = 1,
				middleColorBlue = 1,
				middleColorGreen = 1,
				middleColorRed = 1,
				finishParticleSize = 0,
				startParticleSize = 80,
				startParticleSizeVariance = 20,
				maxParticles = 10,
				particleLifespan = 0.5,
				particleLifeMiddle = 0.3,
				sourcePositionVariancex = 10,
				sourcePositionVariancey = 35,
				speed = 500,
				speedVariance = 200,
				startColorBlue = 1,
				startColorGreen = 1,
				startColorRed = 1,
				textureFileName = "uieffect/067lizi1.png",
			},
		},
		{
			prop = {
				etype = "Particle",
				name = "lizi6",
				sizeXAB = 768,
				sizeYAB = 180,
				posXAB = 967.4618,
				posYAB = 619.5709,
				posX = 0.7558295,
				posY = 0.8605151,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.6,
				sizeY = 0.25,
				duration = 0.5,
				emitterType = 0,
				emissionRate = 100,
				middleColorAlpha = 1,
				middleColorBlue = 1,
				middleColorGreen = 1,
				middleColorRed = 1,
				finishParticleSize = 0,
				startParticleSize = 80,
				startParticleSizeVariance = 20,
				maxParticles = 10,
				particleLifespan = 0.5,
				particleLifeMiddle = 0.3,
				sourcePositionVariancex = 10,
				sourcePositionVariancey = 35,
				speed = 500,
				speedVariance = 200,
				startColorBlue = 1,
				startColorGreen = 1,
				startColorRed = 1,
				textureFileName = "uieffect/067lizi1.png",
			},
		},
		{
			prop = {
				etype = "Image",
				name = "zi",
				posX = 0.4976629,
				posY = 0.7468221,
				anchorX = 0.5,
				anchorY = 0.5,
				lockHV = true,
				sizeX = 0.3151239,
				sizeY = 0.2801102,
				image = "uieffect/zbzd.png",
				alpha = 0,
			},
		},
		{
			prop = {
				etype = "FrameAni",
				name = "xl",
				sizeXAB = 227.2589,
				sizeYAB = 210.6545,
				posXAB = 639.1851,
				posYAB = 520.236,
				posX = 0.4993633,
				posY = 0.72255,
				anchorX = 0.5,
				anchorY = 0.5,
				sizeX = 0.177546,
				sizeY = 0.2925757,
				alpha = 0,
				alphaCascade = true,
				frameEnd = 6,
				frameName = "uieffect/xulie323.png",
				delay = 0.1,
				playTimes = 999999,
				frameHeight = 85,
				column = 3,
				blendFunc = 1,
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
	zi = {
		zi = {
			scale = {{0, {5, 5, 1}}, {200, {0.8, 0.8, 1}}, {250, {1,1,1}}, },
			alpha = {{0, {1}}, },
		},
	},
	g1 = {
		g1 = {
			scale = {{0, {1, 0, 1}}, {100, {1,1,1}}, },
			alpha = {{0, {1}}, },
		},
	},
	g2 = {
		g2 = {
			scale = {{0, {0, 1, 1}}, {100, {1,1,1}}, },
			alpha = {{0, {1}}, },
		},
	},
	xl = {
		xl = {
			alpha = {{0, {1}}, },
		},
	},
	guang = {
		guang = {
			scale = {{0, {1,1,1}}, {150, {3.5, 2.5, 1}}, },
			alpha = {{0, {1}}, {100, {1}}, {200, {0}}, },
		},
	},
	c_dakai = {
		{0,"zi", 1, 0},
		{0,"g1", 1, 150},
		{0,"g2", 1, 150},
		{2,"lizi5", 1, 100},
		{2,"lizi6", 1, 100},
		{0,"xl", 1, 150},
		{0,"guang", 1, 150},
	},
}
--EDITOR animations end tag
local function create()
return UIUtil.createNode(l_fileType, eleRoot, l_animations)
end
return create
