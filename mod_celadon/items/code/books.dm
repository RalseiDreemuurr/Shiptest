/obj/item/elysm_manual
	name = "Book of Elysm"
	desc = "The book's cover reads: \"The national language of the Republic of Elysium, which is a mixture of Ard al-Elysm Almaveud and newly arrived settlers speaking a variation of Arabic 2378 Sol\""
	icon = 'mod_celadon/items/icons/obj/book.dmi'
	lefthand_file = 'mod_celadon/items/icons/mob/inhands/books_lefthand.dmi'
	righthand_file = 'mod_celadon/items/icons/mob/inhands/books_righthand.dmi'
	icon_state = "elysm_book"

/obj/item/elysm_manual/attack_self(mob/living/user)
	if(!isliving(user))
		return

	if(user.has_language(/datum/language/elysm))
		to_chat(user, "<span class='boldwarning'>You start skimming through [src], but you already know Elysm.</span>")
		return

	to_chat(user, "<span class='boldannounce'>You start skimming through [src], and suddenly your mind is filled with arabic symbols.</span>")
	user.grant_language(/datum/language/elysm, TRUE, TRUE, LANGUAGE_MIND)


/obj/item/elysm_manual/attack(mob/living/M, mob/living/user)
	if(!istype(M) || !istype(user))
		return
	if(M == user)
		attack_self(user)
		return

	playsound(loc, "punch", 25, TRUE, -1)

	if(M.stat == DEAD)
		M.visible_message("<span class='danger'>[user] smacks [M]'s lifeless corpse with [src].</span>", "<span class='userdanger'>[user] smacks your lifeless corpse with [src].</span>", "<span class='hear'>You hear smacking.</span>")
	else if(M.has_language(/datum/language/elysm))
		M.visible_message("<span class='danger'>[user] beats [M] over the head with [src]!</span>", "<span class='userdanger'>[user] beats you over the head with [src]!</span>", "<span class='hear'>You hear smacking.</span>")
	else
		M.visible_message("<span class='notice'>[user] teaches [M] by beating [M.p_them()] over the head with [src]!</span>", "<span class='boldnotice'>As [user] hits you with [src], arabic symbols flow through your mind.</span>", "<span class='hear'>You hear smacking.</span>")
		M.grant_language(/datum/language/elysm, TRUE, TRUE, LANGUAGE_MIND)

/obj/item/alquadim_manual
	name = "Book of Alquadim-Elysm"
	desc = "The book's cover reads: \"The traditional ancient language of the Elysium Republic, originated in Ard al-Elysm Almaveuda, which are representatives of the Arabic language of 2147, isolated for almost 2 centuries\""
	icon = 'mod_celadon/items/icons/obj/book.dmi'
	lefthand_file = 'mod_celadon/items/icons/mob/inhands/books_lefthand.dmi'
	righthand_file = 'mod_celadon/items/icons/mob/inhands/books_righthand.dmi'
	icon_state = "alquadim_elysm"

/obj/item/codespeak_manual/attack_self(mob/living/user)
	if(!isliving(user))
		return

	if(user.has_language(/datum/language/alquadim))
		to_chat(user, "<span class='boldwarning'>You start skimming through [src], but you already know Alquadim-Elysm.</span>")
		return

	to_chat(user, "<span class='boldannounce'>You start skimming through [src], and suddenly your mind is filled with arabic symbols.</span>")
	user.grant_language(/datum/language/alquadim, TRUE, TRUE, LANGUAGE_MIND)


/obj/item/codespeak_manual/attack(mob/living/M, mob/living/user)
	if(!istype(M) || !istype(user))
		return
	if(M == user)
		attack_self(user)
		return

	playsound(loc, "punch", 25, TRUE, -1)

	if(M.stat == DEAD)
		M.visible_message("<span class='danger'>[user] smacks [M]'s lifeless corpse with [src].</span>", "<span class='userdanger'>[user] smacks your lifeless corpse with [src].</span>", "<span class='hear'>You hear smacking.</span>")
	else if(M.has_language(/datum/language/alquadim))
		M.visible_message("<span class='danger'>[user] beats [M] over the head with [src]!</span>", "<span class='userdanger'>[user] beats you over the head with [src]!</span>", "<span class='hear'>You hear smacking.</span>")
	else
		M.visible_message("<span class='notice'>[user] teaches [M] by beating [M.p_them()] over the head with [src]!</span>", "<span class='boldnotice'>As [user] hits you with [src], arabic symbols flow through your mind.</span>", "<span class='hear'>You hear smacking.</span>")
		M.grant_language(/datum/language/alquadim, TRUE, TRUE, LANGUAGE_MIND)

