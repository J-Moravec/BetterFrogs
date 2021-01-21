#modname "Better frog mages"

#icon "./BetterFrogs/BetterFrogs.tga"

#description "This mod improve frog (Muuch) mages in Ma Xib. Muuch Kuhul was horribly overpriced for what he could do, mainly since 2W is not a good path. Fortunately, by reducing 2W into 1W, price of the mage dropped by 80 gold into 210, which is reasonable price for what he can do. Also, all mages have now 10% chance for WDEN. This doesn't increase their price, but make the lucky ones much better."

#version "0.1"

// Making Muuch K'uhul 1W1D1E + 1.1WDEN instead of 2W1D1E + 1WDEN
#selectmonster 2716
#magicskill 2 1
#custommagic 13824 10
#end

// Making Ah Itz 1W1D + 0.1 WDEN
#selectmonster 2718
#custommagic 13824 10
#end

// Making Ah Ha' 1W1D + 0.1 WDEN
#selectmonster 2717
#custommagic 13824 10
#end


// Blood drinkers -- blood sacred summon
// jungle muuch with:
// +4 hp, +3 natprot, +5 mr, +2 morale,+2 str, +2 att, -4 def
// no armor, no weapons, but 3 natural attacks 
#newmonster
#copystats 2727
#name "Aj Uk'uw Uk'ik'"
#nametype 157
#descr " The Aj Uk'uw Uk'ik' or blood drinkers, are Muuch warriors that were cursed with taste of blood. They are larger and stronger than common Muuch, with toothless mouth and soft hands now spotting sharp bone outgrows reminiscing teeth and claws. They hunger for flesh and blood, but devour anything that comes under their hands. In battle, the smell of blood and sweat makes them forget the rest of the sanity and their only concerns turns to be tearing and devouring flesh from their enemies. Their madness is considered divine and they are feared among the Xibalbans. The strange mutations give them an ability to slowly heal their wounds"
#spr1 "./BetterFrogs/blood-drinker1.tga"
#spr2 "./BetterFrogs/blood-drinker2.tga"
#gcost 0
#hp 20
#prot 3
#mr 15
#mor 12
#str 14
#att 12
#def 8
#weapon 0
#weapon 20 -- Bite
#weapon 29 -- Claw
#weapon 29 -- Claw
#armor 0
#berserk 3
#heal
#holy
#supplybonus -3 // glutton
#end

#newspell
#name "Bind Blood-drinkers"
#descr "During the dry seasons, the forest-dwelling Muuch of Xibalba burrow themselves into mud to hibernate to awaken with the first life-bearing rains touching their skin. Blood mage can corrupt this process by drenching these burrows in blood. The the skin of Muuch absorb blood, which transform the miserable victims into Aj Uk'uw Uk'ik', the blood-drinkers, ravaged by constant craving for flesh and blood. By feeding them, a skilled blood mage can command these to fight for their cause."
#school 6
#researchlevel 3
#path 0 7 // blood
#path 1 6 // nature
#pathlevel 0 1
#pathlevel 1 1
#effect 10001 // summon monster
#damagemon "Aj Uk'uw Uk'ik'"
#nreff 3
#fatiguecost 800 // 8 blood slaves
#restricted 68 // Ma Xibalba only
#end

#newspell
#name "Scaring"
#descr "Unskilled bloodletting can cause a permanent scar."
#details "Cause Never Healing Wound" 
#effect 11
#damage 67108864
#spec 554320000 // never healing wound
#end

#newspell
#name "Blood Sacrifice"
#descr "Unskilled blood sacrifice can cause bleeding."
#details "Cause bleeding"
#effect 11
#damage 8192
#spec 554320000 // does not effect mindless, undead, lifeless, ignore shields, armor negating, magic negate easily
#nextspell "Scaring"
#end

#newspell
#name "Sacred Bloodletting"
#descr "The mage-priest will pierce his tongue with an obsidian blade to sacrifice his own blood in a sacred ritual. This imbue the priest with a holy power and grants them higher mastery in all magical paths for a short time. Practician of this sacred ritual should be cautious as they could permanently scar himself or even bleed to death."
#details "+1 to all magical paths, but can cause bleeding and never healing wound"
#school 0
#researchlevel 3
#path 0 2
#path 1 8
#pathlevel 0 1
#pathlevel 1 1
#effect 23 // boost paths
#damage 128 // from Power of the Spheres (different damages do different boosts
#spec 537526272// does not effect mindless, undead and lifeless
#fatiguecost 20 // lets start with low fatigue cost to balance out the injury
#restricted 68 // Ma Xibalba only
#nextspell "Blood Sacrifice"
#nocastmindless
#end
