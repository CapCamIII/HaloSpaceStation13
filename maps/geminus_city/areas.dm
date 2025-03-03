/obj/autolight_init/geminus
	targ_area = /area/planets/Geminus/outdoor/autolight
	autolight_chance = 50
	weathers = list(/datum/weather/windy/p20,/datum/weather/rain/p25,/datum/weather/rain/heavy/p20_night_p40)

/area/planets/Geminus
	name = "\improper Geminus City"
	icon_state = "Holodeck"
	dynamic_lighting = 0

/area/planets/Geminus/outdoor
	name = "\improper Geminus City Area"
	requires_power = 0
	sound_env = URBAN_OPEN

/area/planets/Geminus/outdoor/autolight
	name = "\improper Geminus City Area"
	requires_power = 0

/area/planets/Geminus/outdoor/caves
	name = "\improper Geminus City - Caves"
	icon_state = "yellow"
	dynamic_lighting = 1
	sound_env = TUNNEL_ENCLOSED

/area/planets/Geminus/outdoor/caves_upper
	name = "\improper Geminus City - Upper Caves"
	icon_state = "yellow"
	dynamic_lighting = 1
	sound_env = TUNNEL_ENCLOSED

/area/planets/Geminus/indoor
	name = "\improper Geminus City - Geminus Interior"
	icon_state = "yellow"
	luminosity = 0
	dynamic_lighting = 1
	sound_env = SMALL_ENCLOSED

/area/planets/Geminus/indoor/arrivalbus
	name = "\improper Geminus City - Arrival Bus"
	icon_state = "yellow"

/area/planets/Geminus/indoor/bar
	name = "\improper Geminus City - Bar"
	icon_state = "bar"
	sound_env = LARGE_ENCLOSED

/area/planets/Geminus/indoor/kitchen
	name = "\improper Geminus City - Kitchen"
	icon_state = "kitchen"

/area/planets/Geminus/indoor/stage
	name = "\improper Geminus City - Stage"
	icon_state = "theatre"

/area/planets/Geminus/indoor/hotel
	name = "\improper Geminus City - Hotel"
	icon_state = "yellow"

/area/planets/Geminus/indoor/gamebar
	name = "\improper Geminus City - Game Bar"
	icon_state = "yellow"

/area/planets/Geminus/indoor/grocery
	name = "\improper Geminus City - Grocery Store"
	icon_state = "kitchen"

/area/planets/Geminus/indoor/courtroom
	name = "\improper Geminus City - Courtroom"
	icon_state = "courtroom"
	sound_env = LARGE_ENCLOSED

/area/planets/Geminus/indoor/chapel
	name = "\improper Geminus City - Chapel"
	icon_state = "chapel"

/area/planets/Geminus/indoor/virology
	name = "\improper Geminus City - Virology"
	icon_state = "virology"

/area/planets/Geminus/indoor/virologyaccess
	name = "\improper Geminus City - Virology Access"
	icon_state = "virology"

/area/planets/Geminus/indoor/police_station
	name = "\improper Geminus City - Police Station"
	icon_state = "brig"

/area/planets/Geminus/indoor/city_hall
	name = "\improper Geminus City - City Hall"
	icon_state = "dk_yellow"

/area/planets/Geminus/indoor/city_hall1
	name = "\improper Geminus City - City Hall Level 1"
	icon_state = "dk_yellow"

/area/planets/Geminus/indoor/mayor
	name = "\improper Geminus City - Mayor Office"
	icon_state = "captain"
	sound_env = SMALL_SOFTFLOOR

/area/planets/Geminus/indoor/mayor_car_park
	name = "\improper Geminus City - Mayor Car Park"
	icon_state = "captain"
/*
/area/planets/Geminus/indoor/headmeetingroom
	name = "\improper City Hall Meeting Room"
	icon_state = "conference"
*/
/area/planets/Geminus/indoor/cargo
	name = "\improper Geminus City - Cargo"
	icon_state = "quart"
/*
/area/planets/Geminus/indoor/disposal_bay
	name = "\improper Disposal Bay"
	icon_state = "blue"
*/
/*
/area/planets/Geminus/indoor/museum
	name = "\improper Geminus Museum"
	icon_state = "blue"
*/

