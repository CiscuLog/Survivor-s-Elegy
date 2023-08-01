summon wither_skeleton ~ ~ ~ {Tags:["entity_checked","skeleton_checked","converted","withered"]}

item replace entity @e[tag=converted,limit=1,sort=nearest] weapon from entity @s weapon
item replace entity @e[tag=converted,limit=1,sort=nearest] weapon.offhand from entity @s weapon.offhand
execute if entity @s[tag=piglin] run loot replace entity @e[tag=converted,limit=1,sort=nearest] armor.head loot siscu:entities/wither_skeleton/wither_skeleton_piglin_skulls
execute if entity @s[tag=villager] run loot replace entity @e[tag=converted,limit=1,sort=nearest] armor.head loot siscu:entities/wither_skeleton/wither_skeleton_villager_skulls
execute if entity @s[tag=!piglin,tag=!villager] run item replace entity @e[tag=converted,limit=1,sort=nearest] armor.head from entity @s armor.head
item replace entity @e[tag=converted,limit=1,sort=nearest] armor.chest from entity @s armor.chest
item replace entity @e[tag=converted,limit=1,sort=nearest] armor.legs from entity @s armor.legs
item replace entity @e[tag=converted,limit=1,sort=nearest] armor.feet from entity @s armor.feet

data modify entity @e[tag=converted,limit=1,sort=nearest] LeftHanded set from entity @s LeftHanded
data modify entity @e[tag=converted,limit=1,sort=nearest] ArmorDropChances set from entity @s ArmorDropChances
data modify entity @e[tag=converted,limit=1,sort=nearest] HandDropChances set from entity @s HandDropChances
data modify entity @e[tag=converted,limit=1,sort=nearest] DeathLootTable set from entity @s DeathLootTable

data modify entity @e[tag=converted,limit=1,sort=nearest] Tags append from entity @s Tags[]
data modify entity @e[tag=converted,limit=1,sort=nearest] CustomName set from entity @s CustomName
data modify entity @e[tag=converted,limit=1,sort=nearest] PersistenceRequired set from entity @s PersistenceRequired
data modify entity @e[tag=converted,limit=1,sort=nearest] CanPickUpLoot set from entity @s CanPickUpLoot

data modify entity @e[tag=converted,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[tag=converted,limit=1,sort=nearest] FallDistance set from entity @s FallDistance

playsound minecraft:entity.skeleton.converted_to_stray hostile @a ~ ~ ~
particle minecraft:smoke ~ ~1.3 ~ 0 0.3 0 0.06 30
tag @e[tag=converted] remove converted
tp @s[type=!player] ~ -200 ~
kill @e[predicate=siscu:locations/check_void]