/obj/item/thayos_manual
	name = "Book of Thayoss"
	desc = "The book's cover reads: \"The national language of the Thayos Interstellar Empire, which is a modification of Japanese 2475\""
	icon = 'mod_celadon/items/icons/obj/book.dmi'
	lefthand_file = 'mod_celadon/items/icons/mob/inhands/books_lefthand.dmi'
	righthand_file = 'mod_celadon/items/icons/mob/inhands/books_righthand.dmi'
	icon_state = "thayos_book"

/obj/item/codespeak_manual/attack_self(mob/living/user)
	if(!isliving(user))
		return

	if(user.has_language(/datum/language/thayoss))
		to_chat(user, "<span class='boldwarning'>You start skimming through [src], but you already know Thayoss.</span>")
		return

	to_chat(user, "<span class='boldannounce'>You start skimming through [src], and suddenly your mind is filled with japanese symbols.</span>")
	user.grant_language(/datum/language/thayoss, TRUE, TRUE, LANGUAGE_MIND)


/obj/item/codespeak_manual/attack(mob/living/M, mob/living/user)
	if(!istype(M) || !istype(user))
		return
	if(M == user)
		attack_self(user)
		return

	playsound(loc, "punch", 25, TRUE, -1)

	if(M.stat == DEAD)
		M.visible_message("<span class='danger'>[user] smacks [M]'s lifeless corpse with [src].</span>", "<span class='userdanger'>[user] smacks your lifeless corpse with [src].</span>", "<span class='hear'>You hear smacking.</span>")
	else if(M.has_language(/datum/language/thayoss))
		M.visible_message("<span class='danger'>[user] beats [M] over the head with [src]!</span>", "<span class='userdanger'>[user] beats you over the head with [src]!</span>", "<span class='hear'>You hear smacking.</span>")
	else
		M.visible_message("<span class='notice'>[user] teaches [M] by beating [M.p_them()] over the head with [src]!</span>", "<span class='boldnotice'>As [user] hits you with [src], japanese symbols flow through your mind.</span>", "<span class='hear'>You hear smacking.</span>")
		M.grant_language(/datum/language/thayoss, TRUE, TRUE, LANGUAGE_MIND)

/obj/item/fuyo_manual
	name = "Book of Fuyo"
	desc = "The book's cover reads: \"The second language of the Taios Interstellar Empire, which is a modification of Chinese 2475\""
	icon = 'mod_celadon/items/icons/obj/book.dmi'
	lefthand_file = 'mod_celadon/items/icons/mob/inhands/books_lefthand.dmi'
	righthand_file = 'mod_celadon/items/icons/mob/inhands/books_righthand.dmi'
	icon_state = "fuyo_book"

/obj/item/codespeak_manual/attack_self(mob/living/user)
	if(!isliving(user))
		return

	if(user.has_language(/datum/language/fuyo))
		to_chat(user, "<span class='boldwarning'>You start skimming through [src], but you already know Fuyo.</span>")
		return

	to_chat(user, "<span class='boldannounce'>You start skimming through [src], and suddenly your mind is filled with chinese symbols.</span>")
	user.grant_language(/datum/language/fuyo, TRUE, TRUE, LANGUAGE_MIND)


/obj/item/codespeak_manual/attack(mob/living/M, mob/living/user)
	if(!istype(M) || !istype(user))
		return
	if(M == user)
		attack_self(user)
		return

	playsound(loc, "punch", 25, TRUE, -1)

	if(M.stat == DEAD)
		M.visible_message("<span class='danger'>[user] smacks [M]'s lifeless corpse with [src].</span>", "<span class='userdanger'>[user] smacks your lifeless corpse with [src].</span>", "<span class='hear'>You hear smacking.</span>")
	else if(M.has_language(/datum/language/fuyo))
		M.visible_message("<span class='danger'>[user] beats [M] over the head with [src]!</span>", "<span class='userdanger'>[user] beats you over the head with [src]!</span>", "<span class='hear'>You hear smacking.</span>")
	else
		M.visible_message("<span class='notice'>[user] teaches [M] by beating [M.p_them()] over the head with [src]!</span>", "<span class='boldnotice'>As [user] hits you with [src], chinese symbols flow through your mind.</span>", "<span class='hear'>You hear smacking.</span>")
		M.grant_language(/datum/language/fuyo, TRUE, TRUE, LANGUAGE_MIND)
