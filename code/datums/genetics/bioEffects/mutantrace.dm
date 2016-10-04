/datum/bioEffect/mutantrace
	name = "Saurian Genetics"
	desc = "Enables vestigal non-mammal traits in the subject's body."
	id = "lizard"
	mutantrace_option = "Lizard"
	effectType = effectTypeMutantRace
	probability = 33
	msgGain = "Your skin feels oddly dry."
	msgLose = "Your scales fall off."
	mob_exclusive = /mob/living/carbon/human/
	var/mutantrace_path = /datum/mutantrace/lizard
	lockProb = 33
	lockedGaps = 1
	lockedDiff = 4
	lockedChars = list("G","C")
	lockedTries = 8
	curable_by_mutadone = 0

	OnAdd()
		if (istype(owner,/mob/living/carbon/human/))
			var/mob/living/carbon/human/H = owner
			for (var/ID in H.bioHolder.effects)
				// clear away any existing mutantraces first
				if (istype(H.bioHolder.GetEffect(ID), /datum/bioEffect/mutantrace) && ID != src.id)
					H.bioHolder.RemoveEffect(ID)
			H.set_mutantrace(src.mutantrace_path)

		return

	OnRemove()
		if (istype(owner,/mob/living/carbon/human/))
			var/mob/living/carbon/human/H = owner
			if (istype(H.mutantrace,src.mutantrace_path))
				H.set_mutantrace(null)
		return

	OnLife()
		if (istype(owner,/mob/living/carbon/human/))
			var/mob/living/carbon/human/H = owner
			if (!istype(H.mutantrace, src.mutantrace_path))
				holder.RemoveEffect(id)
		return

/datum/bioEffect/mutantrace/flashy
	name = "Bioluminescent Overdrive"
	desc = "Enables highly bioluminescent cells in the subject's skin."
	id = "flashman"
	mutantrace_option = "Flashy"
	mutantrace_path = /datum/mutantrace/flashy
	msgGain = "Your skin begins flashing!"
	msgLose = "Your flashy glow fades away."

/datum/bioEffect/mutantrace/blank
	name = "Melanin Eraser"
	desc = "Shuts down all melanin production in subject's body, and eradicates all existing melanin."
	id = "blankman"
	mutantrace_option = "Blank"
	mutantrace_path = /datum/mutantrace/blank
	msgGain = "You feel oddly plain."
	msgLose = "You don't feel boring anymore."

/datum/bioEffect/mutantrace/skeleton
	name = "Ossification"
	desc = "Compacts the subject's living tissues into their skeleton. This is somehow not fatal."
	id = "skeleton"
	mutantrace_option = "Skeleton"
	mutantrace_path = /datum/mutantrace/skeleton
	msgGain = "You feel kinda thin."
	msgLose = "You've put on a bit more weight."

/datum/bioEffect/mutantrace/ithillid
	name = "Aquatic Genetics"
	desc = "Re-enables ancient vestigal genes in the subject's body."
	id = "ithillid"
	mutantrace_option = "Squid"
	mutantrace_path = /datum/mutantrace/ithillid
	msgGain = "You feel wet and squishy."
	msgLose = "You feel dry."

/datum/bioEffect/mutantrace/dwarf
	name = "Dwarfism"
	desc = "Greatly reduces the overall size of the subject, resulting in markedly dimished height."
	id = "dwarf"
	mutantrace_option = "Dwarf"
	mutantrace_path = /datum/mutantrace/dwarf
	msgGain = "Did everything just get bigger?"
	msgLose = "You feel tall!"

/datum/bioEffect/mutantrace/roach
	name = "Blattodean Genetics"
	desc = "Re-enables ancient vestigal genes in the subject's body."
	id = "roach"
	mutantrace_option = "Roach"
	mutantrace_path = /datum/mutantrace/roach
	msgGain = "You feel like crawling into somewhere nice and dark."
	msgLose = "You shed your roachy skin!"

/datum/bioEffect/mutantrace/monkey
	name = "Primal Genetics"
	desc = "Enables and exaggerates vestigal ape traits."
	id = "monkey"
	mutantrace_option = "Monkey"
	mutantrace_path = /datum/mutantrace/monkey
	research_level = 3
	msgGain = "You go bananas!"
	msgLose = "You do the evolution."

/datum/bioEffect/mutantrace/xeno
	id = "xeno"
	mutantrace_option = "Xenomorph"
	mutantrace_path = /datum/mutantrace/xenomorph
	research_level = 10000
	msgGain = ""
	msgLose = ""

/datum/bioEffect/mutantrace/xlarva
	id = "xlarva"
	mutantrace_option = "Xenomorph Larva"
	mutantrace_path = /datum/mutantrace/xenomorph/larva
	research_level = 10000
	msgGain = ""
	msgLose = ""

/datum/bioEffect/mutantrace/xdrone
	id = "xdrone"
	mutantrace_option = "Xenomorph Drone"
	mutantrace_path = /datum/mutantrace/xenomorph/drone
	research_level = 10000
	msgGain = ""
	msgLose = ""

/datum/bioEffect/mutantrace/xdronel
	id = "xdronel"
	mutantrace_option = "Xenomorph Drone Leaping"
	mutantrace_path = /datum/mutantrace/xenomorph/drone/l
	research_level = 10000
	msgGain = ""
	msgLose = ""

/datum/bioEffect/mutantrace/xsentinel
	id = "xsentinel"
	mutantrace_option = "Xenomorph Sentinel"
	mutantrace_path = /datum/mutantrace/xenomorph/sentinel
	research_level = 10000
	msgGain = ""
	msgLose = ""

/datum/bioEffect/mutantrace/xsentinell
	id = "xsentinell"
	mutantrace_option = "Xenomorph Sentinel Leaping"
	mutantrace_path = /datum/mutantrace/xenomorph/sentinel/l
	research_level = 10000
	msgGain = ""
	msgLose = ""

/datum/bioEffect/mutantrace/xwarrior
	id = "xwarrior"
	mutantrace_option = "Xenomorph Warrior"
	mutantrace_path = /datum/mutantrace/xenomorph/warrior
	research_level = 10000
	msgGain = ""
	msgLose = ""

/datum/bioEffect/mutantrace/xwarriorl
	id = "xwarriorl"
	mutantrace_option = "Xenomorph Warrior Leaping"
	mutantrace_path = /datum/mutantrace/xenomorph/warrior/l
	research_level = 10000
	msgGain = ""
	msgLose = ""


/datum/bioEffect/mutantrace/xpraetorian
	id = "xpraetorian"
	mutantrace_option = "Xenomorph Praetorian"
	mutantrace_path = /datum/mutantrace/xenomorph/praetorian
	research_level = 10000
	msgGain = ""
	msgLose = ""

/datum/bioEffect/mutantrace/xqueen
	id = "xqueen"
	mutantrace_option = "Xenomorph Queen"
	mutantrace_path = /datum/mutantrace/xenomorph/drone/queen
	research_level = 10000
	msgGain = ""
	msgLose = ""

/datum/bioEffect/mutantrace/xempress
	id = "xempress"
	mutantrace_option = "Xenomorph Empress"
	mutantrace_path = /datum/mutantrace/xenomorph/drone/queen/empress
	research_level = 10000
	msgGain = ""
	msgLose = ""

/datum/bioEffect/mutantrace/xfacehugger
	id = "xfacehugger"
	mutantrace_option = "Xenomorph Facehugger"
	mutantrace_path = /datum/mutantrace/xenomorph/larva/facehugger
	research_level = 10000
	msgGain = ""
	msgLose = ""
