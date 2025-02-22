ltzdzWarCfg={
    --解锁条件
    openLevel=30,
    --开启天
    openDay={6,0},
    --开启时间
    openTime={{9,30},{12,30},{15,30}},
    --备战时间
    standTime=14400,
    --准备期间后x秒无法进入,如9点开启备战期,备战期时间为4小时,notEnter为1800,即12:30后不可再进入
    notEnter=3600,
    --战斗时间
    warTime=14400,
    --侦查有效时间
    spyTime=1800,
    --侦查消耗
    spyCost=1000,
    --投降时间 -- (正式战斗开始后开始计算）
    surTime=5400,
    --组队限制 -- 组队限制次数
    teamLimit=4,
    --属性参数
    attValue=0.1,
    --血量参数
    hpValue=0.22,
    --控制的属性
    attArr={"maxhp","dmg","accuracy","evade","crit","anticrit","arp","armor",},
    --兑换规则
    exchange=10,
    --行军队列上限
    troopsLimit=20,
    --单个行军加速使用上限
    runTroops=2,
    --限定人数
    peopleNum=15,
    ----行军石油消耗系数={战斗消耗，运输消耗}  实际消耗=兵力*时间*石油消耗系数
    marchOilCost={0.006,0.003},
    --初始资源分别为:坦克数量,代币数量,石油数量
    freeGift={45000,50000,50000},
    --运输部队加速系数
    transSpeed=0.5,
    --段位开启数量分别为:4,5,6
    placeNum={0,0,0,0,797,1437},
    -- 计策ID={效果参数，购买时间花费，购买金币花费，使用上限，图标，描述，名称}
    tactics={
        t1={effc=8000,timeCost=3600,gemCost=12,limit=20,icon="slz_tac_icon_1",des="slz_tac_des_1",name="slz_tac_name_1",}, --补充兵力
        t2={effc=0.5,timeCost=1800,gemCost=6,icon="slz_tac_icon_2",des="slz_tac_des_2",name="slz_tac_name_2",}, --行军加速
        t3={effc=12000,timeCost=1800,gemCost=6,limit=999,icon="slz_tac_icon_3",des="slz_tac_des_3",name="slz_tac_name_3",}, --补充石油
        t4={effc=12000,timeCost=1800,gemCost=6,limit=999,icon="slz_tac_icon_4",des="slz_tac_des_4",name="slz_tac_name_4",}, --补充代币
        t5={effc=1,timeCost=14400,gemCost=38,icon="slz_tac_icon_5",des="slz_tac_des_5",name="slz_tac_name_5",}, --立即建造（普通建筑）
        t6={effc=1,timeCost=14400,gemCost=68,icon="slz_tac_icon_6",des="slz_tac_des_6",name="slz_tac_name_6",}, --立即建造（主基地）
    },
    --公聊条数限制花费
    chatNum1=30,
    --私聊条数限制花费
    chatNum2=10,
    --房间信息
    --普通房最大人数
    roomMaxPly=8,
    --AI房最大人数
    AIRoomMaxPly=2,
    --最大邀请数量
    invitedMax=20,
    --该段位满足多少人时允许开启,1=永不开启
    allow={
        1,16,16,16,16,24,24,24,24,16,16,16,1,1,1,1,
    },
    divide={
        1,2,2,2,2,3,3,3,3,2,2,2,1,1,1,1,
    },
    --段位对应产量加成 {矿和油产量加成百分比兵产量,预备役上限加成百分比}
    titleBuff={
        {0,0},{0,0},{0,0},{0.1,0},{0.1,0},{0.1,0},{0.2,0},{0.2,0},{0.2,0},{0.3,0},{0.3,0},{0.3,0},{0.4,0},{0.4,0},{0.4,0},{0.6,0},
    },
    --重置花费=剩余时间乘以花费 -- 时间单位为半小时，向上取整
    resetCost=12,
    --计策冷却时间上限
    tacTimeLimit=14400,
    --城市预备役上限
    cityArmyLimit=20000,
    --npc数量
    npcNum=40,
    --自动升级次数
    autoUpgradeCount={30,50,80},
    --段位对应预备役伤害系数 -- 预备役伤害=预备兵数量*预备役伤害系数
    reserveDmg={
        33,33,33,42.5,42.5,42.5,70.5,70.5,70.5,94.5,94.5,94.5,122.5,122.5,122.5,169.5,
    },
    --中立城市防守部队
    nedDefTitle={3,6,9,12},
    --主城升级对应的预备役增长
    cityUp={
        59,98,132,171,237,
    },
    --开战后资源加速
    resUp=2,
    --赛季结算时间
    seasonTime={5,0},
    troopLimit={
        {246,5},
        {421,5},
        {796,5},
        {1436,5},
        {2400,5},
        {99999,5},
    },
    --赛季任务
    --num:击退x个人,包括npc
    seasonTask={
        t1={num=1,reward={u={gems=200}},serverreward={userinfo_gems=200}},
    },
    --有效预备役系数
    realArmyLimit=3,
    
    --中立城池防御部队配置
    --1001-1005为配置组,1-4,11-14为id  低于等于10 为小城城防,大于10为大城城防
    --skill101命中,102闪避,103暴击,104装甲 属性计算方式为加法
    --attack攻击,life血量,accurate命中,avoid闪避,critical暴击,decritical装甲 属性计算方式为乘法
    troops={
        {
            {
                [1]={reserveTroop=789750,tank={{10005,675},{10005,675},{10005,675},{10015,675},{10035,675},{10025,675},},skill={s101=1,s102=1,s103=1,s104=1,},attributeUp={attack=1,life=1,accurate=1,avoid=1,critical=1,decritical=1,}},
                [2]={reserveTroop=789750,tank={{10005,675},{10015,675},{10015,675},{10015,675},{10035,675},{10025,675},},skill={s101=1,s102=1,s103=1,s104=1,},attributeUp={attack=1,life=1,accurate=1,avoid=1,critical=1,decritical=1,}},
                [3]={reserveTroop=789750,tank={{10005,675},{10025,675},{10025,675},{10025,675},{10015,675},{10035,675},},skill={s101=1,s102=1,s103=1,s104=1,},attributeUp={attack=1,life=1,accurate=1,avoid=1,critical=1,decritical=1,}},
                [4]={reserveTroop=789750,tank={{10005,675},{10035,675},{10035,675},{10035,675},{10015,675},{10025,675},},skill={s101=1,s102=1,s103=1,s104=1,},attributeUp={attack=1,life=1,accurate=1,avoid=1,critical=1,decritical=1,}},
            },
            {
                [1]={reserveTroop=614250,tank={{10005,525},{10005,525},{10005,525},{10015,525},{10035,525},{10025,525},},skill={s101=1,s102=1,s103=1,s104=1,},attributeUp={attack=1,life=1,accurate=1,avoid=1,critical=1,decritical=1,}},
                [2]={reserveTroop=614250,tank={{10005,525},{10015,525},{10015,525},{10015,525},{10035,525},{10025,525},},skill={s101=1,s102=1,s103=1,s104=1,},attributeUp={attack=1,life=1,accurate=1,avoid=1,critical=1,decritical=1,}},
                [3]={reserveTroop=614250,tank={{10005,525},{10025,525},{10025,525},{10025,525},{10015,525},{10035,525},},skill={s101=1,s102=1,s103=1,s104=1,},attributeUp={attack=1,life=1,accurate=1,avoid=1,critical=1,decritical=1,}},
                [4]={reserveTroop=614250,tank={{10005,525},{10035,525},{10035,525},{10035,525},{10015,525},{10025,525},},skill={s101=1,s102=1,s103=1,s104=1,},attributeUp={attack=1,life=1,accurate=1,avoid=1,critical=1,decritical=1,}},
            },
        },
        {
            {
                [1]={reserveTroop=965250,tank={{10005,825},{10005,825},{10005,825},{10015,825},{10035,825},{10025,825},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.2,life=1.2,accurate=1,avoid=1,critical=1,decritical=1,}},
                [2]={reserveTroop=965250,tank={{10005,825},{10015,825},{10015,825},{10015,825},{10035,825},{10025,825},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.2,life=1.2,accurate=1,avoid=1,critical=1,decritical=1,}},
                [3]={reserveTroop=965250,tank={{10005,825},{10025,825},{10025,825},{10025,825},{10015,825},{10035,825},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.2,life=1.2,accurate=1,avoid=1,critical=1,decritical=1,}},
                [4]={reserveTroop=965250,tank={{10005,825},{10035,825},{10035,825},{10035,825},{10015,825},{10025,825},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.2,life=1.2,accurate=1,avoid=1,critical=1,decritical=1,}},
            },
            {
                [1]={reserveTroop=702000,tank={{10005,600},{10005,600},{10005,600},{10015,600},{10035,600},{10025,600},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.2,life=1.2,accurate=1,avoid=1,critical=1,decritical=1,}},
                [2]={reserveTroop=702000,tank={{10005,600},{10015,600},{10015,600},{10015,600},{10035,600},{10025,600},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.2,life=1.2,accurate=1,avoid=1,critical=1,decritical=1,}},
                [3]={reserveTroop=702000,tank={{10005,600},{10025,600},{10025,600},{10025,600},{10015,600},{10035,600},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.2,life=1.2,accurate=1,avoid=1,critical=1,decritical=1,}},
                [4]={reserveTroop=702000,tank={{10005,600},{10035,600},{10035,600},{10035,600},{10015,600},{10025,600},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.2,life=1.2,accurate=1,avoid=1,critical=1,decritical=1,}},
            },
        },
        {
            {
                [1]={reserveTroop=1316250,tank={{10005,1125},{10005,1125},{10005,1125},{10015,1125},{10035,1125},{10025,1125},},skill={s101=4,s102=4,s103=4,s104=4,},attributeUp={attack=1.3,life=1.3,accurate=1,avoid=1,critical=1,decritical=1,}},
                [2]={reserveTroop=1316250,tank={{10005,1125},{10015,1125},{10015,1125},{10015,1125},{10035,1125},{10025,1125},},skill={s101=4,s102=4,s103=4,s104=4,},attributeUp={attack=1.3,life=1.3,accurate=1,avoid=1,critical=1,decritical=1,}},
                [3]={reserveTroop=1316250,tank={{10005,1125},{10025,1125},{10025,1125},{10025,1125},{10015,1125},{10035,1125},},skill={s101=4,s102=4,s103=4,s104=4,},attributeUp={attack=1.3,life=1.3,accurate=1,avoid=1,critical=1,decritical=1,}},
                [4]={reserveTroop=1316250,tank={{10005,1125},{10035,1125},{10035,1125},{10035,1125},{10015,1125},{10025,1125},},skill={s101=4,s102=4,s103=4,s104=4,},attributeUp={attack=1.3,life=1.3,accurate=1,avoid=1,critical=1,decritical=1,}},
            },
            {
                [1]={reserveTroop=877500,tank={{10005,750},{10005,750},{10005,750},{10015,750},{10035,750},{10025,750},},skill={s101=3,s102=3,s103=3,s104=3,},attributeUp={attack=1.3,life=1.3,accurate=1,avoid=1,critical=1,decritical=1,}},
                [2]={reserveTroop=877500,tank={{10005,750},{10015,750},{10015,750},{10015,750},{10035,750},{10025,750},},skill={s101=3,s102=3,s103=3,s104=3,},attributeUp={attack=1.3,life=1.3,accurate=1,avoid=1,critical=1,decritical=1,}},
                [3]={reserveTroop=877500,tank={{10005,750},{10025,750},{10025,750},{10025,750},{10015,750},{10035,750},},skill={s101=3,s102=3,s103=3,s104=3,},attributeUp={attack=1.3,life=1.3,accurate=1,avoid=1,critical=1,decritical=1,}},
                [4]={reserveTroop=877500,tank={{10005,750},{10035,750},{10035,750},{10035,750},{10015,750},{10025,750},},skill={s101=3,s102=3,s103=3,s104=3,},attributeUp={attack=1.3,life=1.3,accurate=1,avoid=1,critical=1,decritical=1,}},
            },
        },
        {
            {
                [1]={reserveTroop=1491750,tank={{10005,1275},{10005,1275},{10005,1275},{10015,1275},{10035,1275},{10025,1275},},skill={s101=6,s102=6,s103=6,s104=6,},attributeUp={attack=1.4,life=1.4,accurate=1,avoid=1,critical=1,decritical=1,}},
                [2]={reserveTroop=1491750,tank={{10005,1275},{10015,1275},{10015,1275},{10015,1275},{10035,1275},{10025,1275},},skill={s101=6,s102=6,s103=6,s104=6,},attributeUp={attack=1.4,life=1.4,accurate=1,avoid=1,critical=1,decritical=1,}},
                [3]={reserveTroop=1491750,tank={{10005,1275},{10025,1275},{10025,1275},{10025,1275},{10015,1275},{10035,1275},},skill={s101=6,s102=6,s103=6,s104=6,},attributeUp={attack=1.4,life=1.4,accurate=1,avoid=1,critical=1,decritical=1,}},
                [4]={reserveTroop=1491750,tank={{10005,1275},{10035,1275},{10035,1275},{10035,1275},{10015,1275},{10025,1275},},skill={s101=6,s102=6,s103=6,s104=6,},attributeUp={attack=1.4,life=1.4,accurate=1,avoid=1,critical=1,decritical=1,}},
            },
            {
                [1]={reserveTroop=1228500,tank={{10005,1050},{10005,1050},{10005,1050},{10015,1050},{10035,1050},{10025,1050},},skill={s101=5,s102=5,s103=5,s104=5,},attributeUp={attack=1.4,life=1.4,accurate=1,avoid=1,critical=1,decritical=1,}},
                [2]={reserveTroop=1228500,tank={{10005,1050},{10015,1050},{10015,1050},{10015,1050},{10035,1050},{10025,1050},},skill={s101=5,s102=5,s103=5,s104=5,},attributeUp={attack=1.4,life=1.4,accurate=1,avoid=1,critical=1,decritical=1,}},
                [3]={reserveTroop=1228500,tank={{10005,1050},{10025,1050},{10025,1050},{10025,1050},{10015,1050},{10035,1050},},skill={s101=5,s102=5,s103=5,s104=5,},attributeUp={attack=1.4,life=1.4,accurate=1,avoid=1,critical=1,decritical=1,}},
                [4]={reserveTroop=1228500,tank={{10005,1050},{10035,1050},{10035,1050},{10035,1050},{10015,1050},{10025,1050},},skill={s101=5,s102=5,s103=5,s104=5,},attributeUp={attack=1.4,life=1.4,accurate=1,avoid=1,critical=1,decritical=1,}},
            },
        },
        {
            {
                [1]={reserveTroop=2369250,tank={{10005,2025},{10005,2025},{10005,2025},{10015,2025},{10035,2025},{10025,2025},},skill={s101=8,s102=8,s103=8,s104=8,},attributeUp={attack=1.8,life=1.8,accurate=1,avoid=1,critical=1,decritical=1,}},
                [2]={reserveTroop=2369250,tank={{10005,2025},{10015,2025},{10015,2025},{10015,2025},{10035,2025},{10025,2025},},skill={s101=8,s102=8,s103=8,s104=8,},attributeUp={attack=1.8,life=1.8,accurate=1,avoid=1,critical=1,decritical=1,}},
                [3]={reserveTroop=2369250,tank={{10005,2025},{10025,2025},{10025,2025},{10025,2025},{10015,2025},{10035,2025},},skill={s101=8,s102=8,s103=8,s104=8,},attributeUp={attack=1.8,life=1.8,accurate=1,avoid=1,critical=1,decritical=1,}},
                [4]={reserveTroop=2369250,tank={{10005,2025},{10035,2025},{10035,2025},{10035,2025},{10015,2025},{10025,2025},},skill={s101=8,s102=8,s103=8,s104=8,},attributeUp={attack=1.8,life=1.8,accurate=1,avoid=1,critical=1,decritical=1,}},
            },
            {
                [1]={reserveTroop=1755000,tank={{10005,1500},{10005,1500},{10005,1500},{10015,1500},{10035,1500},{10025,1500},},skill={s101=7,s102=7,s103=7,s104=7,},attributeUp={attack=1.8,life=1.8,accurate=1,avoid=1,critical=1,decritical=1,}},
                [2]={reserveTroop=1755000,tank={{10005,1500},{10015,1500},{10015,1500},{10015,1500},{10035,1500},{10025,1500},},skill={s101=7,s102=7,s103=7,s104=7,},attributeUp={attack=1.8,life=1.8,accurate=1,avoid=1,critical=1,decritical=1,}},
                [3]={reserveTroop=1755000,tank={{10005,1500},{10025,1500},{10025,1500},{10025,1500},{10015,1500},{10035,1500},},skill={s101=7,s102=7,s103=7,s104=7,},attributeUp={attack=1.8,life=1.8,accurate=1,avoid=1,critical=1,decritical=1,}},
                [4]={reserveTroop=1755000,tank={{10005,1500},{10035,1500},{10035,1500},{10035,1500},{10015,1500},{10025,1500},},skill={s101=7,s102=7,s103=7,s104=7,},attributeUp={attack=1.8,life=1.8,accurate=1,avoid=1,critical=1,decritical=1,}},
            },
        },
    },
    
    --1001-1005为配置组,1-4,11-14为id  低于等于10 为小城城防,大于10为大城城防
    --skill101命中,102闪避,103暴击,104装甲 属性计算方式为加法
    --attack攻击,life血量,accurate命中,avoid闪避,critical暴击,decritical装甲 属性计算方式为乘法
    npc={
        {
            {
                [1]={tank={{10005,900},{10005,900},{10005,900},{10015,900},{10035,900},{10025,900},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.5,life=1,accurate=1,avoid=1,critical=1,decritical=1,},fight=1059492},
                [2]={tank={{10005,900},{10015,900},{10015,900},{10015,900},{10035,900},{10025,900},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.5,life=1,accurate=1,avoid=1,critical=1,decritical=1,},fight=1081488},
                [3]={tank={{10005,900},{10025,900},{10025,900},{10025,900},{10015,900},{10035,900},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.5,life=1,accurate=1,avoid=1,critical=1,decritical=1,},fight=1103485},
                [4]={tank={{10005,900},{10035,900},{10035,900},{10035,900},{10015,900},{10025,900},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.5,life=1,accurate=1,avoid=1,critical=1,decritical=1,},fight=1132813},
            },
            {
                [1]={tank={{10005,675},{10005,675},{10005,675},{10015,675},{10035,675},{10025,675},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.5,life=1,accurate=1,avoid=1,critical=1,decritical=1,},fight=876118},
                [2]={tank={{10005,675},{10015,675},{10015,675},{10015,675},{10035,675},{10025,675},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.5,life=1,accurate=1,avoid=1,critical=1,decritical=1,},fight=894308},
                [3]={tank={{10005,675},{10025,675},{10025,675},{10025,675},{10015,675},{10035,675},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.5,life=1,accurate=1,avoid=1,critical=1,decritical=1,},fight=912497},
                [4]={tank={{10005,675},{10035,675},{10035,675},{10035,675},{10015,675},{10025,675},},skill={s101=2,s102=2,s103=2,s104=2,},attributeUp={attack=1.5,life=1,accurate=1,avoid=1,critical=1,decritical=1,},fight=936749},
            },
        },
        {
            {
                [1]={tank={{10005,1050},{10005,1050},{10005,1050},{10015,1050},{10035,1050},{10025,1050},},skill={s101=4,s102=4,s103=4,s104=4,},attributeUp={attack=3,life=2,accurate=1,avoid=1,critical=1,decritical=1,},fight=4022052},
                [2]={tank={{10005,1050},{10015,1050},{10015,1050},{10015,1050},{10035,1050},{10025,1050},},skill={s101=4,s102=4,s103=4,s104=4,},attributeUp={attack=3,life=2,accurate=1,avoid=1,critical=1,decritical=1,},fight=4105555},
                [3]={tank={{10005,1050},{10025,1050},{10025,1050},{10025,1050},{10015,1050},{10035,1050},},skill={s101=4,s102=4,s103=4,s104=4,},attributeUp={attack=3,life=2,accurate=1,avoid=1,critical=1,decritical=1,},fight=4189057},
                [4]={tank={{10005,1050},{10035,1050},{10035,1050},{10035,1050},{10015,1050},{10025,1050},},skill={s101=4,s102=4,s103=4,s104=4,},attributeUp={attack=3,life=2,accurate=1,avoid=1,critical=1,decritical=1,},fight=4300394},
            },
            {
                [1]={tank={{10005,750},{10005,750},{10005,750},{10015,750},{10035,750},{10025,750},},skill={s101=3,s102=3,s103=3,s104=3,},attributeUp={attack=3,life=2,accurate=1,avoid=1,critical=1,decritical=1,},fight=2629875},
                [2]={tank={{10005,750},{10015,750},{10015,750},{10015,750},{10035,750},{10025,750},},skill={s101=3,s102=3,s103=3,s104=3,},attributeUp={attack=3,life=2,accurate=1,avoid=1,critical=1,decritical=1,},fight=2684474},
                [3]={tank={{10005,750},{10025,750},{10025,750},{10025,750},{10015,750},{10035,750},},skill={s101=3,s102=3,s103=3,s104=3,},attributeUp={attack=3,life=2,accurate=1,avoid=1,critical=1,decritical=1,},fight=2739073},
                [4]={tank={{10005,750},{10035,750},{10035,750},{10035,750},{10015,750},{10025,750},},skill={s101=3,s102=3,s103=3,s104=3,},attributeUp={attack=3,life=2,accurate=1,avoid=1,critical=1,decritical=1,},fight=2811873},
            },
        },
        {
            {
                [1]={tank={{10005,1200},{10005,1200},{10005,1200},{10015,1200},{10035,1200},{10025,1200},},skill={s101=6,s102=6,s103=6,s104=6,},attributeUp={attack=4.5,life=3,accurate=1,avoid=1,critical=1,decritical=1,},fight=10616909},
                [2]={tank={{10005,1200},{10015,1200},{10015,1200},{10015,1200},{10035,1200},{10025,1200},},skill={s101=6,s102=6,s103=6,s104=6,},attributeUp={attack=4.5,life=3,accurate=1,avoid=1,critical=1,decritical=1,},fight=10837330},
                [3]={tank={{10005,1200},{10025,1200},{10025,1200},{10025,1200},{10015,1200},{10035,1200},},skill={s101=6,s102=6,s103=6,s104=6,},attributeUp={attack=4.5,life=3,accurate=1,avoid=1,critical=1,decritical=1,},fight=11057750},
                [4]={tank={{10005,1200},{10035,1200},{10035,1200},{10035,1200},{10015,1200},{10025,1200},},skill={s101=6,s102=6,s103=6,s104=6,},attributeUp={attack=4.5,life=3,accurate=1,avoid=1,critical=1,decritical=1,},fight=11351644},
            },
            {
                [1]={tank={{10005,900},{10005,900},{10005,900},{10015,900},{10035,900},{10025,900},},skill={s101=5,s102=5,s103=5,s104=5,},attributeUp={attack=4.5,life=3,accurate=1,avoid=1,critical=1,decritical=1,},fight=7353674},
                [2]={tank={{10005,900},{10015,900},{10015,900},{10015,900},{10035,900},{10025,900},},skill={s101=5,s102=5,s103=5,s104=5,},attributeUp={attack=4.5,life=3,accurate=1,avoid=1,critical=1,decritical=1,},fight=7506345},
                [3]={tank={{10005,900},{10025,900},{10025,900},{10025,900},{10015,900},{10035,900},},skill={s101=5,s102=5,s103=5,s104=5,},attributeUp={attack=4.5,life=3,accurate=1,avoid=1,critical=1,decritical=1,},fight=7659017},
                [4]={tank={{10005,900},{10035,900},{10035,900},{10035,900},{10015,900},{10025,900},},skill={s101=5,s102=5,s103=5,s104=5,},attributeUp={attack=4.5,life=3,accurate=1,avoid=1,critical=1,decritical=1,},fight=7862579},
            },
        },
        {
            {
                [1]={tank={{10005,1500},{10005,1500},{10005,1500},{10015,1500},{10035,1500},{10025,1500},},skill={s101=8,s102=8,s103=8,s104=8,},attributeUp={attack=6,life=4,accurate=1,avoid=1,critical=1,decritical=1,},fight=25254691},
                [2]={tank={{10005,1500},{10015,1500},{10015,1500},{10015,1500},{10035,1500},{10025,1500},},skill={s101=8,s102=8,s103=8,s104=8,},attributeUp={attack=6,life=4,accurate=1,avoid=1,critical=1,decritical=1,},fight=25779010},
                [3]={tank={{10005,1500},{10025,1500},{10025,1500},{10025,1500},{10015,1500},{10035,1500},},skill={s101=8,s102=8,s103=8,s104=8,},attributeUp={attack=6,life=4,accurate=1,avoid=1,critical=1,decritical=1,},fight=26303328},
                [4]={tank={{10005,1500},{10035,1500},{10035,1500},{10035,1500},{10015,1500},{10025,1500},},skill={s101=8,s102=8,s103=8,s104=8,},attributeUp={attack=6,life=4,accurate=1,avoid=1,critical=1,decritical=1,},fight=27002420},
            },
            {
                [1]={tank={{10005,1125},{10005,1125},{10005,1125},{10015,1125},{10035,1125},{10025,1125},},skill={s101=7,s102=7,s103=7,s104=7,},attributeUp={attack=6,life=4,accurate=1,avoid=1,critical=1,decritical=1,},fight=17672114},
                [2]={tank={{10005,1125},{10015,1125},{10015,1125},{10015,1125},{10035,1125},{10025,1125},},skill={s101=7,s102=7,s103=7,s104=7,},attributeUp={attack=6,life=4,accurate=1,avoid=1,critical=1,decritical=1,},fight=18039009},
                [3]={tank={{10005,1125},{10025,1125},{10025,1125},{10025,1125},{10015,1125},{10035,1125},},skill={s101=7,s102=7,s103=7,s104=7,},attributeUp={attack=6,life=4,accurate=1,avoid=1,critical=1,decritical=1,},fight=18405905},
                [4]={tank={{10005,1125},{10035,1125},{10035,1125},{10035,1125},{10015,1125},{10025,1125},},skill={s101=7,s102=7,s103=7,s104=7,},attributeUp={attack=6,life=4,accurate=1,avoid=1,critical=1,decritical=1,},fight=18895098},
            },
        },
        {
            {
                [1]={tank={{10005,1800},{10005,1800},{10005,1800},{10015,1800},{10035,1800},{10025,1800},},skill={s101=9,s102=9,s103=9,s104=9,},attributeUp={attack=7.5,life=5,accurate=1,avoid=1,critical=1,decritical=1,},fight=47403444},
                [2]={tank={{10005,1800},{10015,1800},{10015,1800},{10015,1800},{10035,1800},{10025,1800},},skill={s101=9,s102=9,s103=9,s104=9,},attributeUp={attack=7.5,life=5,accurate=1,avoid=1,critical=1,decritical=1,},fight=48387598},
                [3]={tank={{10005,1800},{10025,1800},{10025,1800},{10025,1800},{10015,1800},{10035,1800},},skill={s101=9,s102=9,s103=9,s104=9,},attributeUp={attack=7.5,life=5,accurate=1,avoid=1,critical=1,decritical=1,},fight=49371753},
                [4]={tank={{10005,1800},{10035,1800},{10035,1800},{10035,1800},{10015,1800},{10025,1800},},skill={s101=9,s102=9,s103=9,s104=9,},attributeUp={attack=7.5,life=5,accurate=1,avoid=1,critical=1,decritical=1,},fight=50683959},
            },
            {
                [1]={tank={{10005,1350},{10005,1350},{10005,1350},{10015,1350},{10035,1350},{10025,1350},},skill={s101=9,s102=9,s103=9,s104=9,},attributeUp={attack=7.5,life=5,accurate=1,avoid=1,critical=1,decritical=1,},fight=36520000},
                [2]={tank={{10005,1350},{10015,1350},{10015,1350},{10015,1350},{10035,1350},{10025,1350},},skill={s101=9,s102=9,s103=9,s104=9,},attributeUp={attack=7.5,life=5,accurate=1,avoid=1,critical=1,decritical=1,},fight=37278201},
                [3]={tank={{10005,1350},{10025,1350},{10025,1350},{10025,1350},{10015,1350},{10035,1350},},skill={s101=9,s102=9,s103=9,s104=9,},attributeUp={attack=7.5,life=5,accurate=1,avoid=1,critical=1,decritical=1,},fight=38036402},
                [4]={tank={{10005,1350},{10035,1350},{10035,1350},{10035,1350},{10015,1350},{10025,1350},},skill={s101=9,s102=9,s103=9,s104=9,},attributeUp={attack=7.5,life=5,accurate=1,avoid=1,critical=1,decritical=1,},fight=39047336},
            },
        },
    },
    rankLast=30, -- 赛季持续时间/天
     -- 房间等级对应的分数上限 -- {房间等级，分数上限}
    roomLevel={{1,206},{2,221},{3,246},{4,287},{5,344},{6,421},{7,521},{8,645},{9,796},{10,977},{11,1190},{12,1436},{13,1718},{14,2039},{15,2400},{16,0},},
     -- 各个分数对应段位 
    rankTitle={206,221,246,287,344,421,521,645,796,977,1190,1436,1718,2039,2400,},
    rankPrt=287, -- 积分低于该值则不扣分
    rankSeasonChg={{206,0,200},{221,0,200},{246,0,200},{287,0,247},{344,0,247},{421,0,247},{521,0,288},{645,0,288},{796,0,288},{977,0,422},{1190,0,422},{1436,0,422},{1718,0,522},{2039,0,522},{2400,0,522},{999999,0,797},}, -- 下赛季积分改变规则 -- {分数上限，乘数，底数} -- 下赛季分数 = 本赛季分数*乘数 + 底数 
     -- 定级赛阶段的系数 -- {分数上限，初始分数，定级赛分数加减倍数}
    rankInit={{10000000,200,1},{50000000,210,1.1},{1500000000,220,1.1},{4000000000,240,1.1},{10000000000,268,1.1},{20000000000,335,1.1},{45000000000,380,1.1},{100000000000,421,1.1},},
     -- 每场比赛结束后的分数结算系数 -- 分别为单人胜利得分系数，结盟胜利得分系数，消灭得分系数
    --击杀个人胜利得分系数
    winEff=1,
    --失败个人得分系数
    loseEff=0,
    --常用系数
    K=128,
    --单人胜利
    soloWinValue=100,
    --联盟胜利
    allWinValue=80,
    --平局
    drawValue=20,
    --失败
    loseValue=10,
    --胜利额外参数
    doneEff=20,
    --连败值阈值
    loseSteakPtr=-64,
     -- 赛季奖励（每赛季发放一次）
    reward={
        {reward={p={{p5001=1,index=2},{p3361=400,index=4}},u={{gems=20,index=1}},am={{exp=200,index=3}}},severreward={userinfo_gems=20,props_p5001=1,armor_exp=200}},
        {reward={p={{p5001=2,index=2},{p3361=1000,index=4}},u={{gems=60,index=1}},am={{exp=400,index=3}}},severreward={userinfo_gems=60,props_p5001=2,armor_exp=400}},
        {reward={p={{p5001=3,index=2},{p3361=1600,index=4}},u={{gems=100,index=1}},am={{exp=600,index=3}}},severreward={userinfo_gems=100,props_p5001=3,armor_exp=600}},
        {reward={p={{p5001=4,index=2},{p3361=2400,index=4}},u={{gems=150,index=1}},am={{exp=1000,index=3}}},severreward={userinfo_gems=150,props_p5001=4,armor_exp=1000}},
        {reward={p={{p5001=5,index=2},{p3361=3000,index=4}},u={{gems=180,index=1}},am={{exp=1200,index=3}}},severreward={userinfo_gems=180,props_p5001=5,armor_exp=1200}},
        {reward={p={{p5001=6,index=2},{p3361=3600,index=4}},u={{gems=210,index=1}},am={{exp=1400,index=3}}},severreward={userinfo_gems=210,props_p5001=6,armor_exp=1400}},
        {reward={p={{p5001=7,index=2},{p3361=4400,index=4}},u={{gems=240,index=1}},am={{exp=1800,index=3}}},severreward={userinfo_gems=240,props_p5001=7,armor_exp=1800}},
        {reward={p={{p5001=8,index=2},{p3361=5000,index=4}},u={{gems=270,index=1}},am={{exp=2000,index=3}}},severreward={userinfo_gems=270,props_p5001=8,armor_exp=2000}},
        {reward={p={{p5001=9,index=2},{p3361=5600,index=4}},u={{gems=300,index=1}},am={{exp=2200,index=3}}},severreward={userinfo_gems=300,props_p5001=9,armor_exp=2200}},
        {reward={p={{p5001=10,index=2},{p3361=6400,index=4}},u={{gems=330,index=1}},am={{exp=2600,index=3}}},severreward={userinfo_gems=330,props_p5001=10,armor_exp=2600}},
        {reward={p={{p5001=11,index=2},{p3361=7000,index=4}},u={{gems=360,index=1}},am={{exp=2800,index=3}}},severreward={userinfo_gems=360,props_p5001=11,armor_exp=2800}},
        {reward={p={{p5001=12,index=2},{p3361=7600,index=4}},u={{gems=390,index=1}},am={{exp=3000,index=3}}},severreward={userinfo_gems=390,props_p5001=12,armor_exp=3000}},
        {reward={p={{p5001=13,index=2},{p3361=8400,index=4}},u={{gems=420,index=1}},am={{exp=3600,index=3}}},severreward={userinfo_gems=420,props_p5001=13,armor_exp=3600}},
        {reward={p={{p5001=14,index=2},{p3361=9000,index=4}},u={{gems=450,index=1}},am={{exp=4000,index=3}}},severreward={userinfo_gems=450,props_p5001=14,armor_exp=4000}},
        {reward={p={{p5001=15,index=2},{p3361=9600,index=4}},u={{gems=480,index=1}},am={{exp=4400,index=3}}},severreward={userinfo_gems=480,props_p5001=15,armor_exp=4400}},
        {reward={p={{p5001=16,index=2},{p3361=12000,index=4}},u={{gems=510,index=1}},am={{exp=5000,index=3}}},severreward={userinfo_gems=510,props_p5001=16,armor_exp=5000}},
    },
    seasonpoint={400,1000,1600,2400,3000,3600,4400,5000,5600,6400,7000,7600,8400,9000,9600,12000},
     -- 商店开放所需分数
    shopTitleLimit={246,421,796,1436,2400},
    taskShop={ -- 物品={每赛季限购次数，需要任务分数，前端奖励，后端奖励}
        {  -- 商店 1
            i1={bn=3,p=1250,r={u={exp=50000}},sr={userinfo_exp=50000}},
            i2={bn=3,p=250,r={am={exp=1000}},sr={armor_exp=1000}},
            i3={bn=3,p=690,r={o={a10005=5}},sr={troops_a10005=5}},
            i4={bn=3,p=980,r={o={a10015=5}},sr={troops_a10015=5}},
            i5={bn=3,p=1300,r={o={a10025=5}},sr={troops_a10025=5}},
            i6={bn=3,p=1520,r={o={a10035=5}},sr={troops_a10035=5}},
            i7={bn=5,p=400,r={e={p4=1000}},sr={accessory_p4=1000}},
            i8={bn=10,p=1900,r={p={p2=1}},sr={props_p2=1}},
        },
        {  -- 商店 2
            i1={bn=3,p=1250,r={u={exp=50000}},sr={userinfo_exp=50000}},
            i2={bn=5,p=500,r={am={exp=2000}},sr={armor_exp=2000}},
            i3={bn=3,p=686,r={o={a10005=5}},sr={troops_a10005=5}},
            i4={bn=3,p=980,r={o={a10015=5}},sr={troops_a10015=5}},
            i5={bn=3,p=1300,r={o={a10025=5}},sr={troops_a10025=5}},
            i6={bn=3,p=1520,r={o={a10035=5}},sr={troops_a10035=5}},
            i7={bn=5,p=400,r={e={p4=1000}},sr={accessory_p4=1000}},
            i8={bn=10,p=4800,r={p={p3=1}},sr={props_p3=1}},
        },
        {  -- 商店 3
            i1={bn=5,p=1250,r={u={exp=50000}},sr={userinfo_exp=50000}},
            i2={bn=3,p=750,r={am={exp=3000}},sr={armor_exp=3000}},
            i3={bn=3,p=686,r={o={a10005=5}},sr={troops_a10005=5}},
            i4={bn=3,p=980,r={o={a10015=5}},sr={troops_a10015=5}},
            i5={bn=3,p=1300,r={o={a10025=5}},sr={troops_a10025=5}},
            i6={bn=3,p=1520,r={o={a10035=5}},sr={troops_a10035=5}},
            i7={bn=10,p=1000,r={e={p6=10}},sr={accessory_p6=10}},
            i8={bn=20,p=1000,r={e={p3=50}},sr={accessory_p3=50}},
        },
        {  -- 商店 4
            i1={bn=5,p=1250,r={u={exp=50000}},sr={userinfo_exp=50000}},
            i2={bn=3,p=1000,r={am={exp=4000}},sr={armor_exp=4000}},
            i3={bn=3,p=100,r={p={p3326=10}},sr={props_p3326=10}},
            i4={bn=3,p=1370,r={o={a10005=10}},sr={troops_a10005=10}},
            i5={bn=3,p=1960,r={o={a10015=10}},sr={troops_a10015=10}},
            i6={bn=3,p=2600,r={o={a10025=10}},sr={troops_a10025=10}},
            i7={bn=3,p=3040,r={o={a10035=10}},sr={troops_a10035=10}},
            i8={bn=50,p=1000,r={e={p5=2}},sr={accessory_p5=2}},
        },
        {  -- 商店 5
            i1={bn=10,p=1250,r={u={exp=50000}},sr={userinfo_exp=50000}},
            i2={bn=3,p=1250,r={am={exp=5000}},sr={armor_exp=5000}},
            i3={bn=5,p=100,r={p={p3326=10}},sr={props_p3326=10}},
            i4={bn=5,p=2060,r={o={a10005=15}},sr={troops_a10005=15}},
            i5={bn=5,p=2940,r={o={a10015=15}},sr={troops_a10015=15}},
            i6={bn=5,p=3900,r={o={a10025=15}},sr={troops_a10025=15}},
            i7={bn=5,p=4560,r={o={a10035=15}},sr={troops_a10035=15}},
            i8={bn=20,p=500,r={e={p2=5}},sr={accessory_p2=5}},
        },
        {  -- 商店 6
            i1={bn=10,p=1250,r={u={exp=50000}},sr={userinfo_exp=50000}},
            i2={bn=3,p=1500,r={am={exp=6000}},sr={armor_exp=6000}},
            i3={bn=5,p=100,r={p={p3326=10}},sr={props_p3326=10}},
            i4={bn=3,p=2745,r={o={a10005=20}},sr={troops_a10005=20}},
            i5={bn=3,p=3915,r={o={a10015=20}},sr={troops_a10015=20}},
            i6={bn=3,p=5205,r={o={a10025=20}},sr={troops_a10025=20}},
            i7={bn=3,p=6075,r={o={a10035=20}},sr={troops_a10035=20}},
            i8={bn=5,p=600,r={e={p4=2000}},sr={accessory_p4=2000}},
        },
    },
    --任务 type:1 指挥所最大等级，2 资源建筑最大等级，3 击杀敌军数量，4 曾经占领城市最多
    initTask = {"t1","t5","t9","t13"},
    task={
        t1={type=1,name="dailyTask_name_1001",desc="dailyTask_des_1001",icon="TankLv1.png",sort=1,point=20,conditions=2},
        t2={type=1,name="dailyTask_name_1002",desc="dailyTask_des_1002",icon="Icon_zhu_ji_di.png",sort=2,point=120,conditions=3},
        t3={type=1,name="dailyTask_name_1003",desc="dailyTask_des_1003",icon="Icon_ke_yan_zhong_xin.png",sort=3,point=220,conditions=4},
        t4={type=1,name="dailyTask_name_1004",desc="dailyTask_des_1004",icon="tech_fight_exp_up.png",sort=4,point=320,conditions=5},
        t5={type=2,name="dailyTask_name_1005",desc="dailyTask_des_1005",icon="icon_build.png",sort=5,point=20,conditions=5},
        t6={type=2,name="dailyTask_name_1006",desc="dailyTask_des_1006",icon="icon_supply_lines.png",sort=6,point=120,conditions=8},
        t7={type=2,name="dailyTask_name_1007",desc="dailyTask_des_1007",icon="recruitIcon.png",sort=7,point=220,conditions=12},
        t8={type=2,name="dailyTask_name_1008",desc="dailyTask_des_1008",icon="heroEquipLabIcon.png",sort=8,point=320,conditions=15},
        t9={type=3,name="dailyTask_name_1009",desc="dailyTask_des_1009",icon="Icon_mainui_02.png",sort=9,point=40,conditions=8000},
        t10={type=3,name="dailyTask_name_1010",desc="dailyTask_des_1010",icon="icon_alliance_war.png",sort=10,point=120,conditions=16000},
        t11={type=3,name="dailyTask_name_1011",desc="dailyTask_des_1011",icon="arenaIcon.png",sort=11,point=200,conditions=40000},
        t12={type=3,name="dailyTask_name_1012",desc="dailyTask_des_1012",icon="sw_3.png",sort=12,point=320,conditions=70000},
        t13={type=4,name="dailyTask_name_1013",desc="dailyTask_des_1013",icon="sw_2.png",sort=13,point=40,conditions=3},
        t14={type=4,name="dailyTask_name_1014",desc="dailyTask_des_1014",icon="epdtIcon.png",sort=14,point=80,conditions=8},
        t15={type=4,name="dailyTask_name_1015",desc="dailyTask_des_1015",icon="rebelIcon.png",sort=15,point=240,conditions=15},
        t16={type=4,name="dailyTask_name_1016",desc="dailyTask_des_1016",icon="emblemBuildIcon.png",sort=16,point=400,conditions=25},
    },
}
