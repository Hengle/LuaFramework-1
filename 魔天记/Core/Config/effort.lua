local effort={
[1]={1,'浑天镜法宝有什么用？','刷怪利器','一下秒屏','对镜自怜','硬气不想用',2,1},
[2]={2,'战斗伙伴怎么获得？','坑蒙拐骗','倾心结交','魅力征服','美食诱惑',2,1},
[3]={3,'夏天太热怎么办？','勤洗澡','冷饮伺候','锤空调','热死算逑',2,1},
[4]={4,'对于喵星人来说，什么样的铲屎官才是出色的？','有爱心','有同情心','手脚勤快','主要看气质',2,1},
[5]={5,'早晨太困，起不来怎么办？','努力睁眼','继续睡','起来嗨','无聊的问题',2,1},
[6]={6,'听说男生养狗比较容易脱单，你怎么看？','不靠谱','要不试试看','活该单身','两只单身狗',2,1},
[7]={7,'什么样的妹子最可爱？','有爱心','有内涵','主要看气质','妹子是什么',2,1},
[8]={8,'走在路上捡到古董怎么办？','要发财了','假的扔掉','上交国','睡醒了没',2,1},
[9]={9,'心情不好，没胃口怎么办？','少吃顺气','不吃减肥','一定要吃饱','你有饭钱吗',2,1},
[10]={10,'心情不好的时候，怎么办才能让自己高兴？','吃饭','睡觉','打豆豆','呵呵',2,1},
[11]={11,'每次看见别人臭美你都想干些什么？','翻白眼','揍他','骂他','我只是路过',2,1},
[12]={12,'有钱和有颜哪个更重要？','有颜','有钱','整容需要钱','滚去干活',2,1},
[13]={13,'以下哪个职业拥有恢复生命的技能？','天工宗','天妖谷','魔玄宗','太清门',2,1}
}
local ks={question_id=1,question=2,answer1=3,answer2=4,answer3=5,answer4=6,win=7,fail=8}
local base={__index=function(t,k)if k=='cks' then return ks end local ind=ks[k] return ind and t[ind] or nil end}for k,v in pairs(effort)do setmetatable(v,base)end base.__metatable=false
return effort
