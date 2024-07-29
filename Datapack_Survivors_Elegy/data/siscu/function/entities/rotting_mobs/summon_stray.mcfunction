summon stray ~ ~ ~ {Tags:["stray_checked","converted","rotten"]}
execute if entity @s[predicate=siscu:utils/is_baby,tag=!set_scale] run function siscu:entities/rotting_mobs/set_size

data modify entity @e[tag=converted,limit=1,sort=nearest] Tags append from entity @s Tags[]

item replace entity @e[tag=converted,limit=1,sort=nearest] weapon from entity @s weapon
item replace entity @e[tag=converted,limit=1,sort=nearest] weapon.offhand from entity @s weapon.offhand
execute if entity @s[predicate=siscu:utils/is_baby] run item replace entity @e[tag=converted,limit=1,sort=nearest] armor.head with bone[custom_model_data=548208]
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

execute if entity @s[tag=baby] as @e[tag=converted,limit=1,sort=nearest] run function siscu:entities/rotting_mobs/set_size_2 {Scale:0.5}

playsound minecraft:entity.skeleton.converted_to_stray hostile @a ~ ~ ~
function siscu:entities/rotting_mobs/big_particles
effect give @e[tag=converted] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=converted] remove converted
tag @s[type=!player] add dead
function siscu:world/kill_dead