local mapArray = MEMapArray:new()
--mapArray:push({ id = "Bloody.Min.PlayerLevel", res_type = 0, res_id = 0, value = 10, desc = "血战开放玩家等级"})
--mapArray:push({ id = "Bloody.Min.Unit.Level", res_type = 0, res_id = 0, value = 10, desc = "血战最近上阵角色等级"})
mapArray:push({ id = "Bloody.Min.PlayerLevel", res_type = 0, res_id = 0, value = 1, desc = "血战开放玩家等级"})
mapArray:push({ id = "Bloody.Min.Unit.Level", res_type = 0, res_id = 0, value = 1, desc = "血战最近上阵角色等级"})
mapArray:push({ id = "Book.Capacity.Partner", res_type = 0, res_id = 0, value = 5, desc = "角色可装配秘籍个数"})
mapArray:push({ id = "Book.Capacity.TempBook", res_type = 0, res_id = 0, value = 8, desc = "临时秘籍背包容量"})
mapArray:push({ id = "Book.MaxQuality", res_type = 0, res_id = 0, value = 4, desc = "秘籍最大品质"})
mapArray:push({ id = "Book.Position1.OpenLevel", res_type = 0, res_id = 0, value = 25, desc = "第一个秘籍位开启等级"})
mapArray:push({ id = "Book.Position2.OpenLevel", res_type = 0, res_id = 0, value = 35, desc = "第二个秘籍位开启等级"})
mapArray:push({ id = "Book.Position3.OpenLevel", res_type = 0, res_id = 0, value = 45, desc = "第三个秘籍位开启等级"})
mapArray:push({ id = "Book.Position4.OpenLevel", res_type = 0, res_id = 0, value = 55, desc = "第四个秘籍位开启等级"})
mapArray:push({ id = "Book.Position5.OpenLevel", res_type = 0, res_id = 0, value = 65, desc = "第五个秘籍位开启等级"})
mapArray:push({ id = "Book.Sycee.Step.CallMaster", res_type = 0, res_id = 0, value = 4, desc = "召唤大师元宝增量"})
mapArray:push({ id = "Challenge.Free.Quick.Pass", res_type = 0, res_id = 0, value = 3, desc = "每天免费扫荡次数"})
mapArray:push({ id = "Challenge.Herolist.Fail.Jifen", res_type = 0, res_id = 0, value = 15, desc = "群豪谱战斗失败获得积分"})
mapArray:push({ id = "Challenge.Herolist.Win.Jifen", res_type = 0, res_id = 0, value = 30, desc = "群豪谱战斗胜利获得积分"})
mapArray:push({ id = "Challenge.Time.Chapter.buyCount", res_type = 0, res_id = 0, value = 20, desc = "关卡一次购买体力数量"})
mapArray:push({ id = "Challenge.Time.Chapter.cooltime", res_type = 0, res_id = 0, value = 1800000, desc = "体力恢复间隔，没XX时间恢复1点。"})
mapArray:push({ id = "Challenge.Time.Chapter.dailyBuyChallengeTimes", res_type = 0, res_id = 0, value = 1, desc = "默认每日可购买关卡体力"})
mapArray:push({ id = "Challenge.Time.Chapter.Levelup.Add", res_type = 0, res_id = 0, value = 5, desc = "玩家升级关卡体力增加值"})
mapArray:push({ id = "Challenge.Time.Chapter.NeedVIP", res_type = 0, res_id = 0, value = 0, desc = "可使用元宝恢复体力的VIP等级（仅前端限制）"})
mapArray:push({ id = "Challenge.Time.Chapter.price", res_type = 0, res_id = 0, value = 10, desc = "关卡体力，每次恢复花费元宝初始值"})
mapArray:push({ id = "Challenge.Time.Chapter.times", res_type = 0, res_id = 0, value = 20, desc = "关卡体力，初始值"})
mapArray:push({ id = "Challenge.Time.Climb.cooltime", res_type = 0, res_id = 0, value = 0, desc = "无量山战斗恢复挑战次数冷却时间(毫秒)，0表示无限长时间"})
mapArray:push({ id = "Challenge.Time.Climb.dailyBuyChallengeTimes", res_type = 0, res_id = 0, value = 0, desc = "默认每日可购买爬塔体力"})
mapArray:push({ id = "Challenge.Time.Climb.NeedVIP", res_type = 0, res_id = 0, value = 0, desc = "可使用元宝恢复爬塔挑战次数的VIP等级（仅前端限制）"})
mapArray:push({ id = "Challenge.Time.Climb.price", res_type = 0, res_id = 0, value = 50, desc = "爬塔战斗体力单价(元宝)"})
mapArray:push({ id = "Challenge.Time.Climb.times", res_type = 0, res_id = 0, value = 10, desc = "无量山战斗每日挑战次数"})
mapArray:push({ id = "Challenge.Time.Default.buyPower", res_type = 0, res_id = 0, value = 1, desc = "默认一次购买体力次数"})
mapArray:push({ id = "Challenge.Time.Herolist.buyCount", res_type = 0, res_id = 0, value = 5, desc = "群豪谱一次购买体力数量"})
mapArray:push({ id = "Challenge.Time.Herolist.cooltime", res_type = 0, res_id = 0, value = 0, desc = "群豪谱战斗恢复挑战次数冷却时间(毫秒)，0表示无限长时间"})
mapArray:push({ id = "Challenge.Time.HeroList.dailyBuyChallengeTimes", res_type = 0, res_id = 0, value = 0, desc = "默认每日可购买群豪谱体力"})
mapArray:push({ id = "Challenge.Time.Herolist.NeedVIP", res_type = 0, res_id = 0, value = 0, desc = "VIP3可使用元宝恢复群豪谱挑战次数的VIP等级（仅前端限制）"})
mapArray:push({ id = "Challenge.Time.Herolist.price", res_type = 0, res_id = 0, value = 100, desc = "群豪谱战斗体力单价(元宝)"})
mapArray:push({ id = "Challenge.Time.Herolist.times", res_type = 0, res_id = 0, value = 5, desc = "群豪谱每日挑战次数"})
mapArray:push({ id = "Challenge.Time.maxHistoryChallengeTimes", res_type = 0, res_id = 0, value = 100, desc = "额外获取最大挑战次数"})
mapArray:push({ id = "Challenge.Time.Skill.cooltime", res_type = 0, res_id = 0, value = 600000, desc = "技能点恢复冷却时间(毫秒)"})
mapArray:push({ id = "Challenge.Time.Skill.dailyBuyChallengeTimes", res_type = 0, res_id = 0, value = 0, desc = "默认每日可购买技能点体力"})
mapArray:push({ id = "Challenge.Time.Skill.NeedVIP", res_type = 0, res_id = 0, value = 0, desc = "可使用元宝恢复技能点的VIP等级（仅前端限制）"})
mapArray:push({ id = "Challenge.Time.Skill.price", res_type = 0, res_id = 0, value = 50, desc = "技能点单价(元宝0）"})
mapArray:push({ id = "Challenge.Time.Skill.times", res_type = 0, res_id = 0, value = 5, desc = "每日技能点数"})
mapArray:push({ id = "Challenge.Time.Treasure.cooltime", res_type = 0, res_id = 0, value = 300000, desc = "江湖宝藏战斗恢复挑战次数冷却时间(毫秒)，0表示无限长时间"})
mapArray:push({ id = "Challenge.Time.Treasure.dailyBuyChallengeTimes", res_type = 0, res_id = 0, value = 100, desc = "默认每日可购江湖宝藏塔体力"})
mapArray:push({ id = "Challenge.Time.Treasure.NeedVIP", res_type = 0, res_id = 0, value = 0, desc = "可使用元宝恢复江湖宝藏挑战次数的VIP等级（仅前端限制）"})
mapArray:push({ id = "Challenge.Time.Treasure.price", res_type = 0, res_id = 0, value = 10, desc = "江湖宝藏战斗体力单价(元宝)"})
mapArray:push({ id = "Challenge.Time.Treasure.times", res_type = 0, res_id = 0, value = 1000, desc = "江湖宝藏战斗每日挑战次数"})
mapArray:push({ id = "Chat.Broadcast.GoodsId", res_type = 1, res_id = 30002, value = 1, desc = "广播道具(小喇叭)ID"})
mapArray:push({ id = "Climb.CarBon.Battle.startHour", res_type = 0, res_id = 0, value = 7, desc = "无量山万能副本几点钟开始"})
mapArray:push({ id = "Climb.Carbon.NeedLevelIndex1", res_type = 0, res_id = 0, value = 1, desc = "无量山万能副本到达第1层开放"})
mapArray:push({ id = "Equip.Intensify.Level.Player.Multi", res_type = 0, res_id = 0, value = 1, desc = "装备强化等级上限，与玩家主角角色等级的系数，使用在计算装备强化等级上限"})
mapArray:push({ id = "Equip.Refining.Consume.Goods", res_type = 1, res_id = 30021, value = 1, desc = "装备精炼消耗的物品以及个数配置。"})
mapArray:push({ id = "Equip.Refining.Lock.Consume", res_type = 4, res_id = 0, value = 5, desc = "装备精炼锁定一个属性位置所需要的元宝数量"})
mapArray:push({ id = "Equip.StrengthenMax.Multiple", res_type = 0, res_id = 0, value = 1, desc = "装备强化上限，等级的几倍？"})
mapArray:push({ id = "Escorting.Day.Total", res_type = 0, res_id = 0, value = 5, desc = "护驾的总天数"})
mapArray:push({ id = "Fight.AttackAnger", res_type = 0, res_id = 0, value = 20, desc = "普通攻击未致死增长怒气"})
mapArray:push({ id = "Fight.AttackDieAnger", res_type = 0, res_id = 0, value = 20, desc = "普通攻击致死增长怒气"})
mapArray:push({ id = "Fight.FullAnger", res_type = 0, res_id = 0, value = 200, desc = "战斗怒气上限"})
mapArray:push({ id = "Fight.HitAnger", res_type = 0, res_id = 0, value = 10, desc = "受击增长怒气"})
mapArray:push({ id = "Fight.init.anger", res_type = 0, res_id = 0, value = 50, desc = "战斗初始怒气"})
mapArray:push({ id = "Fight.SkillAttackAnger", res_type = 0, res_id = 0, value = 20, desc = "技能攻击未致死增长怒气"})
mapArray:push({ id = "Fight.SkillAttackDieAnger", res_type = 0, res_id = 0, value = 20, desc = "技能攻击致死增长怒气"})
mapArray:push({ id = "Gang.Level.Create", res_type = 0, res_id = 0, value = 15, desc = "创建帮派最低玩家等级"})
mapArray:push({ id = "Gang.Money.Buff_Building.Uplevel.Init", res_type = 0, res_id = 0, value = 10000, desc = "一级帮派繁荣建筑升级花费帮派资金"})
mapArray:push({ id = "Gang.Money.Goods_Building.Uplevel.Init", res_type = 0, res_id = 0, value = 10000, desc = "一级帮派贡献建筑升级花费帮派资金"})
mapArray:push({ id = "Gang.Money.Member.Dismiss", res_type = 0, res_id = 0, value = 200, desc = "开除帮派成员花费帮派资金"})
mapArray:push({ id = "Gang.Num.Building.Goods", res_type = 0, res_id = 0, value = 8, desc = "贡献建筑查出物品数量"})
mapArray:push({ id = "Gang.Num.Capacity.Init", res_type = 0, res_id = 0, value = 20, desc = "一级帮派成员容量"})
mapArray:push({ id = "Gang.Num.Capacity.Level_Step", res_type = 0, res_id = 0, value = 5, desc = "每升一级帮派容量增加"})
mapArray:push({ id = "Gang.Sycee.Buff_Building.Refresh", res_type = 4, res_id = 0, value = 20, desc = "刷新繁荣建筑花费元宝"})
mapArray:push({ id = "Gang.Sycee.Create", res_type = 4, res_id = 0, value = 200, desc = "创建帮派花费元宝"})
mapArray:push({ id = "Gang.Sycee.Goods_Building.Refresh", res_type = 4, res_id = 0, value = 20, desc = "刷新贡献建筑花费元宝"})
mapArray:push({ id = "Gang.Sycee.Reflesh_Buff", res_type = 4, res_id = 0, value = 20, desc = "刷新繁荣建筑花费元宝"})
mapArray:push({ id = "Gang.Sycee.Reflesh_ExchangeList", res_type = 4, res_id = 0, value = 100, desc = "刷新贡献建筑花费元宝"})
mapArray:push({ id = "hallenge.Time.Climb.NeedVIP", res_type = 0, res_id = 0, value = 0, desc = "无量山石购买需要的vip等级（仅前端限制）"})
mapArray:push({ id = "HeroList.Open.Level", res_type = 0, res_id = 0, value = 4, desc = "群豪谱开放等级"})
mapArray:push({ id = "hurt.decay.row.one", res_type = 0, res_id = 0, value = 90, desc = "横排第二排衰减系数"})
mapArray:push({ id = "hurt.decay.row.two", res_type = 0, res_id = 0, value = 80, desc = "横排第三排衰减系数"})
mapArray:push({ id = "hurt.decay.screen.one", res_type = 0, res_id = 0, value = 80, desc = "全体第二排衰减系数"})
mapArray:push({ id = "hurt.decay.screen.two", res_type = 0, res_id = 0, value = 60, desc = "全体第三排衰减系数"})
mapArray:push({ id = "Invite.Receive.RewardId", res_type = 0, res_id = 0, value = 3200, desc = "领取(验证)邀请码奖励ID"})
mapArray:push({ id = "JiangHu.Treasure.Extra.Box.Number", res_type = 0, res_id = 0, value = 4, desc = "江湖宝藏额外宝箱个数"})
mapArray:push({ id = "JiangHu.Treasure.Extra.Open.Consume.Sycee", res_type = 4, res_id = 0, value = 100, desc = "江湖宝藏中额外打开所有额外奖励宝箱所需要的元宝花销"})
mapArray:push({ id = "Message.GM.Duration", res_type = 0, res_id = 0, value = 7, desc = "GM消息过期时长(天)"})
mapArray:push({ id = "Mission.Auto.Reset.NeedVIP", res_type = 0, res_id = 0, value = 0, desc = "选择自动回复体力和自动重置挑战次数的VIP等级（仅前端限制）"})
mapArray:push({ id = "Mission.AutomaticBattle.Level", res_type = 0, res_id = 0, value = 20, desc = "自动战斗开启等级"})
mapArray:push({ id = "Mission.AutomaticBattle.VIPLevel", res_type = 0, res_id = 0, value = 3, desc = "自动战斗VIP开启等级"})
mapArray:push({ id = "Mission.FreeQuick.price", res_type = 0, res_id = 0, value = 1, desc = "每日免费扫荡次数用完后，继续扫荡的单价"})
mapArray:push({ id = "Mission.FreeQuick.Times", res_type = 0, res_id = 0, value = 3, desc = "每日免费扫荡次数"})
mapArray:push({ id = "Mission.ManyQuick.NeedVIP", res_type = 0, res_id = 0, value = 4, desc = "可以使用扫荡N次功能的VIP等级（仅前端限制）"})
mapArray:push({ id = "Mission.Reset.Times.NeedVIP", res_type = 0, res_id = 0, value = 0, desc = "可重置挑战次数的VIP等级（仅前端限制）"})
mapArray:push({ id = "Mission.Reset.Times.price", res_type = 0, res_id = 0, value = 50, desc = "关卡重置挑战次数单价(元宝)"})
mapArray:push({ id = "Moheya.Challenge.Cooltime", res_type = 0, res_id = 0, value = 600, desc = "摩诃崖挑战冷却时间(秒)"})
mapArray:push({ id = "Moheya.Open.Level", res_type = 0, res_id = 0, value = 1, desc = "摩诃崖开放等级"})
mapArray:push({ id = "Player.Exp.Power.Multiple", res_type = 0, res_id = 0, value = 10, desc = "一体力对应的玩家团队经验"})
mapArray:push({ id = "Player.Init.Coin", res_type = 0, res_id = 0, value = 0, desc = "玩家初始铜币"})
mapArray:push({ id = "Player.Init.Inspiration", res_type = 0, res_id = 0, value = 5, desc = "玩家技能点"})
mapArray:push({ id = "Player.Init.Sycee", res_type = 0, res_id = 0, value = 0, desc = "玩家初始元宝"})
mapArray:push({ id = "Player.Level.Max", res_type = 0, res_id = 0, value = 120, desc = "玩家的最高等级"})
mapArray:push({ id = "Player.ReName.prop", res_type = 0, res_id = 0, value = 30065, desc = "更名帖道具ID"})
mapArray:push({ id = "Player.Sycee.Rename", res_type = 0, res_id = 0, value = 100, desc = "更名贴不足时，消耗的元宝数量"})
mapArray:push({ id = "Pulse.Coin.Refresh", res_type = 3, res_id = 0, value = 100, desc = "经洗练新所需铜币"})
mapArray:push({ id = "Pulse.Factor.attribute1", res_type = 0, res_id = 0, value = 1000, desc = "(/100)气血加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute10", res_type = 0, res_id = 0, value = 200, desc = "(/100)火抗加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute11", res_type = 0, res_id = 0, value = 200, desc = "(/100)毒抗加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute12", res_type = 0, res_id = 0, value = 1000, desc = "(/100)暴击加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute13", res_type = 0, res_id = 0, value = 1000, desc = "(/100)抗暴击加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute14", res_type = 0, res_id = 0, value = 1000, desc = "(/100)命中加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute15", res_type = 0, res_id = 0, value = 1000, desc = "(/100)躲避加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute2", res_type = 0, res_id = 0, value = 600, desc = "(/100)武力加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute3", res_type = 0, res_id = 0, value = 600, desc = "(/100)防御加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute4", res_type = 0, res_id = 0, value = 600, desc = "(/100)内力加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute5", res_type = 0, res_id = 0, value = 600, desc = "(/100)身法加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute6", res_type = 0, res_id = 0, value = 300, desc = "(/100)冰伤加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute7", res_type = 0, res_id = 0, value = 300, desc = "(/100)火伤加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute8", res_type = 0, res_id = 0, value = 300, desc = "(/100)毒伤加成系数"})
mapArray:push({ id = "Pulse.Factor.attribute9", res_type = 0, res_id = 0, value = 200, desc = "(/100)冰抗加成系数"})
mapArray:push({ id = "Pulse.Factor.quality1", res_type = 0, res_id = 0, value = 100, desc = "(/100)经脉丁品质系数"})
mapArray:push({ id = "Pulse.Factor.Quality2", res_type = 0, res_id = 0, value = 130, desc = "(/100)经脉丙品质系数"})
mapArray:push({ id = "Pulse.Factor.Quality3", res_type = 0, res_id = 0, value = 160, desc = "(/100)经脉乙品质系数"})
mapArray:push({ id = "Pulse.Factor.Quality4", res_type = 0, res_id = 0, value = 200, desc = "(/100)经脉甲品质系数"})
mapArray:push({ id = "Pulse.Level.Max", res_type = 0, res_id = 0, value = 10, desc = "经脉的最大等级"})
mapArray:push({ id = "Pulse.Position1.Quality.open", res_type = 0, res_id = 0, value = 1, desc = "经脉1(带脉)开启的角色品质"})
mapArray:push({ id = "Pulse.Position2.Quality.open", res_type = 0, res_id = 0, value = 2, desc = "经脉2(冲脉)开启的角色品质"})
mapArray:push({ id = "Pulse.Position3.Quality.open", res_type = 0, res_id = 0, value = 3, desc = "经脉3(任脉)开启的角色品质"})
mapArray:push({ id = "Pulse.Position4.Quality.open", res_type = 0, res_id = 0, value = 3, desc = "经脉4(督脉)开启的角色品质"})
mapArray:push({ id = "Pulse.Position5.Quality.open", res_type = 0, res_id = 0, value = 4, desc = "经脉5(维脉)开启的角色品质"})
mapArray:push({ id = "Pulse.Position6.Quality.open", res_type = 0, res_id = 0, value = 4, desc = "经脉6(跷脉)开启的角色品质"})
mapArray:push({ id = "Pulse.Refresh.prop1", res_type = 0, res_id = 0, value = 30019, desc = "洗脉物品1-洗髓丹"})
mapArray:push({ id = "Pulse.Refresh.prop2", res_type = 0, res_id = 0, value = 30020, desc = "洗脉物品2-通心丸"})
mapArray:push({ id = "Pulse.Uplevel.soul", res_type = 0, res_id = 0, value = 10, desc = "经脉升一级消耗侠魂"})
mapArray:push({ id = "Recharge.First.Multiple", res_type = 0, res_id = 0, value = 1, desc = "首充倍率，定义常量"})
mapArray:push({ id = "Recruit.Consume.Hundred", res_type = 1, res_id = 2001, value = 1, desc = "百里挑一每次招募消耗的招募令个数"})
mapArray:push({ id = "Recruit.Consume.Million", res_type = 1, res_id = 2001, value = 30, desc = "万里挑一每次消耗的招募令个数"})
mapArray:push({ id = "Recruit.Consume.Sycee.Hundred", res_type = 4, res_id = 0, value = 50, desc = "百里挑一，自动消费元宝招募，当没有招募令时自动扣除"})
mapArray:push({ id = "Recruit.Consume.Sycee.Million", res_type = 4, res_id = 0, value = 300, desc = "万里挑一，自动消费元宝招募，当没有招募令时自动扣除"})
mapArray:push({ id = "Recruit.Consume.Sycee.Million.Batch", res_type = 4, res_id = 0, value = 2888, desc = "万里挑一，连抽10次的消耗"})
mapArray:push({ id = "Recruit.FreeTimes.PerDay.Hundred", res_type = 0, res_id = 0, value = 5, desc = "十里挑一，每日免费招募次数"})
mapArray:push({ id = "Recruit.MaxFailTime.Million", res_type = 0, res_id = 0, value = 10, desc = "万里挑一最大失败次数"})
mapArray:push({ id = "Recruit.Probability.Hundred", res_type = 0, res_id = 0, value = 200, desc = "百里挑一，每失败一次增加的获取紫卡概率.10000表示100%"})
mapArray:push({ id = "Recruit.Probability.Million", res_type = 0, res_id = 0, value = 200, desc = "万里挑一，每失败一次增加的获取紫卡概率.10000表示100%"})
mapArray:push({ id = "Recruit.TimeSpace.Per.Hundred", res_type = 0, res_id = 0, value = 600000, desc = "百里挑一，每次免费招募重置间隔时间，单位/毫秒"})
mapArray:push({ id = "Recruit.TimeSpace.Per.Million", res_type = 0, res_id = 0, value = 86400000, desc = "万里挑一，每次免费招募重置间隔时间，单位/毫秒"})
mapArray:push({ id = "Recruit.TimeSpace.Per.Ten", res_type = 0, res_id = 0, value = 600000, desc = "十里挑一，每次免费招募重置间隔时间，单位/毫秒"})
mapArray:push({ id = "Recycle.Equip.Level.Coin.Percent", res_type = 0, res_id = 0, value = 80, desc = "装备出售金币回收百分比"})
mapArray:push({ id = "Recycle.Role.Meridian.Percent", res_type = 0, res_id = 0, value = 70, desc = "卡牌经脉等级消耗的真气回收百分比"})
mapArray:push({ id = "Recycle.Role.Rank.Percent", res_type = 0, res_id = 0, value = 70, desc = "卡牌等级经验回收百分比"})
mapArray:push({ id = "Recycle.Role.Skill.Percent", res_type = 0, res_id = 0, value = 70, desc = "卡牌技能消耗的铜币回收百分比"})
mapArray:push({ id = "Recycle.Role.Meridian.Breach.Percent", res_type = 0, res_id = 0, value = 70, desc = "卡牌经脉突破消耗的精露回收百分比"})
mapArray:push({ id = "Recycle.Role.Practice.Percent", res_type = 0, res_id = 0, value = 70, desc = "卡牌帮派修炼场消耗的帮贡回收百分比"})
mapArray:push({ id = "Role.Level.MaxMultiple", res_type = 0, res_id = 0, value = 1, desc = "角色等级为主角等级的最高倍数"})
mapArray:push({ id = "Role.LevelMax.Multiple", res_type = 0, res_id = 0, value = 1, desc = "侠客升级上限，等级的几倍？"})
mapArray:push({ id = "Role.Train.StarUp.Consume.Card", res_type = 3, res_id = 0, value = 10000, desc = "角色培养-升星每个卡牌狗粮所需要消耗的铜币数量"})
mapArray:push({ id = "Role.Train.StarUp.Consume.Soul", res_type = 3, res_id = 0, value = 1000, desc = "角色培养-升星每个魂卡狗粮所需要消耗的铜币数量"})
mapArray:push({ id = "Shop.Random.Refresh.BaseCost", res_type = 0, res_id = 0, value = 20, desc = "玩家随机商店第一次手动刷新花费元宝"})
mapArray:push({ id = "Shop.Random.Refresh.Cost.Max", res_type = 0, res_id = 0, value = 100, desc = "玩家随机商店动刷新花费元宝上限"})
mapArray:push({ id = "Shop.Random.Refresh.Cost.Step", res_type = 0, res_id = 0, value = 20, desc = "玩家随机商店手动刷新花费元宝递增步长"})
mapArray:push({ id = "Shop.Random.Refresh.Count.JIA", res_type = 0, res_id = 0, value = 10, desc = "玩家随机商店商店第几次后必产出甲品道具"})
mapArray:push({ id = "Shop.Random.Refresh.Interval", res_type = 0, res_id = 0, value = 28800000, desc = "玩家商店自动刷新时间间隔(毫秒)"})
mapArray:push({ id = "Shop.Random.Size", res_type = 0, res_id = 0, value = 8, desc = "随机商店容量"})
mapArray:push({ id = "Skill.Levelup.coin", res_type = 0, res_id = 0, value = 100, desc = "战场技能升级所需元宝"})
mapArray:push({ id = "Skill.Levelup.skilldot", res_type = 0, res_id = 0, value = 1, desc = "战场技能升级所需技能点"})
mapArray:push({ id = "Skill.Max.Level", res_type = 0, res_id = 0, value = 10, desc = "战场技能最高等级"})
mapArray:push({ id = "Transfer.Role.Cost", res_type = 3, res_id = 0, value = 10000, desc = "传功每个角色所需要的铜币数量"})
mapArray:push({ id = "Transfer.Role.Rate", res_type = 0, res_id = 0, value = 30, desc = "折算系数,暂定 30%"})
mapArray:push({ id = "Transfer.Soul.Cost", res_type = 3, res_id = 0, value = 1000, desc = "传功每个侠魂所需要的铜币数量"})
mapArray:push({ id = "Yabiao.Cleancd.cost", res_type = 4, res_id = 0, value = 2, desc = "快马加鞭消耗"})
mapArray:push({ id = "Yabiao.Refresh.Cost.step", res_type = 0, res_id = 0, value = 0, desc = "押镖刷新价格递增"})
mapArray:push({ id = "Yabiao.Refresh.First.cost", res_type = 0, res_id = 0, value = 2, desc = "第一次刷新价格"})
mapArray:push({ id = "Yabiao.Refresh.FreeTime", res_type = 0, res_id = 0, value = 2, desc = "押镖每日免费刷新系数"})
mapArray:push({ id = "Yabiao.Yabiao.Daily.MaxTime", res_type = 0, res_id = 0, value = 5, desc = "押镖每日可押镖次数"})
mapArray:push({ id = "Chat.Public.Level", res_type = 0, res_id = 0, value = 15, desc = "聊天功能开放等级"})
mapArray:push({ id = "Chat.Public.VipLevel", res_type = 0, res_id = 0, value = 1, desc = "聊天功能VIP等级"})
mapArray:push({ id = "Role.Email.Level", res_type = 0, res_id = 0, value = 5, desc = "角色升级欢迎邮件"})
mapArray:push({ id = "Chat.Public.num", res_type = 0, res_id = 0, value = 5, desc = "聊天功能开始的初始聊天次数"})
mapArray:push({ id = "Chat.Public.num2", res_type = 0, res_id = 0, value = 1, desc = "聊天功能开启后，此后每级递增的次数"})
mapArray:push({ id = "Zhengba.Time.Wait", res_type = 0, res_id = 0, value = 36000, desc = "争霸赛等待时间"})
mapArray:push({ id = "Zhengba.Time.Fight", res_type = 0, res_id = 0, value = 1800, desc = "争霸赛战斗时间"})
mapArray:push({ id = "Zhengba.Time.Open", res_type = 0, res_id = 0, value = 43200, desc = "争霸赛开始时间"})
mapArray:push({ id = "Zhengba.Time.Yazhu1", res_type = 0, res_id = 0, value = 46500, desc = "八强押注时间节点"})
mapArray:push({ id = "Zhengba.Time.Yazhu2", res_type = 0, res_id = 0, value = 53700, desc = "半决赛押注时间节点"})
mapArray:push({ id = "Zhengba.Time.Yazhu3", res_type = 0, res_id = 0, value = 64500, desc = "总决赛押注时间节点"})
mapArray:push({ id = "Zhengba.Time.ZhengbaFight", res_type = 0, res_id = 0, value = 300, desc = "争霸赛战斗时间"})
mapArray:push({ id = "Zhengba.Time.Zhanshi", res_type = 0, res_id = 0, value = 0, desc = "争霸赛展示时间"})
mapArray:push({ id = "Zhengba.Time.Close", res_type = 0, res_id = 0, value = 79200, desc = "争霸赛结束时间"})
mapArray:push({ id = "wuxue.MaxLevel", res_type = 0, res_id = 0, value = 14, desc = "当前开放武学等级上限"})
mapArray:push({ id = "Invite.Validate.Level", res_type = 0, res_id = 0, value = 29, desc = "受邀有礼等级限制"})
mapArray:push({ id = "yijianchongxue.VipLevel", res_type = 0, res_id = 0, value = 3, desc = "一键冲穴VIP等级"})
mapArray:push({ id = "Equip.Remake.Extra.Lock.Consume", res_type = 4, res_id = 0, value = 200, desc = "装备洗炼锁定消耗元宝数量"})
mapArray:push({ id = "Equip.Remake.Extra.Consume.Goods", res_type = 1, res_id = 30051, value = 1, desc = "装备洗炼消耗的物品ID"})
mapArray:push({ id = "North.Cave.Battle.Options.Refresh", res_type = 4, res_id = 0, value = 50, desc = "无量山逆塔换一批价格"})
mapArray:push({ id = "North.Cave.Open.Floor", res_type = 0, res_id = 0, value = 100, desc = "无量山北窟开启对应南峰通关层数"})
mapArray:push({ id = "yijianjinglian.Vip.Level", res_type = 0, res_id = 0, value = 4, desc = "一键精炼功能开启VIP条件"})
mapArray:push({ id = "guild.ReName.prop", res_type = 0, res_id = 0, value = 30066, desc = "帮派改名道具ID"})
mapArray:push({ id = "guild.Sycee.Rename", res_type = 0, res_id = 0, value = 300, desc = "帮派改名花费元宝"})
mapArray:push({ id = "guild.cd.practice", res_type = 4, res_id = 0, value = 5, desc = "1元宝多少分钟"})
mapArray:push({ id = "Mine.Battle.Lock.Time", res_type = 0, res_id = 0, value = 600, desc = "战斗上锁时间"})
mapArray:push({ id = "Mine.Refresh.FreeTime", res_type = 0, res_id = 0, value = 2, desc = "挖矿每日免费刷新次数"})
mapArray:push({ id = "Mine.Unlock.Level", res_type = 0, res_id = 0, value = 55, desc = "矿2解锁等级"})
mapArray:push({ id = "guild.change.flag.goods", res_type = 0, res_id = 0, value = 30069, desc = "修改帮派旗帜道具"})
mapArray:push({ id = "Mine.Refresh.Cost", res_type = 4, res_id = 0, value = 15, desc = "矿刷新价格"})
mapArray:push({ id = "Mine.To.Battle.Lock.Time", res_type = 0, res_id = 0, value = 120, desc = "等待战斗上锁时间"})
mapArray:push({ id = "guild.change.flag", res_type = 4, res_id = 0, value = 300, desc = "修改帮派旗帜"})
mapArray:push({ id = "Jiuguan.Qiyuan.Time", res_type = 0, res_id = 0, value = 300, desc = "祈愿间隔时间（秒）"})
mapArray:push({ id = "Jiuguan.Qiyuan.MaxTime", res_type = 0, res_id = 0, value = 15, desc = "领取祈愿宝箱所需天数"})
mapArray:push({ id = "Gangwar.Team.Time", res_type = 0, res_id = 0, value = 3600, desc = "帮派战每轮间隔时间（秒）"})
mapArray:push({ id = "Gangwar.Personal.Time", res_type = 0, res_id = 0, value = 45, desc = "帮派战个人间隔时间（秒）"})
mapArray:push({ id = "Gangwar.Elite.Reward", res_type = 0, res_id = 0, value = 20, desc = "精英奖励加成"})
mapArray:push({ id = "Gangwar.Hurt.attenuation", res_type = 0, res_id = 0, value = 10, desc = "胜利后属性衰减"})
mapArray:push({ id = "Gangwar.Qualifier.Over", res_type = 0, res_id = 0, value = 259200, desc = "预选赛截止时间（从周1,00:00开始计算，单位秒）"})
mapArray:push({ id = "Gangwar.Signup.Over", res_type = 0, res_id = 0, value = 141600, desc = "预选赛-报名截止时间（计算预选赛-报名之间时间，单位秒）"})
mapArray:push({ id = "Gangwar.Warstart.Over", res_type = 0, res_id = 0, value = 600, desc = "报名截止时间-战斗开始时间（计算报名-战斗开始时间，单位秒）"})
mapArray:push({ id = "Experience.Change.Money", res_type = 0, res_id = 0, value = 1, desc = "经验转化为铜币的比例"})
mapArray:push({ id = "Gangwar.Qualifier.Start", res_type = 0, res_id = 0, value = 172800, desc = "预选赛开始时间（从周1,00:00开始计算，单位秒）"})
mapArray:push({ id = "Chat.ServerBroadcast.GoodsId", res_type = 1, res_id = 30103, value = 1, desc = "跨服聊天道具(跨服喇叭)ID"})
mapArray:push({ id = "Chat.Server.Level", res_type = 0, res_id = 0, value = 15, desc = "跨服聊天功能开放等级"})
mapArray:push({ id = "Chat.Server.VipLevel", res_type = 0, res_id = 0, value = 1, desc = "跨服聊天功能VIP等级"})
mapArray:push({ id = "Chat.Server.num", res_type = 0, res_id = 0, value = 0, desc = "跨服聊天功能开始的初始聊天次数"})
mapArray:push({ id = "Chat.Server.num2", res_type = 0, res_id = 0, value = 0, desc = "跨服聊天功能开启后，此后每级递增的次数"})
mapArray:push({ id = "Kill.challenge.num", res_type = 0, res_id = 0, value = 10, desc = "杀戮榜排名前几可被所有人挑战"})
mapArray:push({ id = "RoleSkill.Max.Level", res_type = 0, res_id = 0, value = 120, desc = "玩家侠客技能可提升最大等级"})
mapArray:push({ id = "Kill.CancelRefreshCD.Gold", res_type = 0, res_id = 0, value = 50, desc = "清除刷新杀戮玩家CD所需要的元宝数"})
mapArray:push({ id = "Kill.LeastKill", res_type = 0, res_id = 0, value = 100, desc = "杀戮值少于N则被杀戮不扣结算池奖励"})
mapArray:push({ id = "Kill.Constant1.Formula1", res_type = 0, res_id = 0, value = 30, desc = "杀戮计算公式中的[常数1]        A=max(常数1,积分差（被挑战者积分-挑战者积分）*系"})
mapArray:push({ id = "Kill.CoefficientKill.Formula1", res_type = 0, res_id = 0, value = 500, desc = "杀戮计算公式中的[杀戮值_系数]  A=max(常数1,积分差（被挑战者积分-挑战者积分）*系数+常"})
mapArray:push({ id = "Kill.CoefficientRead.Formula1", res_type = 0, res_id = 0, value = 500, desc = "杀戮计算公式中的[阅历_系数]    A=max(常数1,积分差（被挑战者积分-挑战者积分）*系数+"})
mapArray:push({ id = "Kill.CoefficientMonny.Formula1", res_type = 0, res_id = 0, value = 500, desc = "杀戮计算公式中的[铜钱_系数]    A=max(常数1,积分差（被挑战者积分-挑战者积分）*系数+"})
mapArray:push({ id = "Kill.Constant2Kill.Formula1", res_type = 0, res_id = 0, value = 100, desc = "杀戮计算公式中的[杀戮值_常数2] A=max(常数1,积分差（被挑战者积分-挑战者积分）*系数+常"})
mapArray:push({ id = "Kill.Constant2Read.Formula1", res_type = 0, res_id = 0, value = 1200, desc = "杀戮计算公式中的[阅历_常数2]   A=max(常数1,积分差（被挑战者积分-挑战者积分）*系数+"})
mapArray:push({ id = "Kill.Constant2Monny.Formula1", res_type = 0, res_id = 0, value = 10000, desc = "杀戮计算公式中的[铜钱_常数2]   A=max(常数1,积分差（被挑战者积分-挑战者积分）*系数+"})
mapArray:push({ id = "Kill.Constant1.Formula2", res_type = 0, res_id = 0, value = 80, desc = "杀戮计算公式中的[常数1]        实际杀戮积分=(等级差（挑战者等级-常数1）/常数2+常数"})
mapArray:push({ id = "Kill.Constant2.Formula2", res_type = 0, res_id = 0, value = 100, desc = "杀戮计算公式中的[常数2]        实际杀戮积分=(等级差（挑战者等级-常数1）/常数2+常数"})
mapArray:push({ id = "Kill.Constant3.Formula2", res_type = 0, res_id = 0, value = 1, desc = "杀戮计算公式中的[常数3]        实际杀戮积分=(等级差（挑战者等级-常数1）/常数2+常数"})
mapArray:push({ id = "Kill.Search.ColdCD", res_type = 0, res_id = 0, value = 300, desc = "杀戮榜中，搜寻玩家的间隔CD（秒）"})
mapArray:push({ id = "Kill.Not.In.Rank", res_type = 0, res_id = 0, value = 50, desc = "杀戮榜中，多少名以后显示未上榜"})
mapArray:push({ id = "Adventure.MustGet.Num", res_type = 0, res_id = 0, value = 0, desc = "游历中，前期必掉精要的次数"})
mapArray:push({ id = "Adventure.MustGet.Stage", res_type = 0, res_id = 0, value = 20002, desc = "游历中，玩家第一次打第几关时，读取另外一组掉落"})
mapArray:push({ id = "Personal.Battle.Cycle", res_type = 0, res_id = 0, value = 14, desc = "跨服个人战开放周期"})
mapArray:push({ id = "Personal.Battle.Bet.Coins", res_type = 0, res_id = 0, value = 500000, desc = "跨服个人战普通押注消耗"})
mapArray:push({ id = "Personal.Battle.Bet.Gold", res_type = 0, res_id = 0, value = 200, desc = "跨服个人战高级押注消耗"})
mapArray:push({ id = "Personal.Battle.Bet.Reward", res_type = 0, res_id = 0, value = 70001, desc = "跨服个人战普通押注奖励"})
mapArray:push({ id = "Personal.Battle.Bet.BigReward", res_type = 0, res_id = 0, value = 70003, desc = "跨服个人战高级押注奖励"})
mapArray:push({ id = "MysteryShop.Constant1.TriggerPve", res_type = 0, res_id = 0, value = 1, desc = "触发性购买_PVE触发几率"})
mapArray:push({ id = "MysteryShop.Constant2.KeepTime", res_type = 0, res_id = 0, value = 3600, desc = "触发性购买_持续时间"})
mapArray:push({ id = "MysteryShop.Constant3.DayTriggerTimes", res_type = 0, res_id = 0, value = 3, desc = "触发性购买_当天可触发次数"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_1", res_type = 0, res_id = 0, value = 154140, desc = "资格赛结果展示结束时间（周二18:49）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_2", res_type = 0, res_id = 0, value = 154800, desc = "第一场跨服积分赛开始（周二19:00）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_3", res_type = 0, res_id = 0, value = 158400, desc = "第一场跨服积分赛结束（周二20:00）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_4", res_type = 0, res_id = 0, value = 160260, desc = "第一场跨服积分赛结果展示开始（周二20:31）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_5", res_type = 0, res_id = 0, value = 240540, desc = "第一场跨服积分赛结果展示结束（周三18:49）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_6", res_type = 0, res_id = 0, value = 241200, desc = "第二场跨服积分赛开始（周三19:00）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_7", res_type = 0, res_id = 0, value = 244800, desc = "第二场跨服积分赛结束（周三20:00）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_8", res_type = 0, res_id = 0, value = 246660, desc = "第二场跨服积分赛结果展示开始（周三20:31）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_9", res_type = 0, res_id = 0, value = 259200, desc = "第二场跨服积分赛结果展示结束（周三24:00）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_10", res_type = 0, res_id = 0, value = 331200, desc = "16强争霸赛开始（周四20:00）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_11", res_type = 0, res_id = 0, value = 331800, desc = "16强争霸赛结束（周四20:10）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_12", res_type = 0, res_id = 0, value = 345600, desc = "16强预览结束（周四24:00）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_13", res_type = 0, res_id = 0, value = 417600, desc = "8强争霸赛开始（周五20:00）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_14", res_type = 0, res_id = 0, value = 418200, desc = "8强争霸赛结束（周五20:10）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_15", res_type = 0, res_id = 0, value = 432000, desc = "8强预览结束（周五24:00）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_16", res_type = 0, res_id = 0, value = 504000, desc = "4强争霸赛开始（周六20:00）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_17", res_type = 0, res_id = 0, value = 504600, desc = "4强争霸赛结束（周六20:10）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_18", res_type = 0, res_id = 0, value = 518400, desc = "4强预览结束（周六24:00）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_19", res_type = 0, res_id = 0, value = 590400, desc = "2强争霸赛开始（周日20:00）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_20", res_type = 0, res_id = 0, value = 591000, desc = "2强争霸赛结束（周日20:10）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_21", res_type = 0, res_id = 0, value = 604800, desc = "2强预览结束（周日24:00）"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_22", res_type = 0, res_id = 0, value = 600, desc = "第一场积分赛前10分钟"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_23", res_type = 0, res_id = 0, value = 1800, desc = "第一场积分赛后30分钟"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_24", res_type = 0, res_id = 0, value = 600, desc = "第二场积分赛前10分钟"})
mapArray:push({ id = "MultiServerFightManager.ActivityState_25", res_type = 0, res_id = 0, value = 1800, desc = "第二场积分赛后30分钟"})
mapArray:push({ id = "Refining.probability", res_type = 0, res_id = 0, value = 1000, desc = "获得高品质概率"})
return mapArray
