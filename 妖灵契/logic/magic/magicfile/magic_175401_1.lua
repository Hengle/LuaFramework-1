module(...)
--magic editor build
DATA={
	atk_stophit=true,
	cmds={
		[1]={
			args={
				action_name=[[runWar]],
				action_time=0.33,
				end_frame=19,
				excutor=[[atkobj]],
				start_frame=0,
			},
			func_name=[[PlayAction]],
			start_time=0,
		},
		[2]={
			args={
				begin_type=[[current]],
				calc_face=true,
				ease_type=[[Linear]],
				end_relative={base_pos=[[vic]],depth=0,relative_angle=0,relative_dis=1.5,},
				end_type=[[end_relative]],
				excutor=[[atkobj]],
				look_at_pos=true,
				move_time=0.32,
				move_type=[[line]],
			},
			func_name=[[Move]],
			start_time=0,
		},
		[3]={args={},func_name=[[MagcAnimStart]],start_time=0,},
		[4]={args={alive_time=0.5,},func_name=[[Name]],start_time=0,},
		[5]={
			args={sound_path=[[Magic/sound_magic_175301_1.wav]],sound_rate=1,},
			func_name=[[PlaySound]],
			start_time=0,
		},
		[6]={
			args={action_name=[[attack1]],excutor=[[atkobj]],},
			func_name=[[PlayAction]],
			start_time=0.18,
		},
		[7]={
			args={
				consider_hight=false,
				damage_follow=true,
				face_atk=true,
				hurt_delta=0,
				play_anim=true,
			},
			func_name=[[VicHitInfo]],
			start_time=0.31,
		},
		[8]={
			args={
				alive_time=0.57,
				bind_type=[[pos]],
				body_pos=[[waist]],
				effect={
					is_cached=true,
					magic_layer=[[center]],
					path=[[Effect/Magic/magic_eff_1753/Prefabs/magic_eff_175301_hit.prefab]],
					preload=true,
				},
				excutor=[[vicobj]],
				height=0,
			},
			func_name=[[BodyEffect]],
			start_time=0.4,
		},
		[9]={args={},func_name=[[MagcAnimEnd]],start_time=0.67,},
		[10]={args={},func_name=[[End]],start_time=0.67,},
	},
	group_cmds={},
	magic_anim_end_time=0.67,
	magic_anim_start_time=0,
	pre_load_res={[1]=[[Effect/Magic/magic_eff_1753/Prefabs/magic_eff_175301_hit.prefab]],},
	run_env=[[war]],
	type=1,
	wait_goback=true,
}
