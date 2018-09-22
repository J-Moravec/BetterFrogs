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
