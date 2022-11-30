/datum/component/internal_wound/robotic
	dupe_mode = COMPONENT_DUPE_UNIQUE
	diagnosis_stat = STAT_MEC
	diagnosis_difficulty = STAT_LEVEL_BASIC
	can_progress = FALSE				// No cascading failures like organics
	wound_nature = MODIFICATION_SILICON

// Blunt
/datum/component/internal_wound/robotic/blunt
	name = "mechanical malfunction"
	treatments_item = list(/obj/item/stack/nanopaste = 1)
	treatments_tool = list(QUALITY_HAMMERING = FAILCHANCE_NORMAL)
	treatments_chem = list(CE_MECH_REPAIR = 0.55)		// repair nanites + 3 metals OR repair nanite OD + a metal
	scar = /datum/component/internal_wound/robotic/deformation
	severity = 2

/datum/component/internal_wound/robotic/blunt/deformation
	name = "bent structure"

/datum/component/internal_wound/robotic/blunt/crack
	name = "cracked frame"

// Sharp
/datum/component/internal_wound/robotic/sharp
	name = "perforation"
	treatments_item = list(/obj/item/stack/nanopaste = 1)
	treatments_tool = list(QUALITY_SEALING = FAILCHANCE_NORMAL)
	treatments_chem = list(CE_MECH_REPAIR = 0.85)		// repair nanites + 6 metals OR repair nanite OD + 7 metals
	severity = 2

/datum/component/internal_wound/robotic/sharp/leak
	name = "weeping leak"

/datum/component/internal_wound/robotic/sharp/pressure
	name = "pressure failure"

// Edge
/datum/component/internal_wound/robotic/edge
	name = "electrical short"
	treatments_item = list(/obj/item/stack/cable_coil = 5, /obj/item/stack/nanopaste = 1)
	treatments_tool = list(QUALITY_CLAMPING = FAILCHANCE_NORMAL)
	treatments_chem = list(CE_MECH_REPAIR = 0.85)
	severity = 2

/datum/component/internal_wound/robotic/edge/cut
	name = "exposed wiring"

/datum/component/internal_wound/robotic/edge/arc
	name = "arcing"

// EMP/burn wounds
/datum/component/internal_wound/robotic/emp_burn
	name = "electrical malfunction"
	treatments_item = list(/obj/item/stack/cable_coil = 5, /obj/item/stack/nanopaste = 1)
	treatments_tool = list(QUALITY_PULSING = FAILCHANCE_NORMAL)
	treatments_chem = list(CE_MECH_REPAIR = 0.95)	// repair nanite OD + all metals
	severity = 2

/datum/component/internal_wound/robotic/emp_burn/overheat
	name = "overheating component"
	treatments_item = list(/obj/item/stack/cable_coil = 5, /obj/item/stack/nanopaste = 1)
	treatments_tool = list(QUALITY_PULSING = FAILCHANCE_NORMAL)
	treatments_chem = list(CE_MECH_STABLE = 2.5)	// coolant + refrigerant

// Tox
/datum/component/internal_wound/robotic/build_up
	name = "clogged filter"
	treatments_tool = list(QUALITY_PRYING = FAILCHANCE_NORMAL)	// Pop it out and replace the filter
	treatments_chem = list(CE_MECH_ACID = 1)		// sulphiric acid
	severity = 1

/datum/component/internal_wound/robotic/build_up/fod
	name = "foreign object debris"

// Other wounds
/datum/component/internal_wound/robotic/corrosion
	name = "corrosion"
	treatments_chem = list(CE_MECH_ACID = 1.5)	// sulphiric + hydrochloric acid or poly acid
	scar = /datum/component/internal_wound/robotic/blunt	// Cleaning corrosion involves removing material
	severity = 2

/datum/component/internal_wound/robotic/corrosion/rust
	name = "rust"

/datum/component/internal_wound/robotic/deformation
	dupe_mode = COMPONENT_DUPE_UNIQUE
	name = "plastic deformation"
	treatments_item = list(/obj/item/stack/nanopaste = 5)
	treatments_tool = list(QUALITY_WELDING = FAILCHANCE_NORMAL)
	treatments_chem = list(CE_MECH_REPAIR = 0.95)	// repair nanite OD + all metals
	severity = 4
