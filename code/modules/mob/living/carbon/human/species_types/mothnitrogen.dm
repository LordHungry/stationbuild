/datum/species/moth/nitrogen
	name = "\improper Nitromoth"
	plural_form = "Nitromoths"
	id = SPECIES_NITROMOTH
	say_mod = "hisses"
	mutantlungs = /obj/item/organ/internal/lungs/nitrogen
	burnmod = 1.5
	heatmod = 1.5
	breathid = "n2"
	outfit_important_for_life = /datum/outfit/internals/nitrogen
	inherent_traits = list(
		TRAIT_ADVANCEDTOOLUSER,
		TRAIT_CAN_STRIP,
		TRAIT_CAN_USE_FLIGHT_POTION,
		TRAIT_RESISTCOLD,
	)

/datum/species/moth/nitrogen/pre_equip_species_outfit(datum/job/job, mob/living/carbon/human/equipping, visuals_only)
	. = ..()
	var/datum/outfit/internals/nitrogen/O = new /datum/outfit/internals/nitrogen
	equipping.equipOutfit(O, visuals_only)
	equipping.internal = equipping.get_item_for_held_index(2)
	equipping.update_internals_hud_icon(1)

/datum/species/moth/nitrogen/get_species_description()
	return "It is unknown how this subspecies formed. Legends state though of many caves underneath their home planet's surface, \
		filled with nitrous-oxide and not much else. Other moths say they just worked on the cooling chambers too much."

/datum/species/moth/nitrogen/create_pref_unique_perks()
	var/list/to_add = list()

	to_add += list(
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "wind",
			SPECIES_PERK_NAME = "Chilled Climate",
			SPECIES_PERK_DESC = "Nitromoths, with their specialized lungs, can breathe in supercooled gasses to slowly purge their system of toxins.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "feather-alt",
			SPECIES_PERK_NAME = "Precious Wings",
			SPECIES_PERK_DESC = "Moths can fly in pressurized, zero-g environments and safely land short falls using their wings.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "tshirt",
			SPECIES_PERK_NAME = "Meal Plan",
			SPECIES_PERK_DESC = "Moths can eat clothes for nourishment.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
			SPECIES_PERK_ICON = "wind",
			SPECIES_PERK_NAME = "Nitrous-oxide Breathing",
			SPECIES_PERK_DESC = "Nitromoths must breathe nitrous-oxide to survive. You receive a tank when you arrive. Stops you from getting all sleepy from it too, though.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "fire",
			SPECIES_PERK_NAME = "Ablazed Wings",
			SPECIES_PERK_DESC = "Moth wings are fragile, and can be easily burnt off.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "sun",
			SPECIES_PERK_NAME = "Bright Lights",
			SPECIES_PERK_DESC = "Moths need an extra layer of flash protection to protect \
				themselves, such as against security officers or when welding. Welding \
				masks will work.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "thermometer-half",
			SPECIES_PERK_NAME = "Burning Up",
			SPECIES_PERK_DESC = "Nitromoths are especially weak to heat, having an even easier time being burned than most moths.",
		),
	)

	return to_add
