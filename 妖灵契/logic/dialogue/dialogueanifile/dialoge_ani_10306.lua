module(...)
--dialogueani editor build
DATA={
	[1]={
		cmdList={
			[1]={
				args={
					[1]={[1]=2,},
					[2]={[1]=[[只有主才能挽救我们。]],},
					[3]={[1]=50,},
					[4]={[1]=[[我昨晚梦到世界末日，可吓人了！]],},
					[5]={[1]=50,},
					[6]={[1]=[[空]],},
					[7]={[1]=0,},
					[8]={[1]=[[空]],},
					[9]={[1]=0,},
				},
				cmdType=[[globalnpcani]],
				func=[[GNpcSay]],
				name=[[冒泡说话]],
			},
		},
		delay=2,
		idx=1,
		startTime=0,
		type=[[player]],
	},
}

CONFIG={
	isLoop=1,
	isStroy=2,
	isTrigger=0,
	loopTime=60,
	mapInfo=[[]],
	minTriggerLevel=1,
	name=[[遥冒泡]],
}
