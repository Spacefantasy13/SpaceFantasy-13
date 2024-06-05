/obj/machinery/door/password
	name = "door"
	desc = "This door only opens when provided a password."
	icon = 'icons/obj/doors/blastdoor.dmi'
	icon_state = "closed"
	explosion_block = 3
	heat_proof = TRUE
	max_integrity = 600
	armor = list("melee" = 100, "bullet" = 100, "laser" = 100, "energy" = 100, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100)
	resistance_flags = INDESTRUCTIBLE | FIRE_PROOF | ACID_PROOF | LAVA_PROOF
	damage_deflection = 70
	var/password = "Swordfish"
	var/interaction_activated = TRUE //use the door to enter the password
	var/voice_activated = FALSE //Say the password nearby to open the door.
	var/list/failures = list()
	var/terminal_has_pass = FALSE
	var/door_id = ""
	var/is_busy = FALSE
	var/difficulty = DIFFICULTY_CHALLENGE

/obj/machinery/door/password/enclave
	terminal_has_pass = TRUE
	difficulty = 55

/obj/machinery/door/password/voice
	voice_activated = TRUE


/obj/machinery/door/password/Initialize(mapload)
	. = ..()
	if(voice_activated)
		flags_1 |= HEAR_1
	if(!terminal_has_pass)
		password = random_string(8, GLOB.alphabet)

/obj/machinery/door/password/Hear(message, atom/movable/speaker, message_language, raw_message, radio_freq, list/spans, message_mode, atom/movable/source)
	. = ..()
	if(!density || !voice_activated || radio_freq)
		return
	if(findtext(raw_message,password))
		open()

/obj/machinery/door/password/Bumped(atom/movable/AM)
	return !density && ..()

/obj/machinery/door/password/try_to_activate_door(mob/user)
	add_fingerprint(user)
	if(operating)
		return
	if(density)
		if(ask_for_pass(user))
			open()
		else
			do_animate("deny")

/obj/machinery/door/password/update_icon_state()
	if(density)
		icon_state = "closed"
	else
		icon_state = "open"

/obj/machinery/door/password/do_animate(animation)
	switch(animation)
		if("opening")
			flick("opening", src)
			playsound(src, 'sound/machines/blastdoor.ogg', 30, 1)
		if("closing")
			flick("closing", src)
			playsound(src, 'sound/machines/blastdoor.ogg', 30, 1)
		if("deny")
			//Deny animation would be nice to have.
			playsound(src, 'sound/machines/buzz-sigh.ogg', 30, 1)

/obj/machinery/door/password/proc/ask_for_pass(mob/user)
	var/hack = input(user, "Do you wish to hack or guess the password?", "Hack") in list("Hack", "Guess")
	if (get_dist(user, src) > 1)
		return
	if (hack == "Guess")
		var/guess = stripped_input(user,"Enter the password:", "Password", "")
		if(guess == password)
			return TRUE
		return FALSE
	else
		if (!is_busy)
			is_busy = TRUE
			if(!failures.Find(WEAKREF(user)) && user.skill_roll(SKILL_SCIENCE, difficulty))
				if (do_after(user, 10 SECONDS, target = src))
					user.visible_message(span_good("[user] hacks the door!"), span_good("Got it!"))
					is_busy = FALSE
					return TRUE
			else
				failures |= WEAKREF(user)
				user.visible_message(span_warning("[user] fails to hack the door!"), span_warning("Dang, looks like it's locked itself down from me."))
				is_busy = FALSE
				return FALSE

/obj/machinery/door/password/emp_act(severity)
	return

/obj/machinery/door/password/ex_act(severity, target)
	return
