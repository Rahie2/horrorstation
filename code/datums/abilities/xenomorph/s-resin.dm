

/datum/targetable/xenomorph/secrete_resin
	name = "Secrete Resin"
	desc = "Make a pile of resin, which can be used for building."
	icon_state = "resinp"
	cooldown = 0
	targeted = 0
	target_anything = 0
	restricted_area_check = 2

	cast(atom/target)
		if (..())
			return 1

		var/mob/living/C = holder.owner

		if (!C.loc || !istype(C.loc, /turf/simulated/floor))
			return 0

		if (!istype(C:mutantrace, /datum/mutantrace/xenomorph/drone))
			boutput(C, "<span style = \"color:red\"><B>Your caste cannot secrete resin.</span></B>")
			return 0

		if (C:mutantrace:plasma < 100)
			boutput(C, "<span style = \"color:red\"><B>You need at least 100 plasma to use this ability.</span></B>")
			return 0

		if (locate(/obj/xeno/hive) in C.loc)
			for (var/obj/xeno/hive/h in C.loc)
				if (h.density || istype(h, /obj/xeno/hive/resin_pile) || istype(h, /obj/xeno/hive/nest))
					boutput(C, "<span style = \"color:red\"><B>There is already a resin object here.</span></B>")
					return 0

		new/obj/xeno/hive/resin_pile(C.loc)
		//playsound(C.loc, 'vomitsound.ogg', 100, 1)
		C:mutantrace:plasma-=100

		return 0
