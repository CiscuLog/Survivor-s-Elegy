$summon skeleton ~ ~ ~ {Tags:["siscu.skeleton_checked","converted","rotten"],ArmorItems:$(ArmorItems),HandItems:$(HandItems),ArmorDropChances:$(ArmorDropChances),HandDropChances:$(HandDropChances),Rotation:$(Rotation),FallDistance:$(FallDistance),\
\
LeftHanded:$(LeftHanded),PersistenceRequired:$(PersistenceRequired),CanPickUpLoot:$(CanPickUpLoot)\
\
}

tag @s[type=husk] add siscu.husk_skeleton
tag @s[type=zombified_piglin] add piglin
tag @s[type=zombie_villager] add villager
execute if entity @s[type=#siscu:skull_exceptions] run function siscu:entities/rotting_mobs/set_custom_skulls
execute if entity @s[predicate=siscu:utils/is_baby,tag=!fixed_scale] run function siscu:entities/rotting_mobs/set_size

data modify entity @n[tag=converted] Tags append from entity @s Tags[]

execute if data entity @s DeathLootTable run data modify entity @n[tag=converted] DeathLootTable set from entity @s DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=converted] CustomName set from entity @s CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=converted] CustomNameVisible set from entity @s CustomNameVisible

# Special Cases
execute as @n[tag=converted,tag=siscu.husk_skeleton] run function siscu:entities/skeleton/husk_skeleton
execute if entity @s[predicate=siscu:utils/is_baby,type=husk,tag=baby] as @n[tag=converted] run function siscu:entities/rotting_mobs/set_size_2 {Scale:0.53}
execute if entity @s[predicate=siscu:utils/is_baby,type=!husk,tag=baby] as @n[tag=converted] run function siscu:entities/rotting_mobs/set_size_2 {Scale:0.5}
execute if entity @s[tag=baby] as @n[tag=converted] run function siscu:entities/skeleton/baby_skeleton

playsound minecraft:entity.skeleton.converted_to_stray hostile @a ~ ~ ~
function siscu:entities/rotting_mobs/big_particles
effect give @e[tag=converted] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=converted] remove converted
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead