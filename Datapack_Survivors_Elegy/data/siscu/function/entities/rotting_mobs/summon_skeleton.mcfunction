summon skeleton ~ ~ ~ {Tags:["skeleton_checked","converted","rotten"]}
tag @s[type=husk] add husk_skeleton
tag @s[type=zombified_piglin] add piglin
tag @s[type=zombie_villager] add villager
execute if entity @s[type=#skull_exceptions] run function siscu:entities/rotting_mobs/set_custom_skulls
execute if entity @s[predicate=siscu:utils/is_baby,tag=!fixed_scale] run function siscu:entities/rotting_mobs/set_size

data modify entity @e[tag=converted,limit=1,sort=nearest] Tags append from entity @s Tags[]

item replace entity @e[tag=converted,limit=1,sort=nearest] weapon from entity @s weapon
item replace entity @e[tag=converted,limit=1,sort=nearest] weapon.offhand from entity @s weapon.offhand
item replace entity @e[tag=converted,limit=1,sort=nearest] armor.head from entity @s armor.head
item replace entity @e[tag=converted,limit=1,sort=nearest] armor.chest from entity @s armor.chest
item replace entity @e[tag=converted,limit=1,sort=nearest] armor.legs from entity @s armor.legs
item replace entity @e[tag=converted,limit=1,sort=nearest] armor.feet from entity @s armor.feet

data modify entity @e[tag=converted,limit=1,sort=nearest] LeftHanded set from entity @s LeftHanded
data modify entity @e[tag=converted,limit=1,sort=nearest] ArmorDropChances set from entity @s ArmorDropChances
data modify entity @e[tag=converted,limit=1,sort=nearest] HandDropChances set from entity @s HandDropChances
data modify entity @e[tag=converted,limit=1,sort=nearest] DeathLootTable set from entity @s DeathLootTable

data modify entity @e[tag=converted,limit=1,sort=nearest] CustomName set from entity @s CustomName
data modify entity @e[tag=converted,limit=1,sort=nearest] PersistenceRequired set from entity @s PersistenceRequired
data modify entity @e[tag=converted,limit=1,sort=nearest] CanPickUpLoot set from entity @s CanPickUpLoot

data modify entity @e[tag=converted,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[tag=converted,limit=1,sort=nearest] FallDistance set from entity @s FallDistance


# Special Cases
execute as @e[tag=converted,limit=1,sort=nearest,tag=husk_skeleton] run function siscu:entities/skeleton/husk_skeleton
execute if entity @s[predicate=siscu:utils/is_baby,type=husk,tag=baby] as @e[tag=converted,limit=1,sort=nearest] run function siscu:entities/rotting_mobs/set_size_2 {Scale:0.53}
execute if entity @s[predicate=siscu:utils/is_baby,type=!husk,tag=baby] as @e[tag=converted,limit=1,sort=nearest] run function siscu:entities/rotting_mobs/set_size_2 {Scale:0.5}
execute if entity @s[tag=baby] as @e[tag=converted,limit=1,sort=nearest] run function siscu:entities/skeleton/baby_skeleton

playsound minecraft:entity.skeleton.converted_to_stray hostile @a ~ ~ ~
function siscu:entities/rotting_mobs/big_particles
effect give @e[tag=converted] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=converted] remove converted
tag @s[type=!player] add dead
function siscu:world/kill_dead