/*
/area/planets/Geminus/indoor/science
	name = "\improper Research and Development Labs"
	icon_state = "purple"
*/

/area/planets/Geminus/indoor/morgue
	name = "\improper Geminus City - Morgue"
	icon_state = "morgue"

/area/planets/Geminus/indoor/aiupload
	name = "\improper Geminus City - City AI Upload"
	icon_state = "ai_upload"

/area/planets/Geminus/indoor/tech_storage
	name = "\improper Geminus City - Tech Shop"
	icon_state = "green"
/*
/area/planets/Geminus/indoor/mining
	name = "\improper Mine"
	icon_state = "mining"
*/

/area/planets/Geminus/indoor/armory
	name = "\improper Geminus City - City Police Armory"
	icon_state = "yellow"

/area/planets/Geminus/indoor/hospital
	name = "\improper Geminus City - City Hospital"
	icon_state = "medbay"
	sound_env = LARGE_ENCLOSED

/area/planets/Geminus/indoor/hospital1
	name = "\improper Geminus City - City Hospital Level 1"
	icon_state = "medbay"
	sound_env = LARGE_ENCLOSED

/area/planets/Geminus/indoor/cmo
	name = "\improper Geminus City - Chief Medical Officer Office"
	icon_state = "cmo"

/area/planets/Geminus/indoor/nuclear_storage
	name = "\improper Geminus City - Nuclear Storage"

/area/planets/Geminus/indoor/metro_abandoned
	name = "\improper Geminus City - Abandoned Metro"
	icon_state = "green"

/area/planets/Geminus/indoor/slums_clubgun
	name = "\improper Geminus City - Slums Club and Gun Store"

/area/planets/Geminus/indoor/slums_entrancebar
	name = "\improper Geminus City - Slums Entrance Bar"

/area/planets/Geminus/indoor/slums_entrancebar_small
	name = "\improper Geminus City - Slums Entrance Bar (Small)"

/area/planets/Geminus/indoor/slums_surgery
	name = "\improper Geminus City - Slums Surgery"

/area/planets/Geminus/indoor/slums_botany
	name = "\improper Geminus City - Slums Botany"

/area/planets/Geminus/indoor/slums_hideout
	name = "\improper Geminus City - Slums Hideout"

/area/planets/Geminus/indoor/slums_pub
	name = "\improper Geminus City - Slums Pub"

/area/planets/Geminus/indoor/slums_hotel
	name = "\improper Geminus City - Slums Hotel"

/area/planets/Geminus/indoor/slums_tiny_kitchen
	name = "\improper Geminus City - Slums Tiny Kitchen"

/area/planets/Geminus/indoor/slums_police
	name = "\improper Geminus City - Slums Abandoned Police Station"

/area/planets/Geminus/indoor/slums_largehideout
	name = "\improper Geminus City - Slums Hideout (Large)"

/area/planets/Geminus/indoor/space_elevator
	name = "\improper Geminus City - Space Elevator"
	icon_state = "observatory"

/*
/area/planets/Geminus/outdoor/spaceport
	name = "\improper Spaceport"
	icon_state = "hangar"
*/

//COLONY MAC//
/*
/area/planets/Geminus/outdoor/MAC
	name = "\improper Geminus MAC"
	icon_state = "firingrange"

/area/planets/Geminus/outdoor/MAC/upper
	name = "\improper Geminus MAC - Upper Level"
	icon_state = "firingrange"
*/
//UNDERGROUND//
/area/geminus_underground
	name = "\improper Geminus Underground Northeast"
	icon_state = "yellow"
	base_turf = /turf/simulated/floor/asteroid/planet
	sound_env = TUNNEL_ENCLOSED

/area/geminus_underground/northwest
	name = "\improper Geminus Underground Northwest"
	icon_state = "blueold"

/area/geminus_underground/north
	name = "\improper Geminus Underground North"
	icon_state = "dark"

/area/geminus_underground/southwest
	name = "\improper Geminus Underground South"
	icon_state = "purple"

/area/geminus_underground/south
	name = "\improper Geminus Underground South"
	icon_state = "red"

/area/geminus_underground/southeast
	name = "\improper Geminus Underground South"
	icon_state = "green"
