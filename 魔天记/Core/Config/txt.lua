local txt={
[1]={1,'火族斥候会无限复活，修士请不要过多纠缠。',10000,1},
[2]={2,'腐化魔人分身出现，修士请尽量远离！！',20000,1},
[3]={3,'快释放控制技能，打断万骨人魔蓄力一击！',5000,1},
[4]={4,'受伤的梦萦蛊召唤出血源护法，想要回复生命值',5000,1},
[5]={5,'BOSS受到无敌光环庇护，请优先击杀灵魂替身',5000,1},
[6]={6,'哼，逼我使出全力，你们这是在自寻死路！',5000,1},
[7]={7,'请保护守护傀儡不受螟族妖兽的攻击',5000,1},
[8]={8,'妖兽头领带兵冲锋，注意躲避其封禁技能',5000,1},
[9]={9,'妖兽统帅亲自督战，注意其强力破防技能',5000,1},
[10]={10,'守护傀儡受到妖兽围攻，请速去解围',3500,1},
[11]={11,'驭火怪发现了你，小心他靠近后自爆',3500,2},
[12]={12,'驭火怪即将自爆，速速远离',3500,1},
[13]={13,'BOSS召唤出分身，请确保本体与分身的死亡间隔不超过5秒！',4500,1},
[14]={14,'BOSS5秒后进入狂暴状态',4500,1},
[15]={15,'清理掉替身小怪，可解除BOSS的无敌状态',4500,1},
[16]={16,'BOSS会定时释放降防技能，请注意走位躲避',5000,1},
[17]={17,'腐化魔人释放瘟疫病毒，注意远离被感染的玩家',5000,1},
[18]={18,'快走出预警圈外，躲避铁翼蝠王的破防攻击',5000,1},
[19]={19,'银鳞海族释放禁锢技能，注意走位躲避',3000,1},
[20]={20,'15秒后驭火怪释放全屏范围自爆',5000,1},
[21]={21,'驭火怪受到BOSS召唤而现身，注意躲避其自爆攻击',4000,1},
[22]={22,'螟族妖兽兵分两路，从左右两路涌来',4000,1},
[23]={23,'妖兽头领带兵冲锋，注意躲避封禁技能',4000,1},
[24]={24,'螟族大军来袭，真正的考验即将开始',4000,1},
[25]={25,'我若要你三更死，谁敢留你到五更...',4000,1},
[26]={26,'守护傀儡身受重伤，血量降至50%',4000,1},
[27]={27,'赤蛟召唤灼烧火雨，快躲开地上的警示圈！',3000,1},
[28]={28,'危险！快躲开红色预警范围',3000,1},
[29]={29,'快躲到BOSS后面去',3000,1},
[30]={30,'BOSS发动蓄力攻击，快躲开',3000,1},
[31]={31,'BOSS召唤龙卷风，道友速速远离',3000,1},
[32]={32,'BOSS钻入地面蓄势攻击，快跑到远处躲开他',5000,1},
[33]={33,'准备持续跑动走位，不要被地刺击中',6000,1},
[34]={34,'林彩羽：老娘要被怪干死了，快把这些海鲜拉走！',5000,1},
[35]={35,'林彩羽：道友，快快将我身边的怪物引走！',5000,1},
[36]={36,'保护林彩羽，若林彩羽阵亡，则副本挑战失败！',5000,1},
[37]={37,'魔主即将释放大范围必杀技，道友快快远离！',5000,1},
[38]={38,'恢复咒者：生命恢复，起死回生咒！',4000,1}
}
local ks={id=1,content=2,duratime=3,type=4}
local base={__index=function(t,k)if k=='cks' then return ks end local ind=ks[k] return ind and t[ind] or nil end}for k,v in pairs(txt)do setmetatable(v,base)end base.__metatable=false
return txt
