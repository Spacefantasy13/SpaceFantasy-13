/datum/looping_sound/showering
	start_sound = list(SOUND_LOOP_ENTRY('sound/machines/shower/shower_start.ogg', 0.2 SECONDS, 1))
	start_length = 2
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/machines/shower/shower_mid1.ogg', 1 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/machines/shower/shower_mid2.ogg', 1 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/machines/shower/shower_mid3.ogg', 1 SECONDS, 1)
		)
	mid_length = 10
	end_sound = list(SOUND_LOOP_ENTRY('sound/machines/shower/shower_end.ogg', 1 SECONDS, 1))
	volume = 10

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/looping_sound/supermatter
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/machines/sm/supermatter1.ogg', 1 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/machines/sm/supermatter2.ogg', 1 SECONDS, 1),
		SOUND_LOOP_ENTRY('sound/machines/sm/supermatter3.ogg', 1 SECONDS, 1)
		)
	mid_length = 10
	volume = 1

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/looping_sound/generator
	start_sound = list(SOUND_LOOP_ENTRY('sound/machines/generator/generator_start.ogg', 0.4 SECONDS, 1))
	start_length = 4
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/machines/generator/generator_mid1.ogg', 0.4 SECONDS, 1), 
		SOUND_LOOP_ENTRY('sound/machines/generator/generator_mid2.ogg', 0.4 SECONDS, 1), 
		SOUND_LOOP_ENTRY('sound/machines/generator/generator_mid3.ogg', 0.4 SECONDS, 1)
		)
	mid_length = 4
	end_sound = list(SOUND_LOOP_ENTRY('sound/machines/generator/generator_end.ogg', 0.4 SECONDS, 1))
	volume = 10

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


/datum/looping_sound/deep_fryer
	start_sound = list(SOUND_LOOP_ENTRY('sound/machines/fryer/deep_fryer_immerse.ogg', 1 SECONDS, 1)) //my immersions
	start_length = 10
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/machines/fryer/deep_fryer_1.ogg', 0.2 SECONDS, 1), 
		SOUND_LOOP_ENTRY('sound/machines/fryer/deep_fryer_2.ogg', 0.2 SECONDS, 1)
		)
	mid_length = 2
	end_sound = list(SOUND_LOOP_ENTRY('sound/machines/fryer/deep_fryer_emerge.ogg', 0.2 SECONDS, 1))
	volume = 5

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/looping_sound/microwave
	start_sound = list(SOUND_LOOP_ENTRY('sound/machines/microwave/microwave-start.ogg', 1 SECONDS, 1))
	start_length = 5
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/machines/microwave/microwave-mid1.ogg', 1 SECONDS, 10), 
		SOUND_LOOP_ENTRY('sound/machines/microwave/microwave-mid2.ogg', 1 SECONDS, 1)
		)
	mid_length = 5
	end_sound = list(SOUND_LOOP_ENTRY('sound/machines/microwave/microwave-end.ogg', 1 SECONDS, 1))
	volume = 90

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/looping_sound/grill
	mid_length = 2
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/machines/fryer/deep_fryer_1.ogg', 1 SECONDS, 1), 
		SOUND_LOOP_ENTRY('sound/machines/fryer/deep_fryer_2.ogg', 1 SECONDS, 1)
		)
	volume = 10

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/looping_sound/debug_area_ambiance
	start_sound = list(SOUND_LOOP_ENTRY('sound/machines/microwave/microwave-start.ogg', 1 SECONDS, 1))
	start_length = 10
	mid_sounds = list(
		SOUND_LOOP_ENTRY('sound/machines/microwave/microwave-mid1.ogg', 1 SECONDS, 10), 
		SOUND_LOOP_ENTRY('sound/machines/microwave/microwave-mid2.ogg', 1 SECONDS, 1)
		)
	mid_length = 10
	end_sound = list(SOUND_LOOP_ENTRY('sound/machines/microwave/microwave-end.ogg', 1 SECONDS, 1))
	volume = 90
	channel = CHANNEL_AMBIENT_LOOP
	direct = TRUE

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
