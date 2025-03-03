/mob/living/carbon/human/movement_delay()
	var/tally = ..()

	if(species.slowdown)
		tally += species.slowdown

	tally += species.handle_movement_delay_special(src)

	if(lying || resting)
		tally += 4
		if(species.slowdown < 0)
			var/slowdown_added = (species.slowdown * -1)/2
			tally += slowdown_added
		else
			tally *= 1.5

	if (istype(loc, /turf/space)) return -1 // It's hard to be slowed down in space by... anything

	if(embedded_flag || (stomach_contents && stomach_contents.len))
		handle_embedded_and_stomach_objects() //Moving with objects stuck in you can cause bad times.

	var/health_deficiency = (maxHealth - health)
	if(health_deficiency >= 40) tally += (health_deficiency / 35)

	if(can_feel_pain())
		if(get_shock() >= 20) tally += (get_shock() / 30) //halloss shouldn't slow you down if you can't even feel it

	if(buckled && istype(buckled, /obj/structure/bed/chair/wheelchair))
		for(var/organ_name in list(BP_L_HAND, BP_R_HAND, BP_L_ARM, BP_R_ARM))
			var/obj/item/organ/external/E = get_organ(organ_name)
			if(!E || E.is_stump())
				tally += 4
			else if(E.splinted)
				tally += 0.5
			else if(E.status & ORGAN_BROKEN)
				tally += 1.5
	else
		var/equipment_slowdown = 0
		for(var/slot = slot_first to slot_last)
			var/obj/item/I = get_equipped_item(slot)
			if(I)
				equipment_slowdown += I.slowdown_general
				equipment_slowdown += I.slowdown_per_slot[slot]

		if(ignore_equipment_threshold && equipment_slowdown > ignore_equipment_threshold)
			equipment_slowdown -= ignore_equipment_threshold
		equipment_slowdown *= species.equipment_slowdown_multiplier

		tally += equipment_slowdown

		for(var/organ_name in list(BP_L_LEG, BP_R_LEG, BP_L_FOOT, BP_R_FOOT))
			var/obj/item/organ/external/E = get_organ(organ_name)
			if(!E || E.is_stump())
				tally += 4
			else if(E.splinted)
				tally += 0.5
			else if(E.status & ORGAN_BROKEN)
				tally += 1.5

	if(shock_stage >= 10) tally += 3

	if(aiming && aiming.aiming_at) tally += 5 // Iron sights make you slower, it's a well-known fact.

	if(FAT in src.mutations)
		tally += 1.5
	if (bodytemperature < 283.222)
		tally += (283.222 - bodytemperature) / 10 * 1.75

	tally += max(2 * stance_damage, 0) //damaged/missing feet or legs is slow

	if(mRun in mutations)
		tally = 0

	var/turf/T = get_turf(src)
	if(src.elevation == T.elevation)
		tally += T.get_movement_delay()

	if(CE_SLOWREMOVE in chem_effects) //Goes here because it checks the full tally first.
		if(tally > 0)
			tally = max(0, tally - SLOWDOWN_REMOVAL_CHEM_MAX_REMOVED)

	if(CE_SPEEDBOOST in chem_effects)
		tally -= SPEEDBOOST_CHEM_SPEED_INCREASE

	return (tally+config.human_delay)

/mob/living/carbon/human/Allow_Spacemove(var/check_drift = 0)
	//Can we act?
	if(restrained())	return 0

	//Do we have a working jetpack?
	var/obj/item/weapon/tank/jetpack/thrust
	if(wear_suit)
		if(istype(wear_suit,/obj/item/clothing/suit/armor/special))
			var/obj/item/clothing/suit/armor/special/eva = wear_suit
			for(var/datum/armourspecials/integrated_jetpack/specials in eva.specials)
				thrust = specials.integrated_thrust
				break
	if(back)
		if(istype(back,/obj/item/weapon/tank/jetpack))
			thrust = back
		else if(istype(back,/obj/item/weapon/rig))
			var/obj/item/weapon/rig/rig = back
			for(var/obj/item/rig_module/maneuvering_jets/module in rig.installed_modules)
				thrust = module.jets
				break

	if(thrust)
		if(((!check_drift) || (check_drift && thrust.stabilization_on)) && (!lying) && (thrust.allow_thrust(0.01, src)))
			inertia_dir = 0
			return 1

	//If no working jetpack then use the other checks
	. = ..()


/mob/living/carbon/human/slip_chance(var/prob_slip = 5)
	if(!..())
		return 0

	//Check hands and mod slip
	if(!l_hand)	prob_slip -= 2
	else if(l_hand.w_class <= ITEM_SIZE_SMALL)	prob_slip -= 1
	if (!r_hand)	prob_slip -= 2
	else if(r_hand.w_class <= ITEM_SIZE_SMALL)	prob_slip -= 1

	return prob_slip

/mob/living/carbon/human/Check_Shoegrip()
	if(species.flags & NO_SLIP)
		return 1
	if(shoes && (shoes.item_flags & NOSLIP) && istype(shoes, /obj/item/clothing/shoes/magboots))  //magboots + dense_object = no floating
		return 1
	return 0

/mob/living/carbon/human/Move(var/newloc,newdir)
	var/olddir = dir
	. = ..()
	if(olddir != dir)
		reapply_offsets()
