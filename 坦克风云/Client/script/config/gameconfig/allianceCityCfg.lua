allianceCityCfg={
    --军团等级,军团人数,军团活跃等级
    buildCondition={10,10,2},
    --维护时间(单位:分钟)
    mainTime=180,
    --损失部队比例(进攻方,防守方)
    lostRate={0.02,0.01},
    --侦查基础消耗,
    spyCostH=200,
    --侦查系数(beta),侦查最终消耗=侦查基础消耗+对方城市等级*spyValue
    spyValue=20,
    --收回基地时间(单位:分钟)
    restartCity=1440,
    --初始保护时间,单位:秒
    protectTime=10800,
    --争夺成功
    successValue=10,
    --争夺失败
    loseValue=0,
    --翻倍上限(只限计算基础分),??????计算:successValue*2^conSuccess
    conSuccess=5,
    --开地块消耗稀土
    tableOne=1000,
    --每隔几级开启1个地块
    tableCondition=2,
    --加速1,技能配置s6效果里的table中的第1个属性对应的坦克,value为0则不显示
    s6skill1={"a10006","a10016","a10026","a10036"},
    --加速2,技能配置s6效果里的table中的第2个属性对应的坦克
    s6skill2={"a10007","a10017","a10027","a10037"},
    --开启保护罩基础消耗,
    protectValue=100,
    --保护罩等级,公式protectValue+s23Level*protectAdd,
    protectAdd=20,
    --采集兵数下限,人物等级*colloctTroops
    colloctTroops=40,
    --守城失败1次维护增长系数,
    lossValue=0.01,
    --系数上限,
    valueLimit=0.2,
    --赠送基础,赠送基础*等级
    rewardValue=8000,
    --迁城消耗,moveCost*城市等级^2
    moveCost=20,
    ---城市相关
    --allianceLimitS:城市水晶池子上限,personLimitS:每日水晶个人采集上限,mainCostR:每隔1时间消耗稀土,tableCostR:1块土地1小时消耗,RobbedLimitR:可被抢夺上限(稀土),collLimitR:采集稀土上限
    --grabLimitR:掠夺稀土上限,allGrabLimitR,:联盟抢夺上限,allperGrabLimitR:联盟被个人抢夺一次稀土上限,grabLimitH:荣耀值抢夺上限,collLimitH:荣耀值采集上限,giveOne:一键补充(消耗水晶量)
    city={
        {allianceLimitS=14112000,personLimitS=168000,mainCostR=273,tableCostR=20,RobbedLimitR=38760,collLimitR=8400,grabLimitR=1939,allGrabLimitR=38760,allperGrabLimitR=647,grabLimitH=210,collLimitH=840,giveOne=705600,},
        {allianceLimitS=14616000,personLimitS=174000,mainCostR=283,tableCostR=20,RobbedLimitR=40140,collLimitR=8700,grabLimitR=2008,allGrabLimitR=40140,allperGrabLimitR=670,grabLimitH=217,collLimitH=870,giveOne=730800,},
        {allianceLimitS=15288000,personLimitS=182000,mainCostR=296,tableCostR=20,RobbedLimitR=42000,collLimitR=9100,grabLimitR=2100,allGrabLimitR=42000,allperGrabLimitR=700,grabLimitH=227,collLimitH=910,giveOne=764400,},
        {allianceLimitS=15792000,personLimitS=188000,mainCostR=305,tableCostR=20,RobbedLimitR=43380,collLimitR=9400,grabLimitR=2170,allGrabLimitR=43380,allperGrabLimitR=724,grabLimitH=235,collLimitH=940,giveOne=789600,},
        {allianceLimitS=16296000,personLimitS=194000,mainCostR=315,tableCostR=20,RobbedLimitR=44760,collLimitR=9700,grabLimitR=2239,allGrabLimitR=44760,allperGrabLimitR=747,grabLimitH=242,collLimitH=970,giveOne=814800,},
        {allianceLimitS=16968000,personLimitS=202000,mainCostR=328,tableCostR=20,RobbedLimitR=46600,collLimitR=10100,grabLimitR=2331,allGrabLimitR=46600,allperGrabLimitR=777,grabLimitH=252,collLimitH=1010,giveOne=848400,},
        {allianceLimitS=17472000,personLimitS=208000,mainCostR=338,tableCostR=20,RobbedLimitR=48000,collLimitR=10400,grabLimitR=2400,allGrabLimitR=48000,allperGrabLimitR=800,grabLimitH=260,collLimitH=1040,giveOne=873600,},
        {allianceLimitS=18144000,personLimitS=216000,mainCostR=351,tableCostR=20,RobbedLimitR=49840,collLimitR=10800,grabLimitR=2493,allGrabLimitR=49840,allperGrabLimitR=831,grabLimitH=270,collLimitH=1080,giveOne=907200,},
        {allianceLimitS=18648000,personLimitS=222000,mainCostR=361,tableCostR=20,RobbedLimitR=51220,collLimitR=11100,grabLimitR=2562,allGrabLimitR=51220,allperGrabLimitR=854,grabLimitH=277,collLimitH=1110,giveOne=932400,},
        {allianceLimitS=19320000,personLimitS=230000,mainCostR=374,tableCostR=20,RobbedLimitR=53060,collLimitR=11500,grabLimitR=2654,allGrabLimitR=53060,allperGrabLimitR=885,grabLimitH=287,collLimitH=1150,giveOne=966000,},
        {allianceLimitS=24864000,personLimitS=296000,mainCostR=481,tableCostR=20,RobbedLimitR=68300,collLimitR=14800,grabLimitR=3416,allGrabLimitR=68300,allperGrabLimitR=1139,grabLimitH=370,collLimitH=1480,giveOne=1243200,},
        {allianceLimitS=25536000,personLimitS=304000,mainCostR=494,tableCostR=20,RobbedLimitR=70140,collLimitR=15200,grabLimitR=3508,allGrabLimitR=70140,allperGrabLimitR=1170,grabLimitH=380,collLimitH=1520,giveOne=1276800,},
        {allianceLimitS=26208000,personLimitS=312000,mainCostR=507,tableCostR=20,RobbedLimitR=72000,collLimitR=15600,grabLimitR=3600,allGrabLimitR=72000,allperGrabLimitR=1200,grabLimitH=390,collLimitH=1560,giveOne=1310400,},
        {allianceLimitS=27048000,personLimitS=322000,mainCostR=523,tableCostR=20,RobbedLimitR=74300,collLimitR=16100,grabLimitR=3716,allGrabLimitR=74300,allperGrabLimitR=1239,grabLimitH=402,collLimitH=1610,giveOne=1352400,},
        {allianceLimitS=27720000,personLimitS=330000,mainCostR=536,tableCostR=20,RobbedLimitR=76140,collLimitR=16500,grabLimitR=3808,allGrabLimitR=76140,allperGrabLimitR=1270,grabLimitH=412,collLimitH=1650,giveOne=1386000,},
        {allianceLimitS=28392000,personLimitS=338000,mainCostR=549,tableCostR=20,RobbedLimitR=78000,collLimitR=16900,grabLimitR=3900,allGrabLimitR=78000,allperGrabLimitR=1300,grabLimitH=422,collLimitH=1690,giveOne=1419600,},
        {allianceLimitS=29232000,personLimitS=348000,mainCostR=566,tableCostR=20,RobbedLimitR=80300,collLimitR=17400,grabLimitR=4016,allGrabLimitR=80300,allperGrabLimitR=1339,grabLimitH=435,collLimitH=1740,giveOne=1461600,},
        {allianceLimitS=29904000,personLimitS=356000,mainCostR=579,tableCostR=20,RobbedLimitR=82140,collLimitR=17800,grabLimitR=4108,allGrabLimitR=82140,allperGrabLimitR=1370,grabLimitH=445,collLimitH=1780,giveOne=1495200,},
        {allianceLimitS=30576000,personLimitS=364000,mainCostR=592,tableCostR=20,RobbedLimitR=84000,collLimitR=18200,grabLimitR=4200,allGrabLimitR=84000,allperGrabLimitR=1400,grabLimitH=455,collLimitH=1820,giveOne=1528800,},
        {allianceLimitS=31416000,personLimitS=374000,mainCostR=608,tableCostR=20,RobbedLimitR=86300,collLimitR=18700,grabLimitR=4316,allGrabLimitR=86300,allperGrabLimitR=1439,grabLimitH=467,collLimitH=1870,giveOne=1570800,},
        {allianceLimitS=45024000,personLimitS=536000,mainCostR=872,tableCostR=20,RobbedLimitR=123680,collLimitR=26800,grabLimitR=6185,allGrabLimitR=123680,allperGrabLimitR=2062,grabLimitH=670,collLimitH=2680,giveOne=2251200,},
        {allianceLimitS=46032000,personLimitS=548000,mainCostR=891,tableCostR=20,RobbedLimitR=126460,collLimitR=27400,grabLimitR=6324,allGrabLimitR=126460,allperGrabLimitR=2108,grabLimitH=685,collLimitH=2740,giveOne=2301600,},
        {allianceLimitS=47040000,personLimitS=560000,mainCostR=911,tableCostR=20,RobbedLimitR=129220,collLimitR=28000,grabLimitR=6462,allGrabLimitR=129220,allperGrabLimitR=2154,grabLimitH=700,collLimitH=2800,giveOne=2352000,},
        {allianceLimitS=48048000,personLimitS=572000,mainCostR=930,tableCostR=20,RobbedLimitR=132000,collLimitR=28600,grabLimitR=6600,allGrabLimitR=132000,allperGrabLimitR=2200,grabLimitH=715,collLimitH=2860,giveOne=2402400,},
        {allianceLimitS=49056000,personLimitS=584000,mainCostR=950,tableCostR=20,RobbedLimitR=134760,collLimitR=29200,grabLimitR=6739,allGrabLimitR=134760,allperGrabLimitR=2247,grabLimitH=730,collLimitH=2920,giveOne=2452800,},
        {allianceLimitS=50064000,personLimitS=596000,mainCostR=969,tableCostR=20,RobbedLimitR=137520,collLimitR=29800,grabLimitR=6877,allGrabLimitR=137520,allperGrabLimitR=2293,grabLimitH=745,collLimitH=2980,giveOne=2503200,},
        {allianceLimitS=51072000,personLimitS=608000,mainCostR=989,tableCostR=20,RobbedLimitR=140300,collLimitR=30400,grabLimitR=7016,allGrabLimitR=140300,allperGrabLimitR=2339,grabLimitH=760,collLimitH=3040,giveOne=2553600,},
        {allianceLimitS=52080000,personLimitS=620000,mainCostR=1008,tableCostR=20,RobbedLimitR=143060,collLimitR=31000,grabLimitR=7154,allGrabLimitR=143060,allperGrabLimitR=2385,grabLimitH=775,collLimitH=3100,giveOne=2604000,},
        {allianceLimitS=53088000,personLimitS=632000,mainCostR=1028,tableCostR=20,RobbedLimitR=145840,collLimitR=31600,grabLimitR=7293,allGrabLimitR=145840,allperGrabLimitR=2431,grabLimitH=790,collLimitH=3160,giveOne=2654400,},
        {allianceLimitS=54096000,personLimitS=644000,mainCostR=1047,tableCostR=20,RobbedLimitR=148600,collLimitR=32200,grabLimitR=7431,allGrabLimitR=148600,allperGrabLimitR=2477,grabLimitH=805,collLimitH=3220,giveOne=2704800,},
        {allianceLimitS=63000000,personLimitS=750000,mainCostR=1220,tableCostR=20,RobbedLimitR=173060,collLimitR=37500,grabLimitR=8654,allGrabLimitR=173060,allperGrabLimitR=2885,grabLimitH=937,collLimitH=3750,giveOne=3150000,},
        {allianceLimitS=64176000,personLimitS=764000,mainCostR=1242,tableCostR=20,RobbedLimitR=176300,collLimitR=38200,grabLimitR=8816,allGrabLimitR=176300,allperGrabLimitR=2939,grabLimitH=955,collLimitH=3820,giveOne=3208800,},
        {allianceLimitS=65352000,personLimitS=778000,mainCostR=1265,tableCostR=20,RobbedLimitR=179520,collLimitR=38900,grabLimitR=8977,allGrabLimitR=179520,allperGrabLimitR=2993,grabLimitH=972,collLimitH=3890,giveOne=3267600,},
        {allianceLimitS=66528000,personLimitS=792000,mainCostR=1288,tableCostR=20,RobbedLimitR=182760,collLimitR=39600,grabLimitR=9139,allGrabLimitR=182760,allperGrabLimitR=3047,grabLimitH=990,collLimitH=3960,giveOne=3326400,},
        {allianceLimitS=67704000,personLimitS=806000,mainCostR=1311,tableCostR=20,RobbedLimitR=186000,collLimitR=40300,grabLimitR=9300,allGrabLimitR=186000,allperGrabLimitR=3100,grabLimitH=1007,collLimitH=4030,giveOne=3385200,},
        {allianceLimitS=68880000,personLimitS=820000,mainCostR=1334,tableCostR=20,RobbedLimitR=189220,collLimitR=41000,grabLimitR=9462,allGrabLimitR=189220,allperGrabLimitR=3154,grabLimitH=1025,collLimitH=4100,giveOne=3444000,},
        {allianceLimitS=70056000,personLimitS=834000,mainCostR=1356,tableCostR=20,RobbedLimitR=192460,collLimitR=41700,grabLimitR=9624,allGrabLimitR=192460,allperGrabLimitR=3208,grabLimitH=1042,collLimitH=4170,giveOne=3502800,},
        {allianceLimitS=71064000,personLimitS=846000,mainCostR=1376,tableCostR=20,RobbedLimitR=195220,collLimitR=42300,grabLimitR=9762,allGrabLimitR=195220,allperGrabLimitR=3254,grabLimitH=1057,collLimitH=4230,giveOne=3553200,},
        {allianceLimitS=72240000,personLimitS=860000,mainCostR=1399,tableCostR=20,RobbedLimitR=198460,collLimitR=43000,grabLimitR=9924,allGrabLimitR=198460,allperGrabLimitR=3308,grabLimitH=1075,collLimitH=4300,giveOne=3612000,},
        {allianceLimitS=73416000,personLimitS=874000,mainCostR=1421,tableCostR=20,RobbedLimitR=201680,collLimitR=43700,grabLimitR=10085,allGrabLimitR=201680,allperGrabLimitR=3362,grabLimitH=1092,collLimitH=4370,giveOne=3670800,},
        {allianceLimitS=84000000,personLimitS=1000000,mainCostR=1626,tableCostR=20,RobbedLimitR=230760,collLimitR=50000,grabLimitR=11539,allGrabLimitR=230760,allperGrabLimitR=3847,grabLimitH=1250,collLimitH=5000,giveOne=4200000,},
        {allianceLimitS=85344000,personLimitS=1016000,mainCostR=1652,tableCostR=20,RobbedLimitR=234460,collLimitR=50800,grabLimitR=11724,allGrabLimitR=234460,allperGrabLimitR=3908,grabLimitH=1270,collLimitH=5080,giveOne=4267200,},
        {allianceLimitS=86520000,personLimitS=1030000,mainCostR=1675,tableCostR=20,RobbedLimitR=237680,collLimitR=51500,grabLimitR=11885,allGrabLimitR=237680,allperGrabLimitR=3962,grabLimitH=1287,collLimitH=5150,giveOne=4326000,},
        {allianceLimitS=87864000,personLimitS=1046000,mainCostR=1701,tableCostR=20,RobbedLimitR=241380,collLimitR=52300,grabLimitR=12070,allGrabLimitR=241380,allperGrabLimitR=4024,grabLimitH=1307,collLimitH=5230,giveOne=4393200,},
        {allianceLimitS=89208000,personLimitS=1062000,mainCostR=1727,tableCostR=20,RobbedLimitR=245060,collLimitR=53100,grabLimitR=12254,allGrabLimitR=245060,allperGrabLimitR=4085,grabLimitH=1327,collLimitH=5310,giveOne=4460400,},
        {allianceLimitS=90552000,personLimitS=1078000,mainCostR=1753,tableCostR=20,RobbedLimitR=248760,collLimitR=53900,grabLimitR=12439,allGrabLimitR=248760,allperGrabLimitR=4147,grabLimitH=1347,collLimitH=5390,giveOne=4527600,},
        {allianceLimitS=91728000,personLimitS=1092000,mainCostR=1776,tableCostR=20,RobbedLimitR=252000,collLimitR=54600,grabLimitR=12600,allGrabLimitR=252000,allperGrabLimitR=4200,grabLimitH=1365,collLimitH=5460,giveOne=4586400,},
        {allianceLimitS=93072000,personLimitS=1108000,mainCostR=1802,tableCostR=20,RobbedLimitR=255680,collLimitR=55400,grabLimitR=12785,allGrabLimitR=255680,allperGrabLimitR=4262,grabLimitH=1385,collLimitH=5540,giveOne=4653600,},
        {allianceLimitS=94416000,personLimitS=1124000,mainCostR=1828,tableCostR=20,RobbedLimitR=259380,collLimitR=56200,grabLimitR=12970,allGrabLimitR=259380,allperGrabLimitR=4324,grabLimitH=1405,collLimitH=5620,giveOne=4720800,},
        {allianceLimitS=95760000,personLimitS=1140000,mainCostR=1854,tableCostR=20,RobbedLimitR=263060,collLimitR=57000,grabLimitR=13154,allGrabLimitR=263060,allperGrabLimitR=4385,grabLimitH=1425,collLimitH=5700,giveOne=4788000,},
        {allianceLimitS=107856000,personLimitS=1284000,mainCostR=2088,tableCostR=20,RobbedLimitR=296300,collLimitR=64200,grabLimitR=14816,allGrabLimitR=296300,allperGrabLimitR=4939,grabLimitH=1605,collLimitH=6420,giveOne=5392800,},
        {allianceLimitS=109200000,personLimitS=1300000,mainCostR=2115,tableCostR=20,RobbedLimitR=300000,collLimitR=65000,grabLimitR=15000,allGrabLimitR=300000,allperGrabLimitR=5000,grabLimitH=1625,collLimitH=6500,giveOne=5460000,},
        {allianceLimitS=110712000,personLimitS=1318000,mainCostR=2144,tableCostR=20,RobbedLimitR=304140,collLimitR=65900,grabLimitR=15208,allGrabLimitR=304140,allperGrabLimitR=5070,grabLimitH=1647,collLimitH=6590,giveOne=5535600,},
        {allianceLimitS=112224000,personLimitS=1336000,mainCostR=2173,tableCostR=20,RobbedLimitR=308300,collLimitR=66800,grabLimitR=15416,allGrabLimitR=308300,allperGrabLimitR=5139,grabLimitH=1670,collLimitH=6680,giveOne=5611200,},
        {allianceLimitS=113568000,personLimitS=1352000,mainCostR=2199,tableCostR=20,RobbedLimitR=312000,collLimitR=67600,grabLimitR=15600,allGrabLimitR=312000,allperGrabLimitR=5200,grabLimitH=1690,collLimitH=6760,giveOne=5678400,},
        {allianceLimitS=115080000,personLimitS=1370000,mainCostR=2228,tableCostR=20,RobbedLimitR=316140,collLimitR=68500,grabLimitR=15808,allGrabLimitR=316140,allperGrabLimitR=5270,grabLimitH=1712,collLimitH=6850,giveOne=5754000,},
        {allianceLimitS=116592000,personLimitS=1388000,mainCostR=2258,tableCostR=20,RobbedLimitR=320300,collLimitR=69400,grabLimitR=16016,allGrabLimitR=320300,allperGrabLimitR=5339,grabLimitH=1735,collLimitH=6940,giveOne=5829600,},
        {allianceLimitS=117936000,personLimitS=1404000,mainCostR=2284,tableCostR=20,RobbedLimitR=324000,collLimitR=70200,grabLimitR=16200,allGrabLimitR=324000,allperGrabLimitR=5400,grabLimitH=1755,collLimitH=7020,giveOne=5896800,},
        {allianceLimitS=119448000,personLimitS=1422000,mainCostR=2313,tableCostR=20,RobbedLimitR=328140,collLimitR=71100,grabLimitR=16408,allGrabLimitR=328140,allperGrabLimitR=5470,grabLimitH=1777,collLimitH=7110,giveOne=5972400,},
        {allianceLimitS=120960000,personLimitS=1440000,mainCostR=2342,tableCostR=20,RobbedLimitR=332300,collLimitR=72000,grabLimitR=16616,allGrabLimitR=332300,allperGrabLimitR=5539,grabLimitH=1800,collLimitH=7200,giveOne=6048000,},
    },
    --军团城市个人技能
    --skillGroup:技能组,来判定是什么技能,skillLevel:技能等级,precondition:前置条件(科研等级),levelTo:下一级等级,costH:消耗荣耀值,value:数值
    --s1:增加己方前排攻击时的伤害x%,s2:降低敌方前排攻击时的伤害x%,s3:增加己方后排攻击时的伤害x%,s4:降低敌方后排攻击时的伤害x%,s5:增加己方先手值XX,s6:减少对应兵种建造时间x%
    personSkill={
        s1={skillName="alliance_skill_name_ps1",skillIcon="alliance_skill_icon_ps1.png",skilDes="alliance_skill_des_ps1",attack=1,costH={800,3114,7287,13667,22583,34345,49250,67593,89655,115718,146060,180957,220681,265507,315713,},value={0.004,0.012,0.022,0.035,0.05,0.066,0.084,0.104,0.126,0.15,0.175,0.202,0.23,0.26,0.292,},},
        s2={skillName="alliance_skill_name_ps2",skillIcon="alliance_skill_icon_ps2.png",skilDes="alliance_skill_des_ps2",attack=2,costH={970,3776,8834,16570,27382,41643,59716,81955,108709,140308,177100,219408,267573,321930,382804,},value={0.004,0.012,0.022,0.035,0.05,0.066,0.084,0.104,0.126,0.15,0.175,0.202,0.23,0.26,0.292,},},
        s3={skillName="alliance_skill_name_ps3",skillIcon="alliance_skill_icon_ps3.png",skilDes="alliance_skill_des_ps3",attack=1,costH={1100,4281,10018,18791,31051,47223,67718,92938,123274,159112,200832,248816,303435,365075,434107,},value={0.004,0.012,0.022,0.035,0.05,0.066,0.084,0.104,0.126,0.15,0.175,0.202,0.23,0.26,0.292,},},
        s4={skillName="alliance_skill_name_ps4",skillIcon="alliance_skill_icon_ps4.png",skilDes="alliance_skill_des_ps4",attack=2,costH={1600,6226,14572,27332,45164,68688,98499,135185,179310,231435,292120,361910,441361,531013,631426,},value={0.004,0.012,0.022,0.035,0.05,0.066,0.084,0.104,0.126,0.15,0.175,0.202,0.23,0.26,0.292,},},
        s5={skillName="alliance_skill_name_ps5",skillIcon="alliance_skill_icon_ps5.png",skilDes="alliance_skill_des_ps5",attack=1,costH={1800,7005,16392,30750,50809,77273,110813,152083,201722,260366,328632,407150,496529,597394,710357,},value={5,16,29,46,66,88,112,139,168,200,233,269,307,347,389,},},
        s6={skillName="alliance_skill_name_ps6",skillIcon="alliance_skill_icon_ps6.png",skilDes="alliance_skill_des_ps6",attack=1,costH={500,1947,4554,8543,14116,21465,30784,42247,56036,72324,91288,113099,137927,165944,197325,},value={{0.11,0},{0.34,0},{0.65,0},{1.03,0},{1.47,0},{1.47,0.11},{1.47,0.34},{1.47,0.65},{1.47,1.03},{1.47,1.47},{1.7,1.7},{1.93,1.93},{2.16,2.16},{2.39,2.39},{2.62,2.62},},},
    },
    --军团城市科研技能
    --studyGroup:学习技能组,studyLevel:科研等级,buildLevel:城市等级要求,costr5:稀土消耗
    allianceSkill={
        s1={skillname="alliance_skill_name_ps1",levelLimit=15,buildLevel=1,costR={116000,452000,1060000,1990000,3280000,4990000,7150000,9810000,13000000,16800000,21200000,26300000,32000000,38500000,45800000,},},
        s2={skillname="alliance_skill_name_ps2",levelLimit=15,buildLevel=5,costR={141000,548000,1290000,2410000,3980000,6040000,8660000,11900000,15800000,20400000,25700000,31900000,38800000,46700000,55600000,},},
        s3={skillname="alliance_skill_name_ps3",levelLimit=15,buildLevel=10,costR={160000,621000,1460000,2730000,4510000,6850000,9820000,13500000,17900000,23100000,29200000,36100000,44000000,53000000,63000000,},},
        s4={skillname="alliance_skill_name_ps4",levelLimit=15,buildLevel=15,costR={232000,903000,2120000,3970000,6550000,9960000,14300000,19700000,26000000,33600000,42400000,52500000,64000000,77000000,91600000,},},
        s5={skillname="alliance_skill_name_ps5",levelLimit=15,buildLevel=20,costR={261000,1020000,2380000,4460000,7370000,11300000,16100000,22100000,29300000,37800000,47700000,59100000,72000000,86700000,104000000,},},
        s6={skillname="alliance_skill_name_ps6",levelLimit=15,buildLevel=25,costR={72500,283000,661000,1240000,2050000,3120000,4470000,6130000,8130000,10500000,13300000,16400000,20000000,24100000,28700000,},},
    },
    --1.行军速度,2.采集速度,3.先手值
    territoryBuff={
        {0.05,0.01,20,},
        {0.055,0.018,25,},
        {0.06,0.026,30,},
        {0.065,0.034,35,},
        {0.07,0.042,40,},
        {0.075,0.05,45,},
        {0.08,0.058,50,},
        {0.085,0.066,55,},
        {0.09,0.074,60,},
        {0.095,0.082,65,},
        {0.1,0.09,70,},
        {0.105,0.098,75,},
        {0.11,0.106,80,},
        {0.115,0.114,85,},
        {0.12,0.122,90,},
        {0.125,0.13,95,},
        {0.13,0.138,100,},
        {0.135,0.146,105,},
        {0.14,0.154,110,},
        {0.145,0.162,115,},
        {0.15,0.17,120,},
        {0.155,0.178,125,},
        {0.16,0.186,130,},
        {0.165,0.194,135,},
        {0.17,0.202,140,},
        {0.175,0.21,145,},
        {0.18,0.218,150,},
        {0.185,0.226,155,},
        {0.19,0.234,160,},
        {0.195,0.242,165,},
        {0.2,0.25,170,},
    },
}