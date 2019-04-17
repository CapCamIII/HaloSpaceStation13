
/obj/vehicles/scorpion_tank
	name = "scorp"
	desc = "scorpion"

	icon = 'code/modules/halo/vehicles/Scorpion.dmi'
	icon_state = "move"

	bound_height = 64
	bound_width = 64

	comp_prof = /datum/component_profile/scorpion

	vehicle_move_delay = 2.25
	exposed_positions = list("passenger" = 40,"gunner" = 25)

	occupants = list(4,0)

	vehicle_size = 64

/obj/item/vehicle_component/health_manager/scorpion
	integrity = 750
	resistances = list("brute"=65,"burn"=50,"emp"=40)

/datum/component_profile/scorpion
	pos_to_check = "driver"
	gunner_weapons = list(/obj/item/weapon/gun/vehicle_turret/switchable/scorpion_cannon)
	vital_components = newlist(/obj/item/vehicle_component/health_manager/scorpion)
	cargo_capacity = 8 //Can hold, at max, two normals

/obj/item/weapon/gun/vehicle_turret/switchable/scorpion_cannon
	name = "Scorpion Cannon"
	desc = "A slow firing but devastatingly damaging cannon."

	projectile_fired = /obj/item/projectile/bullet/scorp_cannon

	fire_delay = 5 SECONDS

	burst = 1

	guns_switchto = list(/datum/vehicle_gun/scorp_cannon,/datum/vehicle_gun/scorp_machinegun)

/datum/vehicle_gun/scorp_cannon
	name = "Scorpion Cannon"
	desc = "A slow firing but devastatinly damaging cannon."
	burst_size = 1
	burst_delay = 1
	fire_delay = 5 SECONDS
	fire_sound = 'code/modules/halo/sounds/scorp_cannon_fire.ogg'
	proj_fired = /obj/item/projectile/bullet/scorp_cannon

/datum/vehicle_gun/scorp_machinegun
	name = "Scorpion Machinegun"
	desc = "A short burst machinegun, used for anti-infantry purposes."
	burst_size = 3
	burst_delay = 0.3 SECONDS
	fire_delay = 1.5 SECONDS
	fire_sound = 'code/modules/halo/sounds/scorp_machinegun_fire.ogg'
	proj_fired = /obj/item/projectile/bullet/a762_ap

/obj/item/projectile/bullet/scorp_cannon
	damage = 50

/obj/item/projectile/bullet/scorp_cannon/on_impact(var/atom/impacted)
	explosion(impacted,-1,-1,1,3,guaranteed_damage = 50,guaranteed_damage_range = 2)
	. = ..()
