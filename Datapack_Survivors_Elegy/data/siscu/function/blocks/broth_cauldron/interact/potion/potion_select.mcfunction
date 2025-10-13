
data merge storage siscu:volatile {effect:{id:"minecraft:empty",amplifier:0,duration:0}}

# ominous bottle
execute if items entity @s weapon.mainhand ominous_bottle run return run function siscu:blocks/broth_cauldron/interact/potion/ominous_bottle

# potion amplifier
execute if predicate siscu:items/broth/potions_i run data modify storage siscu:volatile effect.amplifier set value 0
execute if predicate siscu:items/broth/potions_ii run data modify storage siscu:volatile effect.amplifier set value 1

# potion duration
execute if predicate siscu:items/broth/potions_instant run data modify storage siscu:volatile effect.duration set value 9
execute if predicate siscu:items/broth/potions_0_20 run data modify storage siscu:volatile effect.duration set value 400
execute if predicate siscu:items/broth/potions_0_40 run data modify storage siscu:volatile effect.duration set value 800
execute if predicate siscu:items/broth/potions_0_45 run data modify storage siscu:volatile effect.duration set value 900
execute if predicate siscu:items/broth/potions_1_30 run data modify storage siscu:volatile effect.duration set value 1800
execute if predicate siscu:items/broth/potions_3_00 run data modify storage siscu:volatile effect.duration set value 3600
execute if predicate siscu:items/broth/potions_4_00 run data modify storage siscu:volatile effect.duration set value 4800
execute if predicate siscu:items/broth/potions_8_00 run data modify storage siscu:volatile effect.duration set value 9600 

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"night_vision"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:night_vision"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_night_vision"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:night_vision"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"invisibility"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:invisibility"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_invisibility"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:invisibility"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"leaping"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:jump_boost"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_leaping"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:jump_boost"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_leaping"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:jump_boost"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"fire_resistance"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:fire_resistance"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_fire_resistance"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:fire_resistance"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"swiftness"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:speed"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_swiftness"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:speed"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_swiftness"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:speed"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"slowness"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:slowness"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_slowness"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:slowness"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_slowness"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:slowness"}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"water_breathing"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:water_breathing"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_water_breathing"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:water_breathing"}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"healing"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:instant_health"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_healing"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:instant_health"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"harming"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:instant_damage"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_harming"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:instant_damage"}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"poison"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:poison"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_poison"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:poison"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_poison"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:poison"}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"regeneration"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:regeneration"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_regeneration"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:regeneration"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_regeneration"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:regeneration"}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strength"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:strength"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_strength"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:strength"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_strength"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:strength"}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"weakness"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:weakness"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_weakness"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:weakness"}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"turtle_master"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:resistance"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"strong_turtle_master"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:resistance"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_turtle_master"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:resistance"}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"slow_falling"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:slow_falling"}}
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"long_slow_falling"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:slow_falling"}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"infested"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:infested"}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"oozing"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:oozing"}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"weaving"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:weaving"}}

execute if items entity @s weapon.mainhand potion[potion_contents={potion:"wind_charged"}] run return run data merge storage siscu:volatile {effect:{id:"minecraft:wind_charged"}}

return fail
