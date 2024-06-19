
execute unless predicate siscu:utils/is_baby run summon zombie ~ ~ ~ {Tags:["zombie_checked","converted"]}
execute if predicate siscu:utils/is_baby run summon zombie ~ ~ ~ {Tags:["zombie_checked","converted"],IsBaby:1}

item replace entity @e[tag=converted,limit=1,sort=nearest] weapon from entity @s weapon
item replace entity @e[tag=converted,limit=1,sort=nearest] weapon.offhand from entity @s weapon.offhand
item replace entity @e[tag=converted,limit=1,sort=nearest] armor.head from entity @s armor.head
item replace entity @e[tag=converted,limit=1,sort=nearest] armor.chest from entity @s armor.chest
item replace entity @e[tag=converted,limit=1,sort=nearest] armor.legs from entity @s armor.legs
item replace entity @e[tag=converted,limit=1,sort=nearest] armor.feet from entity @s armor.feet

data modify entity @e[tag=converted,limit=1,sort=nearest] Tags append from entity @s Tags[]
data modify entity @e[tag=converted,limit=1,sort=nearest] DeathLootTable set from entity @s DeathLootTable
data modify entity @e[tag=converted,limit=1,sort=nearest] ActiveEffects append from entity @s ActiveEffects
data modify entity @e[tag=converted,limit=1,sort=nearest] LeftHanded set from entity @s LeftHanded
data modify entity @e[tag=converted,limit=1,sort=nearest] ArmorDropChances set from entity @s ArmorDropChances
data modify entity @e[tag=converted,limit=1,sort=nearest] HandDropChances set from entity @s HandDropChances

data modify entity @e[tag=converted,limit=1,sort=nearest] CustomName set from entity @s CustomName
data modify entity @e[tag=converted,limit=1,sort=nearest] PersistenceRequired set from entity @s PersistenceRequired
data modify entity @e[tag=converted,limit=1,sort=nearest] CanPickUpLoot set from entity @s CanPickUpLoot

data modify entity @e[tag=converted,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[tag=converted,limit=1,sort=nearest] FallDistance set from entity @s FallDistance

playsound minecraft:entity.husk.converted_to_zombie hostile @a ~ ~ ~
particle minecraft:bubble ~ ~1 ~ 0.2 0.5 0.2 0.07 20 normal

tag @e[tag=converted] remove converted
tp @s[type=!player] ~ ~-100000 ~