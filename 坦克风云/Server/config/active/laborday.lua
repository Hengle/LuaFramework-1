local laborday={
    multiSelectType = true,
    [1]={
        sortid=231,
        type=1,
        --积分需求
        supportNeed={100,200,400,700,1000,1400,1800,2200,2600,3000},
        --各种加成情况（1-世界矿点采集速度加成。2-内矿产出速度加成。3-副本经验获得加成。4-世界地图行军速度加成。5-稀土修船消耗减少比例）
        upRate={0.5,0.5,0.3,1,0.3},
        serverreward={
            --奖励1
            gift1={userinfo_gold=5000000},
            --奖励2
            gift2={props_p282=10},
            --奖励3
            gift3={props_p277=100},
            --奖励4
            gift4={props_p276=20},
            --奖励5
            gift5={props_p275=10},
            --奖励6
            gift6={accessory_p6=20},
            --奖励7
            gift7={props_p4716=1},
            --奖励8
            gift8={props_p4717=1},
            --奖励9
            gift9={props_p4718=1},
            --奖励10
            gift10={props_p4719=1},
            --任务（标识，参数，排序，限制次数，积分获得，奖励）
            taskList={
                --采集X的铁铝钛油土
                {type="cj",num=1000000,index=1,limit=15,score=60,serverreward={props_p19=10}},
                --获得X的人物经验
                {type="ep",num=100000,index=2,limit=15,score=60,serverreward={props_p20=2}},
                --攻打X次海盗
                {type="fa",num=2,index=3,limit=15,score=60,serverreward={props_p988=2}},
                --充值钻石
                {type="gb",num=200,index=4,limit=50,score=30,serverreward={props_p279=5,props_p881=5}},
                --消费钻石X
                {type="xf",num=300,index=5,limit=50,score=30,serverreward={props_p277=30,props_p282=3}},
            },
            --商店
            shopList={
                [1]={serverreward={props_p4718=1},price=1000,limit=1},
                [2]={serverreward={props_p816=1},price=1300,limit=1},
                [3]={serverreward={props_p4712=1},price=2400,limit=1},
            },
        },
        rewardTb={
            gift={
                --奖励1
                {rechargeNum=100,gift={u={{gold=5000000,index=1}}}},
                --奖励2
                {rechargeNum=200,gift={p={{p282=10,index=1}}}},
                --奖励3
                {rechargeNum=400,gift={p={{p277=100,index=1}}}},
                --奖励4
                {rechargeNum=700,gift={p={{p276=20,index=1}}}},
                --奖励5
                {rechargeNum=1000,gift={p={{p275=10,index=1}}}},
                --奖励6
                {rechargeNum=1400,gift={e={{p6=20,index=1}}}},
                --奖励7
                {rechargeNum=1800,gift={p={{p4716=1,index=1}}}},
                --奖励8
                {rechargeNum=2200,gift={p={{p4717=1,index=1}}}},
                --奖励9
                {rechargeNum=2600,gift={p={{p4718=1,index=1}}}},
                --奖励10
                {rechargeNum=3000,gift={p={{p4719=1,index=1}}}},
            },
            --任务（标识，参数，排序，限制次数，积分获得，奖励）
            taskList={
                --采集X的铁铝钛油土
                {type="cj",price=1000000,index=1,limit=15,reward={p={{p19=10,index=1}},laborday={{laborday_a1=60,index=2}},}},
                --获得X的人物经验
                {type="ep",price=100000,index=2,limit=15,reward={p={{p20=2,index=1}},laborday={{laborday_a1=60,index=2}},}},
                --攻打X次海盗
                {type="fa",price=2,index=3,limit=15,reward={p={{p988=2,index=1}},laborday={{laborday_a1=60,index=2}},}},
                --充值钻石
                {type="gb",price=200,index=4,limit=50,reward={p={{p279=5,index=1},{p881=5,index=2}},laborday={{laborday_a1=30,index=3}},}},
                --消费钻石X
                {type="xf",price=300,index=5,limit=50,reward={p={{p277=30,index=1},{p282=3,index=2}},laborday={{laborday_a1=30,index=3}},}},
            },
            --商店
            shopList={
                {reward={p={p4718=1}},index=1,showValue=2000,price=1000,limit=1},
                {reward={p={p816=1}},index=2,showValue=2600,price=1300,limit=1},
                {reward={p={p4712=1}},index=3,showValue=4800,price=2400,limit=1},
                
            },
        },
    },
    [2]={
        sortid=231,
        type=1,
        --积分需求
        supportNeed={100,200,400,700,1000,1400,1800,2200,2600,3000},
        --各种加成情况（1-世界矿点采集速度加成。2-内矿产出速度加成。3-副本经验获得加成。4-世界地图行军速度加成。5-稀土修船消耗减少比例）
        upRate={0.5,0.5,0.3,1,0.3},
        serverreward={
            --奖励1
            gift1={props_p4803=1},
            --奖励2
            gift2={props_p4803=1},
            --奖励3
            gift3={props_p4803=2},
            --奖励4
            gift4={props_p4804=2},
            --奖励5
            gift5={props_p4804=2},
            --奖励6
            gift6={props_p4804=3},
            --奖励7
            gift7={props_p4806=3},
            --奖励8
            gift8={props_p4806=3},
            --奖励9
            gift9={props_p4806=5},
            --奖励10
            gift10={props_p4806=5},
            --任务（标识，参数，排序，限制次数，积分获得，奖励）
            taskList={
                --采集X的铁铝钛油土
                {type="cj",num=1000000,index=1,limit=15,score=60,serverreward={props_p19=10}},
                --获得X的人物经验
                {type="ep",num=100000,index=2,limit=15,score=60,serverreward={props_p20=2}},
                --攻打X次海盗
                {type="fa",num=2,index=3,limit=15,score=60,serverreward={props_p988=2}},
                --充值钻石
                {type="gb",num=200,index=4,limit=50,score=30,serverreward={props_p279=5,props_p881=5}},
                --消费钻石X
                {type="xf",num=300,index=5,limit=50,score=30,serverreward={props_p277=30,props_p282=3}},
            },
            --商店
            shopList={
                [1]={serverreward={props_p4718=1},price=1000,limit=1},
                [2]={serverreward={props_p4719=1},price=1500,limit=1},
                [3]={serverreward={props_p4708=1},price=2400,limit=1},
            },
        },
        rewardTb={
            gift={
                --奖励1
                {rechargeNum=100,gift={p={{p4803=1,index=1}}}},
                --奖励2
                {rechargeNum=200,gift={p={{p4803=1,index=1}}}},
                --奖励3
                {rechargeNum=400,gift={p={{p4803=2,index=1}}}},
                --奖励4
                {rechargeNum=700,gift={p={{p4804=2,index=1}}}},
                --奖励5
                {rechargeNum=1000,gift={p={{p4804=2,index=1}}}},
                --奖励6
                {rechargeNum=1400,gift={p={{p4804=3,index=1}}}},
                --奖励7
                {rechargeNum=1800,gift={p={{p4806=3,index=1}}}},
                --奖励8
                {rechargeNum=2200,gift={p={{p4806=3,index=1}}}},
                --奖励9
                {rechargeNum=2600,gift={p={{p4806=5,index=1}}}},
                --奖励10
                {rechargeNum=3000,gift={p={{p4806=5,index=1}}}},
            },
            --任务（标识，参数，排序，限制次数，积分获得，奖励）
            taskList={
                --采集X的铁铝钛油土
                {type="cj",price=1000000,index=1,limit=15,reward={p={{p19=10,index=1}},laborday={{laborday_a1=60,index=2}},}},
                --获得X的人物经验
                {type="ep",price=100000,index=2,limit=15,reward={p={{p20=2,index=1}},laborday={{laborday_a1=60,index=2}},}},
                --攻打X次海盗
                {type="fa",price=2,index=3,limit=15,reward={p={{p988=2,index=1}},laborday={{laborday_a1=60,index=2}},}},
                --充值钻石
                {type="gb",price=200,index=4,limit=50,reward={p={{p279=5,index=1},{p881=5,index=2}},laborday={{laborday_a1=30,index=3}},}},
                --消费钻石X
                {type="xf",price=300,index=5,limit=50,reward={p={{p277=30,index=1},{p282=3,index=2}},laborday={{laborday_a1=30,index=3}},}},
            },
            --商店
            shopList={
                {reward={p={p4718=1}},index=1,showValue=2000,price=1000,limit=1},
                {reward={p={p4719=1}},index=2,showValue=3000,price=1500,limit=1},
                {reward={p={p4708=1}},index=3,showValue=4800,price=2400,limit=1},
                
            },
        },
    },
}

return laborday
