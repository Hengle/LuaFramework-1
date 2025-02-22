local collect ={
    multiSelectType = true,
    [1]={
        --每次抽奖
        cost1=48,
        --五连抽价格
        cost2=216,
        --宝藏点数量
        treasureNum=8,
        serverreward ={
            --奖池
            pool1={
                {100},
                {280,280,10,80,80,80,30,30,30,30,5,600,600,600,200,200,200,10,10,10,5,200,100,100,1000,100,100,100,100,1000,100,100,10,10,100,10,10},
                {{"props_p446",5,},{"props_p447",1,},{"props_p448",1,},{"props_p451",1,},{"props_p452",1,},{"props_p453",1,},{"props_p454",1,},{"props_p455",1,},{"props_p456",1,},{"props_p457",1,},{"props_p458",1,},{"props_p469",1,},{"props_p470",1,},{"props_p471",1,},{"props_p472",1,},{"props_p473",1,},{"props_p474",1,},{"props_p475",1,},{"props_p476",1,},{"props_p477",1,},{"props_p481",1,},{"props_p933",1,},{"userexpedition_point",200,},{"userarena_point",200,},{"equip_e1",200,},{"equip_e2",200,},{"equip_e3",200,},{"userexpedition_point",500,},{"userarena_point",500,},{"equip_e1",500,},{"equip_e2",500,},{"equip_e3",500,},{"userexpedition_point",2000,},{"userarena_point",2000,},{"equip_e1",2000,},{"equip_e2",2000,},{"equip_e3",2000,}},
                score={3,4,10,7,7,7,10,10,10,10,12,5,5,5,7,7,7,10,10,10,12,5,4,4,4,4,4,7,7,7,7,7,12,12,12,12,12},
            },
            --展示奖池
            pool2={
                {100},
                {250,250,15,70,70,70,40,40,40,40,10,500,500,500,200,200,200,15,15,15,10,200,100,100,1000,100,100,100,100,1000,100,100,20,20,200,20,20},
                {{"props_p446",5,},{"props_p447",1,},{"props_p448",1,},{"props_p451",1,},{"props_p452",1,},{"props_p453",1,},{"props_p454",1,},{"props_p455",1,},{"props_p456",1,},{"props_p457",1,},{"props_p458",1,},{"props_p469",1,},{"props_p470",1,},{"props_p471",1,},{"props_p472",1,},{"props_p473",1,},{"props_p474",1,},{"props_p475",1,},{"props_p476",1,},{"props_p477",1,},{"props_p481",1,},{"props_p933",1,},{"userexpedition_point",200,},{"userarena_point",200,},{"equip_e1",200,},{"equip_e2",200,},{"equip_e3",200,},{"userexpedition_point",500,},{"userarena_point",500,},{"equip_e1",500,},{"equip_e2",500,},{"equip_e3",500,},{"userexpedition_point",2000,},{"userarena_point",2000,},{"equip_e1",2000,},{"equip_e2",2000,},{"equip_e3",2000,}},
                score={3,4,10,7,7,7,10,10,10,10,12,5,5,5,7,7,7,10,10,10,12,5,4,4,4,4,4,7,7,7,7,7,12,12,12,12,12},
            },
            --商店
            shopList={
                [1]={serverreward={"props_p4811",1},price=25,limit=20},
                [2]={serverreward={"props_p4812",1},price=50,limit=10},
                [3]={serverreward={"props_p933",1},price=15,limit=100},
                [4]={serverreward={"props_p481",1},price=300,limit=2},
                [5]={serverreward={"props_p458",1},price=100,limit=2},
                [6]={serverreward={"props_p485",1},price=500,limit=2},
                [7]={serverreward={"props_p486",1},price=500,limit=2},
                [8]={serverreward={"props_p487",1},price=500,limit=2},
                [9]={serverreward={"props_p482",1},price=500,limit=2},
                [10]={serverreward={"props_p483",1},price=500,limit=2},
                [11]={serverreward={"props_p484",1},price=500,limit=2},
            },
        },
        showList={f={{e1=2000,index=11},{e2=2000,index=12},{e3=2000,index=13}},m={{p=2000,index=10}},n={{p=2000,index=9}},p={{p451=1,index=1},{p469=1,index=2},{p470=1,index=3},{p471=1,index=4},{p454=1,index=5},{p472=1,index=6},{p473=1,index=7},{p474=1,index=8},{p481=1,index=14},{p458=1,index=15},{p475=1,index=16},{p476=1,index=17},{p477=1,index=18}}},    --前台展示列表
        flash={0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,2,2,2},    --闪光（1-橙，2-紫，3-蓝）
        --商店
        shopList={
            {reward={p={p4811=1}},index=1,price=25,limit=20},
            {reward={p={p4812=1}},index=2,price=50,limit=10},
            {reward={p={p933=1}},index=3,price=15,limit=100},
            {reward={p={p481=1}},index=4,price=300,limit=2},
            {reward={p={p458=1}},index=5,price=100,limit=2},
            {reward={p={p485=1}},index=6,price=500,limit=2},
            {reward={p={p486=1}},index=7,price=500,limit=2},
            {reward={p={p487=1}},index=8,price=500,limit=2},
            {reward={p={p482=1}},index=9,price=500,limit=2},
            {reward={p={p483=1}},index=10,price=500,limit=2},
            {reward={p={p484=1}},index=11,price=500,limit=2},
        },
    },
    [2]={
        --每次抽奖
        cost1=38,
        --五连抽价格
        cost2=171,
        --宝藏点数量
        treasureNum=8,
        serverreward ={
            --奖池
            pool1={
                {100},
                {280,200,1,50,50,50,20,20,20,20,600,600,600,200,200,200,500,200,200,2000,200,200,100,100,1000,100,100,2,2,20,2,2},
                {{"props_p446",5,},{"props_p447",1,},{"props_p448",1,},{"props_p451",1,},{"props_p452",1,},{"props_p453",1,},{"props_p454",1,},{"props_p455",1,},{"props_p456",1,},{"props_p457",1,},{"props_p469",1,},{"props_p470",1,},{"props_p471",1,},{"props_p472",1,},{"props_p473",1,},{"props_p474",1,},{"props_p933",1,},{"userexpedition_point",200,},{"userarena_point",200,},{"equip_e1",200,},{"equip_e2",200,},{"equip_e3",200,},{"userexpedition_point",500,},{"userarena_point",500,},{"equip_e1",500,},{"equip_e2",500,},{"equip_e3",500,},{"userexpedition_point",2000,},{"userarena_point",2000,},{"equip_e1",2000,},{"equip_e2",2000,},{"equip_e3",2000,}},
                score={3,4,10,7,7,7,10,10,10,10,5,5,5,7,7,7,5,4,4,4,4,4,7,7,7,7,7,12,12,12,12,12},
            },
            --展示奖池
            pool2={
                {100},
                {280,280,10,80,80,80,30,30,30,30,600,600,600,200,200,200,200,100,100,1000,100,100,100,100,1000,100,100,10,10,100,10,10},
                {{"props_p446",5,},{"props_p447",1,},{"props_p448",1,},{"props_p451",1,},{"props_p452",1,},{"props_p453",1,},{"props_p454",1,},{"props_p455",1,},{"props_p456",1,},{"props_p457",1,},{"props_p469",1,},{"props_p470",1,},{"props_p471",1,},{"props_p472",1,},{"props_p473",1,},{"props_p474",1,},{"props_p933",1,},{"userexpedition_point",200,},{"userarena_point",200,},{"equip_e1",200,},{"equip_e2",200,},{"equip_e3",200,},{"userexpedition_point",500,},{"userarena_point",500,},{"equip_e1",500,},{"equip_e2",500,},{"equip_e3",500,},{"userexpedition_point",2000,},{"userarena_point",2000,},{"equip_e1",2000,},{"equip_e2",2000,},{"equip_e3",2000,}},
                score={3,4,10,7,7,7,10,10,10,10,5,5,5,7,7,7,5,4,4,4,4,4,7,7,7,7,7,12,12,12,12,12},
            },
            --商店
            shopList={
                [1]={serverreward={"props_p933",1},price=15,limit=100},
                [2]={serverreward={"props_p4810",1},price=13,limit=100},
                [3]={serverreward={"props_p4811",1},price=25,limit=50},
                [4]={serverreward={"props_p451",1},price=25,limit=24},
                [5]={serverreward={"props_p452",1},price=25,limit=24},
                [6]={serverreward={"props_p453",1},price=25,limit=24},
                [7]={serverreward={"props_p454",1},price=50,limit=16},
                [8]={serverreward={"props_p455",1},price=50,limit=16},
                [9]={serverreward={"props_p456",1},price=50,limit=16},
                [10]={serverreward={"props_p457",1},price=50,limit=16},
            },
        },
        showList={f={{e1=2000,index=11},{e2=2000,index=12},{e3=2000,index=13}},m={{p=2000,index=10}},n={{p=2000,index=9}},p={{p451=1,index=1},{p469=1,index=2},{p470=1,index=3},{p471=1,index=4},{p454=1,index=5},{p472=1,index=6},{p473=1,index=7},{p474=1,index=8}}},    --前台展示列表
        flash={0,0,0,0,0,0,0,0,0,0,0,0,0},    --闪光（1-橙，2-紫，3-蓝）
        --商店
        shopList={
            {reward={p={p933=1}},index=1,price=15,limit=100},
            {reward={p={p4810=1}},index=2,price=13,limit=100},
            {reward={p={p4811=1}},index=3,price=25,limit=50},
            {reward={p={p451=1}},index=4,price=25,limit=24},
            {reward={p={p452=1}},index=5,price=25,limit=24},
            {reward={p={p453=1}},index=6,price=25,limit=24},
            {reward={p={p454=1}},index=7,price=50,limit=16},
            {reward={p={p455=1}},index=8,price=50,limit=16},
            {reward={p={p456=1}},index=9,price=50,limit=16},
            {reward={p={p457=1}},index=10,price=50,limit=16},
        },
    },
    [3]={
        --每次抽奖
        cost1=38,
        --五连抽价格
        cost2=171,
        --宝藏点数量
        treasureNum=8,
        serverreward ={
            --奖池
            pool1={
                {100},
                {50,80,5,20,20,20,20,200,200,200,500,150,150,1600,150,150,100,100,1000,100,100,2,2,20,2,2,1,1,10,1,1},
                {{"props_p446",5,},{"props_p447",1,},{"props_p448",1,},{"props_p454",1,},{"props_p455",1,},{"props_p456",1,},{"props_p457",1,},{"props_p472",1,},{"props_p473",1,},{"props_p474",1,},{"props_p933",1,},{"userexpedition_point",200,},{"userarena_point",200,},{"equip_e1",200,},{"equip_e2",200,},{"equip_e3",200,},{"userexpedition_point",500,},{"userarena_point",500,},{"equip_e1",500,},{"equip_e2",500,},{"equip_e3",500,},{"userexpedition_point",2000,},{"userarena_point",2000,},{"equip_e1",2000,},{"equip_e2",2000,},{"equip_e3",2000,},{"userexpedition_point",5000,},{"userarena_point",5000,},{"equip_e1",5000,},{"equip_e2",5000,},{"equip_e3",5000,}},
                score={3,4,10,10,10,10,10,7,7,7,5,4,4,4,4,4,7,7,7,7,7,12,12,12,12,12,12,12,12,12,12},
            },
            --展示奖池
            pool2={
                {100},
                {30,30,10,30,30,30,30,200,200,200,200,50,50,500,50,50,100,100,1000,100,100,20,20,200,20,20,5,5,50,5,5},
                {{"props_p446",5,},{"props_p447",1,},{"props_p448",1,},{"props_p454",1,},{"props_p455",1,},{"props_p456",1,},{"props_p457",1,},{"props_p472",1,},{"props_p473",1,},{"props_p474",1,},{"props_p933",1,},{"userexpedition_point",200,},{"userarena_point",200,},{"equip_e1",200,},{"equip_e2",200,},{"equip_e3",200,},{"userexpedition_point",500,},{"userarena_point",500,},{"equip_e1",500,},{"equip_e2",500,},{"equip_e3",500,},{"userexpedition_point",2000,},{"userarena_point",2000,},{"equip_e1",2000,},{"equip_e2",2000,},{"equip_e3",2000,},{"userexpedition_point",5000,},{"userarena_point",5000,},{"equip_e1",5000,},{"equip_e2",5000,},{"equip_e3",5000,}},
                score={3,4,10,10,10,10,10,7,7,7,5,4,4,4,4,4,7,7,7,7,7,12,12,12,12,12,12,12,12,12,12},
            },
            --商店
            shopList={
                [1]={serverreward={"props_p933",1},price=15,limit=100},
                [2]={serverreward={"props_p4811",1},price=25,limit=100},
                [3]={serverreward={"props_p454",1},price=50,limit=32},
                [4]={serverreward={"props_p455",1},price=50,limit=32},
                [5]={serverreward={"props_p456",1},price=50,limit=32},
                [6]={serverreward={"props_p457",1},price=50,limit=32},
            },
        },
        showList={f={{e1=5000,index=7},{e2=5000,index=8},{e3=5000,index=9}},m={{p=5000,index=6}},n={{p=5000,index=5}},p={{p472=1,index=1},{p473=1,index=2},{p474=1,index=3},{p454=1,index=4},{p455=1,index=10},{p456=1,index=11},{p457=1,index=12}}},    --前台展示列表
        flash={0,0,0,0,0,0,0,0,0,0,0,0},    --闪光（1-橙，2-紫，3-蓝）
        --商店
        shopList={
            {reward={p={p933=1}},index=1,price=15,limit=100},
            {reward={p={p4811=1}},index=2,price=25,limit=100},
            {reward={p={p454=1}},index=3,price=50,limit=32},
            {reward={p={p455=1}},index=4,price=50,limit=32},
            {reward={p={p456=1}},index=5,price=50,limit=32},
            {reward={p={p457=1}},index=6,price=50,limit=32},
        },
    },
}

return collect 
