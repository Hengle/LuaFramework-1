module(...)
--magic editor build
DATA={
	atk_stophit=true,
	cmds={
		[1]={args={player_swipe=false,},func_name=[[CameraLock]],start_time=0,},
		[2]={args={time=3.5,},func_name=[[HideUI]],start_time=0,},
		[3]={
			args={
				alive_time=1.5,
				bind_idx=100,
				bind_type=[[node]],
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_3005/Prefabs/magic_eff_3005_Prop1.prefab]],
					preload=true,
				},
				excutor=[[atkobj]],
				height=0,
			},
			func_name=[[BodyEffect]],
			start_time=0.4,
		},
		[4]={
			args={action_name=[[attack4]],excutor=[[atkobj]],},
			func_name=[[PlayAction]],
			start_time=0.55,
		},
		[5]={
			args={
				add_type=[[merge]],
				condition_name=[[atkmale]],
				false_group=[[2]],
				group_type=[[condition]],
				true_group=[[1]],
			},
			func_name=[[GroupCmd]],
			start_time=0.95,
		},
		[6]={
			args={
				alive_time=0.55,
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_3101/Prefabs/magic_eff_3101_hit01.prefab]],
					preload=true,
				},
				effect_dir_type=[[forward]],
				effect_pos={base_pos=[[vic]],depth=0.5,relative_angle=0,relative_dis=0,},
				excutor=[[vicobjs]],
			},
			func_name=[[StandEffect]],
			start_time=0.98,
		},
		[7]={
			args={shake_dis=0.03,shake_rate=20,shake_time=0.9,},
			func_name=[[ShakeScreen]],
			start_time=1,
		},
		[8]={args={scale=0.5,time=0.6,},func_name=[[SlowMotion]],start_time=2.6,},
		[9]={
			args={
				alive_time=1,
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_3005/Prefabs/magic_eff_3005_hit.prefab]],
					preload=true,
				},
				effect_dir_type=[[backward]],
				effect_pos={base_pos=[[vic]],depth=0.5,relative_angle=0,relative_dis=0,},
				excutor=[[vicobjs]],
			},
			func_name=[[StandEffect]],
			start_time=2.6,
		},
		[10]={
			args={shake_dis=0.1,shake_rate=15,shake_time=0.25,},
			func_name=[[ShakeScreen]],
			start_time=2.6,
		},
		[11]={args={player_swipe=true,},func_name=[[CameraLock]],start_time=3.2,},
		[12]={args={},func_name=[[End]],start_time=3.5,},
	},
	group_cmds={
		["1"]={
			[1]={
				args={
					alive_time=3,
					effect={
						is_cached=true,
						magic_layer=[[center]],
						path=[[Effect/Magic/magic_eff_3005/Prefabs/magic_eff_3005_att_2.prefab]],
						preload=true,
					},
					effect_dir_type=[[backward]],
					effect_pos={base_pos=[[vic]],depth=0,relative_angle=0,relative_dis=-0.5,},
					excutor=[[vicobj]],
				},
				func_name=[[StandEffect]],
				start_time=0,
			},
		},
		["2"]={
			[1]={
				args={
					alive_time=3,
					effect={
						is_cached=true,
						magic_layer=[[center]],
						path=[[Effect/Magic/magic_eff_3005/Prefabs/magic_eff_3005_att.prefab]],
						preload=true,
					},
					effect_dir_type=[[backward]],
					effect_pos={base_pos=[[vic]],depth=0,relative_angle=0,relative_dis=-0.5,},
					excutor=[[vicobj]],
				},
				func_name=[[StandEffect]],
				start_time=0,
			},
		},
	},
	pre_load_res={
		[1]=[[Effect/Magic/magic_eff_3005/Prefabs/magic_eff_3005_Prop1.prefab]],
		[2]=[[Effect/Magic/magic_eff_3101/Prefabs/magic_eff_3101_hit01.prefab]],
		[3]=[[Effect/Magic/magic_eff_3005/Prefabs/magic_eff_3005_hit.prefab]],
	},
	run_env=[[createrole]],
	type=1,
	wait_goback=false,
}
