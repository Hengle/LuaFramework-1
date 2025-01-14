--[[
	id:int#编号
	type:int#元素类型
1=传送门
2=采集物
	name:string#传送到哪个场景
	mapId:int#所在场景
	toMapId:int#传送门：传送到哪个场景（mapID）
采集物：所在场景
]]

local cfg={
	[10011]={
		id=10011,
		type=1,
		name="天圣古城",
		mapId=1001,
		toMapId=2001
	},
	[10012]={
		id=10012,
		type=1,
		name="休整室",
		mapId=1001,
		toMapId=321
	},
	[10013]={
		id=10013,
		type=1,
		name="青云岭一层",
		mapId=1001,
		toMapId=2104
	},
	[10014]={
		id=10014,
		type=1,
		name="不周山一层",
		mapId=1001,
		toMapId=2101
	},
	[10015]={
		id=10015,
		type=1,
		name="轩辕台一层",
		mapId=1001,
		toMapId=2113
	},
	[20011]={
		id=20011,
		type=1,
		name="主城·长安城",
		mapId=2001,
		toMapId=1001
	},
	[20012]={
		id=20012,
		type=1,
		name="南郡",
		mapId=2001,
		toMapId=2002
	},
	[20013]={
		id=20013,
		type=1,
		name="阪泉",
		mapId=2001,
		toMapId=2008
	},
	[20021]={
		id=20021,
		type=1,
		name="天圣古城",
		mapId=2002,
		toMapId=2001
	},
	[20022]={
		id=20022,
		type=1,
		name="从雨森林",
		mapId=2002,
		toMapId=2003
	},
	[20023]={
		id=20023,
		type=1,
		name="灵石矿洞",
		mapId=2002,
		toMapId=2010
	},
	[20031]={
		id=20031,
		type=1,
		name="南郡",
		mapId=2003,
		toMapId=2002
	},
	[20032]={
		id=20032,
		type=1,
		name="暮秀雨林",
		mapId=2003,
		toMapId=2004
	},
	[20041]={
		id=20041,
		type=1,
		name="从雨森林",
		mapId=2004,
		toMapId=2003
	},
	[20042]={
		id=20042,
		type=1,
		name="琅琊战场",
		mapId=2004,
		toMapId=2005
	},
	[20051]={
		id=20051,
		type=1,
		name="暮秀雨林",
		mapId=2005,
		toMapId=2004
	},
	[20052]={
		id=20052,
		type=1,
		name="赤水",
		mapId=2005,
		toMapId=2006
	},
	[20053]={
		id=20053,
		type=1,
		name="天尊洞府",
		mapId=2005,
		toMapId=2009
	},
	[20061]={
		id=20061,
		type=1,
		name="琅琊战场",
		mapId=2006,
		toMapId=2005
	},
	[20062]={
		id=20062,
		type=1,
		name="西烈荒原",
		mapId=2006,
		toMapId=2007
	},
	[20071]={
		id=20071,
		type=1,
		name="赤水",
		mapId=2007,
		toMapId=2006
	},
	[20072]={
		id=20072,
		type=1,
		name="阪泉",
		mapId=2007,
		toMapId=2008
	},
	[20073]={
		id=20073,
		type=1,
		name="神印矿洞",
		mapId=2007,
		toMapId=2011
	},
	[20081]={
		id=20081,
		type=1,
		name="西烈荒原",
		mapId=2008,
		toMapId=2007
	},
	[20082]={
		id=20082,
		type=1,
		name="天圣古城",
		mapId=2008,
		toMapId=2001
	},
	[20091]={
		id=20091,
		type=1,
		name="琅琊战场",
		mapId=2009,
		toMapId=2005
	},
	[20101]={
		id=20101,
		type=1,
		name="南郡",
		mapId=2010,
		toMapId=2002
	},
	[20111]={
		id=20111,
		type=1,
		name="西烈荒原",
		mapId=2011,
		toMapId=2007
	},
	[21011]={
		id=21011,
		type=1,
		name="主城·长安城",
		mapId=2101,
		toMapId=1001
	},
	[21012]={
		id=21012,
		type=1,
		name="不周山二层",
		mapId=2101,
		toMapId=2102
	},
	[21021]={
		id=21021,
		type=1,
		name="不周山一层",
		mapId=2102,
		toMapId=2101
	},
	[21022]={
		id=21022,
		type=1,
		name="不周山三层",
		mapId=2102,
		toMapId=2103
	},
	[21031]={
		id=21031,
		type=1,
		name="不周山二层",
		mapId=2103,
		toMapId=2102
	},
	[21041]={
		id=21041,
		type=1,
		name="主城·长安城",
		mapId=2104,
		toMapId=1001
	},
	[21042]={
		id=21042,
		type=1,
		name="青云岭二层",
		mapId=2104,
		toMapId=2105
	},
	[21051]={
		id=21051,
		type=1,
		name="青云岭一层",
		mapId=2105,
		toMapId=2104
	},
	[21052]={
		id=21052,
		type=1,
		name="青云岭三层",
		mapId=2105,
		toMapId=2106
	},
	[21061]={
		id=21061,
		type=1,
		name="青云岭二层",
		mapId=2106,
		toMapId=2105
	},
	[21062]={
		id=21062,
		type=1,
		name="巨人野一层",
		mapId=2106,
		toMapId=2107
	},
	[21071]={
		id=21071,
		type=1,
		name="青云岭三层",
		mapId=2107,
		toMapId=2106
	},
	[21072]={
		id=21072,
		type=1,
		name="巨人野二层",
		mapId=2107,
		toMapId=2108
	},
	[21081]={
		id=21081,
		type=1,
		name="巨人野一层",
		mapId=2108,
		toMapId=2107
	},
	[21082]={
		id=21082,
		type=1,
		name="巨人野三层",
		mapId=2108,
		toMapId=2109
	},
	[21091]={
		id=21091,
		type=1,
		name="巨人野二层",
		mapId=2109,
		toMapId=2108
	},
	[21092]={
		id=21092,
		type=1,
		name="断壁谷一层",
		mapId=2109,
		toMapId=2110
	},
	[21101]={
		id=21101,
		type=1,
		name="巨人野三层",
		mapId=2110,
		toMapId=2109
	},
	[21102]={
		id=21102,
		type=1,
		name="断壁谷二层",
		mapId=2110,
		toMapId=2111
	},
	[21111]={
		id=21111,
		type=1,
		name="断壁谷一层",
		mapId=2111,
		toMapId=2110
	},
	[21112]={
		id=21112,
		type=1,
		name="断壁谷三层",
		mapId=2111,
		toMapId=2112
	},
	[21121]={
		id=21121,
		type=1,
		name="断壁谷二层",
		mapId=2112,
		toMapId=2111
	},
	[21131]={
		id=21131,
		type=1,
		name="主城·长安城",
		mapId=2113,
		toMapId=1001
	},
	[21132]={
		id=21132,
		type=1,
		name="轩辕台二层",
		mapId=2113,
		toMapId=2114
	},
	[21141]={
		id=21141,
		type=1,
		name="轩辕台一层",
		mapId=2114,
		toMapId=2113
	},
	[21142]={
		id=21142,
		type=1,
		name="轩辕台三层",
		mapId=2114,
		toMapId=2115
	},
	[21151]={
		id=21151,
		type=1,
		name="轩辕台二层",
		mapId=2115,
		toMapId=2114
	},
	[70011]={
		id=70011,
		type=1,
		name="诛仙台",
		mapId=7001,
		toMapId=7002
	},
	[120011]={
		id=120011,
		type=1,
		name="主城·长安城",
		mapId=12001,
		toMapId=1001
	},
	[120012]={
		id=120012,
		type=1,
		name="神境·仙域二层",
		mapId=12001,
		toMapId=12002
	},
	[120021]={
		id=120021,
		type=1,
		name="神境·仙域一层",
		mapId=12002,
		toMapId=12001
	},
	[120022]={
		id=120022,
		type=1,
		name="神境·仙域三层",
		mapId=12002,
		toMapId=12003
	},
	[120031]={
		id=120031,
		type=1,
		name="神境·仙域二层",
		mapId=12003,
		toMapId=12002
	},
	[120032]={
		id=120032,
		type=1,
		name="神境·仙域四层",
		mapId=12003,
		toMapId=12004
	},
	[120041]={
		id=120041,
		type=1,
		name="神境·仙域三层",
		mapId=12004,
		toMapId=12003
	},
	[120042]={
		id=120042,
		type=1,
		name="神境·仙域五层",
		mapId=12004,
		toMapId=12005
	},
	[120051]={
		id=120051,
		type=1,
		name="神境·仙域四层",
		mapId=12005,
		toMapId=12004
	},
	[120052]={
		id=120052,
		type=1,
		name="神境·仙域六层",
		mapId=12005,
		toMapId=12006
	},
	[120061]={
		id=120061,
		type=1,
		name="神境·仙域五层",
		mapId=12006,
		toMapId=12005
	},
	[120062]={
		id=120062,
		type=1,
		name="神境·仙域七层",
		mapId=12006,
		toMapId=12007
	},
	[120071]={
		id=120071,
		type=1,
		name="神境·仙域六层",
		mapId=12007,
		toMapId=12006
	},
	[120072]={
		id=120072,
		type=1,
		name="神境·仙域八层",
		mapId=12007,
		toMapId=12008
	},
	[120081]={
		id=120081,
		type=1,
		name="神境·仙域七层",
		mapId=12008,
		toMapId=12007
	},
	[120082]={
		id=120082,
		type=1,
		name="神境·仙域九层",
		mapId=12008,
		toMapId=12009
	},
	[120091]={
		id=120091,
		type=1,
		name="神境·仙域八层",
		mapId=12009,
		toMapId=12008
	},
	[121011]={
		id=121011,
		type=1,
		name="主城·长安城",
		mapId=12101,
		toMapId=1001
	},
	[121012]={
		id=121012,
		type=1,
		name="幻境二层",
		mapId=12101,
		toMapId=12102
	},
	[121021]={
		id=121021,
		type=1,
		name="幻境一层",
		mapId=12102,
		toMapId=12101
	},
	[121022]={
		id=121022,
		type=1,
		name="幻境三层",
		mapId=12102,
		toMapId=12103
	},
	[121031]={
		id=121031,
		type=1,
		name="幻境二层",
		mapId=12103,
		toMapId=12102
	},
	[121032]={
		id=121032,
		type=1,
		name="幻境四层",
		mapId=12103,
		toMapId=12113
	},
	[121131]={
		id=121131,
		type=1,
		name="幻境三层",
		mapId=12113,
		toMapId=12103
	},
	[121132]={
		id=121132,
		type=1,
		name="幻境五层",
		mapId=12113,
		toMapId=12114
	},
	[121141]={
		id=121141,
		type=1,
		name="幻境四层",
		mapId=12114,
		toMapId=12113
	},
	[121142]={
		id=121142,
		type=1,
		name="幻境六层",
		mapId=12114,
		toMapId=12115
	},
	[121151]={
		id=121151,
		type=1,
		name="幻境五层",
		mapId=12115,
		toMapId=12114
	},
	[121152]={
		id=121152,
		type=1,
		name="幻境七层",
		mapId=12115,
		toMapId=12104
	},
	[121041]={
		id=121041,
		type=1,
		name="幻境六层",
		mapId=12104,
		toMapId=12115
	},
	[121042]={
		id=121042,
		type=1,
		name="幻境八层",
		mapId=12104,
		toMapId=12105
	},
	[121051]={
		id=121051,
		type=1,
		name="幻境七层",
		mapId=12105,
		toMapId=12104
	},
	[121052]={
		id=121052,
		type=1,
		name="幻境九层",
		mapId=12105,
		toMapId=12106
	},
	[121061]={
		id=121061,
		type=1,
		name="幻境八层",
		mapId=12106,
		toMapId=12105
	},
	[121062]={
		id=121062,
		type=1,
		name="幻境十层",
		mapId=12106,
		toMapId=12107
	},
	[121071]={
		id=121071,
		type=1,
		name="幻境九层",
		mapId=12107,
		toMapId=12106
	},
	[121072]={
		id=121072,
		type=1,
		name="幻境十一层",
		mapId=12107,
		toMapId=12108
	},
	[121081]={
		id=121081,
		type=1,
		name="幻境十层",
		mapId=12108,
		toMapId=12107
	},
	[121082]={
		id=121082,
		type=1,
		name="幻境十二层",
		mapId=12108,
		toMapId=12109
	},
	[121091]={
		id=121091,
		type=1,
		name="幻境十一层",
		mapId=12109,
		toMapId=12108
	},
	[121092]={
		id=121092,
		type=1,
		name="幻境十三层",
		mapId=12109,
		toMapId=12110
	},
	[121101]={
		id=121101,
		type=1,
		name="幻境十二层",
		mapId=12110,
		toMapId=12109
	},
	[121102]={
		id=121102,
		type=1,
		name="幻境十四层",
		mapId=12110,
		toMapId=12111
	},
	[121111]={
		id=121111,
		type=1,
		name="幻境十三层",
		mapId=12111,
		toMapId=12110
	},
	[121112]={
		id=121112,
		type=1,
		name="幻境十五层",
		mapId=12111,
		toMapId=12112
	},
	[121121]={
		id=121121,
		type=1,
		name="幻境十四层",
		mapId=12112,
		toMapId=12111
	}
}

function cfg:Get( key )
	return cfg[key]
end
return cfg