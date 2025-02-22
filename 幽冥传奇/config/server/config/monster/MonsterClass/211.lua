return {
{
	entityid = 211,
	name = Lang.EntityName.m211,
	modelid = 146,
	icon = 124,
	level = 300,
	entityType = 1,
	race = 2,
	camp = 0,
	monsterType = 4,
	aiConfigId = 51,
	exp = 200000,
	innerExp = 388,
	nMaxHp = 468000,
	nMaxMp = 10,
	nPhysicalAttackMin = 2720,
	nPhysicalAttackMax = 3111,
	nMagicAttackMin = 2720,
	nMagicAttackMax = 3111,
	nWizardAttackMin = 2720,
	nWizardAttackMax = 3111,
	nHysicalDefenceMin = 102,
	nHysicalDefenceMax = 204,
	nMagicDefenceMin = 102,
	nMagicDefenceMax = 204,
	nHitrate = 51,
	nDogerate = 9,
	fMagicHitRate = 0.5,
	fMagicDogerate = 0,
	fToxicDogerate = 0,
	fToxicRenew = 0.5,
	fHpRenew = 2.5,
	fMpRenew = 0,
	nHpRenewAdd = 0,
	nLuck = 0,
	nCurse = 0,
	nNearAttackRate = 10000,
	nNearAttackType = 1,
	attackLevel = 100,
	attackInterval = 1000,
	nAttackSpeed = 750,
	nMoveOneSlotTime = 700,
	reSelTargetRate = 10,
	maxDropHp = 0,
	attackMusicId = 206,
	dieMusicId = 221,
	targetMusicId = 0,
	damageMusicId = 1,
	attackMusicRate = 50,
	dieMusicRate = 100,
	targetMusicTate = 30,
	damageMusicRate = 50,
	weaponid = 0,
	swingid = 0,
	hatsid = 0,
	dir = 4,
	flags = {
		DenyMove = true,
		DenyBeMove = true,
		DenyAutoAddHp = true,
		DenyUseNearAttack = true,
		DenyDizzyBuff = true,
		DenyMoveForbidBuff = true,
		DenyMoveSpeedSlowBuff = true,
		CanDropCoinGround = true,
		CanAlwaysEnter = true,
		DenyAddNumber = true,
		noReturnHome = true,
	},
	monstercolor = {
 		0,255,255,0,
	},
	priorTarget = {
	},
	drops = {
{type=3,id=0,count=20000,propability=1,group=0},
{type=3,id=0,count=5000,propability=1,group=0},
{ group = 0, type = 0, id = 4001, count = 1, propability = 1, bind = 1, },
{ group = 0, type = 0, id = 4276, count = 1, propability = 30, bind = 1, },
{ group = 0, type = 0, id = 4091, count = 1, propability = 1, bind = 1, },
--#include "..\drops\drops103.lua"
	},
},
}