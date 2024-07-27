/obj/item
	var/donator_key
	var/donator_allow_other_usage = FALSE

/obj/item/mob_can_equip(mob/living/target, mob/living/equipper, slot, disable_warning, bypass_equip_delay_self, swap)
	if(!donator_key || donator_allow_other_usage || check_donator(equipper) || check_donator(target))
		return ..()

	to_chat(target, "<span class='warning'>A strange force prevents you from equipping [src]...</span>")
	return FALSE

/obj/item/examine(mob/user)
	. = ..()
	if(!donator_key) // Github I demand you run the checks on this PR
		return .
	if(check_donator(user))
		. += "<span class='notice'><ul>This is one of your donator items, to <b>[(donator_allow_other_usage ? "allow" : "disallow")]</b> sharing <b>CtrlShiftClick</b> it.</ul></span>"
	else
		if(!donator_allow_other_usage)
			. += "<span class='warning'>A strange force prevents you from making eye contact with it.</span>"

/obj/item/proc/check_donator(mob/user)
	return ckey(user.key) == ckey(donator_key)

/obj/item/CtrlShiftClick(mob/user)
	if(!donator_key || !check_donator(user))
		return ..()

	donator_allow_other_usage = !donator_allow_other_usage
	to_chat(user, "<span class='notice'>You <b>[(donator_allow_other_usage ? "allow" : "disallow")]</b> sharing of [src].</span>")
	return TRUE
