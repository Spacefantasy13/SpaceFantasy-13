/datum/keybinding/client/communication
	category = CATEGORY_COMMUNICATION

/datum/keybinding/client/communication/say
	hotkey_keys = list("CtrlT")
	classic_keys = list("Unbound")
	name = "Say"
	full_name = "IC Say"
	clientside = "say"

/datum/keybinding/client/communication/ooc
	hotkey_keys = list("O")
	name = "OOC"
	full_name = "Out Of Character Say (OOC)"
	clientside = "ooc"

/datum/keybinding/client/communication/me
	hotkey_keys = list("CtrlM")
	classic_keys = list("Unbound")
	name = "Me"
	full_name = "Me (emote)"
	clientside = "me"

//indicators
/datum/keybinding/client/communication/say_with_indicator
	hotkey_keys = list("T")
	name = "say_with_indicator"
	full_name = "Say with Typing Indicator"

/datum/keybinding/client/communication/say_with_indicator/down(client/user)
	var/mob/M = user.mob
	M.say_typing_indicator()
	return TRUE

/datum/keybinding/client/communication/me_with_indicator
	hotkey_keys = list("M")
	name = "me_with_indicator"
	full_name = "Me (emote) with Typing Indicator"

/datum/keybinding/client/communication/me_with_indicator/down(client/user)
	var/mob/M = user.mob
	M.me_typing_indicator()
	return TRUE

/datum/keybinding/client/communication/subtler
	hotkey_keys = list("5")
	name = "Subtler"
	full_name = "Me (emote - Antighost)"
	clientside = "me (antighost)"

/datum/keybinding/client/communication/whisper
	hotkey_keys = list("Y")
	name = "Whisper"
	full_name = "Whisper"
	clientside = "whisper"

/datum/keybinding/client/communication/looc
	hotkey_keys = list("L")
	name = "LOOC"
	full_name = "Local Out of Character chat"
	clientside = "looc"

/datum/keybinding/client/communication/toggle_indicator
	hotkey_keys = list("N")
	name = "toggle_indicator"
	full_name = "Toggle Typing Indicator"
	description = ""

/datum/keybinding/client/communication/toggle_indicator/down(client/user)
	var/mob/M = user.mob
	M.toggle_typing_indicator()
	return TRUE

/datum/keybinding/client/communication/inspire
	hotkey_keys = list("Unbound")
	name = "inspire"
	full_name = "Use Inspire verb"
	description = ""

/datum/keybinding/client/communication/inspire/down(client/user)
	var/mob/living/carbon/human/M = user.mob
	if (istype(M))
		M.inspire()
	return TRUE

/datum/keybinding/client/communication/talk_to
	hotkey_keys = list("Unbound")
	name = "talk_to"
	full_name = "Use Talk To Verb"
	description = ""

/datum/keybinding/client/communication/talk_to/down(client/user)
	var/mob/living/carbon/human/M = user.mob
	if (istype(M))
		M.try_to_talk_to()
	return TRUE
