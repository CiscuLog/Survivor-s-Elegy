
# if it's water, return 0
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"minecraft:water"}] run return 0

# if it's a weird potion, return -1
execute if predicate siscu:items/broth/potions_incompatible run return -1

#else, return 1 plus the following
# set potion
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"night_vision"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:night_vision",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_night_vision"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:night_vision",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"invisibility"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:invisibility",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_invisibility"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:invisibility",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"leaping"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:jump_boost",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_leaping"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:jump_boost",amplifier:1,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_leaping"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:jump_boost",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"fire_resistance"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:fire_resistance",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_fire_resistance"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:fire_resistance",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"swiftness"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:speed",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_swiftness"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:speed",amplifier:1,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_swiftness"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:speed",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"slowness"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:slowness",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_slowness"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:slowness",amplifier:1,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_slowness"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:slowness",amplifier:0,duration:1}}]}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"water_breathing"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:water_breathing",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_water_breathing"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:water_breathing",amplifier:0,duration:1}}]}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"healing"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:instant_health",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_healing"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:instant_health",amplifier:1,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"harming"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:instant_damage",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_harming"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:instant_damage",amplifier:1,duration:1}}]}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"poison"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:poison",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_poison"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:poison",amplifier:1,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_poison"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:poison",amplifier:0,duration:1}}]}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"regeneration"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:regeneration",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_regeneration"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:regeneration",amplifier:1,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_regeneration"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:regeneration",amplifier:0,duration:1}}]}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strength"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:strength",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_strength"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:strength",amplifier:1,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_strength"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:strength",amplifier:0,duration:1}}]}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"weakness"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:weakness",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_weakness"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:weakness",amplifier:0,duration:1}}]}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"turtle_master"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:resistance",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_turtle_master"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:resistance",amplifier:1,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_turtle_master"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:resistance",amplifier:0,duration:1}}]}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"slow_falling"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:slow_falling",amplifier:0,duration:1}}]}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_slow_falling"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:slow_falling",amplifier:0,duration:1}}]}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"infested"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:infested",amplifier:0,duration:1}}]}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"oozing"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:oozing",amplifier:0,duration:1}}]}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"weaving"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:weaving",amplifier:0,duration:1}}]}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"wind_charged"}] run data merge storage siscu:volatile {BrothCauldronData:{effects:[{probability:1,effect:{id:"minecraft:wind_charged",amplifier:0,duration:1}}]}}

# potion amplifier
#execute if predicate siscu:items/broth/potions_i run data merge storage siscu:volatile {BrothCauldronData:{effects:[{effect:{amplifier:0}}]}}
#execute if predicate siscu:items/broth/potions_ii run data merge storage siscu:volatile {BrothCauldronData:{effects:[{effect:{amplifier:1}}]}}

# potion duration
execute if predicate siscu:items/broth/potions_instant run scoreboard players set potion_duration siscu.broth_data 9
execute if predicate siscu:items/broth/potions_0_20 run scoreboard players set potion_duration siscu.broth_data 400
execute if predicate siscu:items/broth/potions_0_40 run scoreboard players set potion_duration siscu.broth_data 800
execute if predicate siscu:items/broth/potions_0_45 run scoreboard players set potion_duration siscu.broth_data 900
execute if predicate siscu:items/broth/potions_1_30 run scoreboard players set potion_duration siscu.broth_data 1800
execute if predicate siscu:items/broth/potions_3_00 run scoreboard players set potion_duration siscu.broth_data 3600
execute if predicate siscu:items/broth/potions_4_00 run scoreboard players set potion_duration siscu.broth_data 4800
execute if predicate siscu:items/broth/potions_8_00 run scoreboard players set potion_duration siscu.broth_data 9600 

return 1
