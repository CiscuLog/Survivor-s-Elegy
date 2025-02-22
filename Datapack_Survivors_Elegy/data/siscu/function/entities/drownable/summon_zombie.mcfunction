
execute unless predicate siscu:utils/is_baby run summon zombie ~ ~ ~ {Tags:["siscu.zombie_checked","converted"]}
execute if predicate siscu:utils/is_baby run summon zombie ~ ~ ~ {Tags:["siscu.zombie_checked","converted"],IsBaby:true}

item replace entity @n[tag=converted] weapon from entity @s weapon
item replace entity @n[tag=converted] weapon.offhand from entity @s weapon.offhand
item replace entity @n[tag=converted] armor.head from entity @s armor.head
item replace entity @n[tag=converted] armor.chest from entity @s armor.chest
item replace entity @n[tag=converted] armor.legs from entity @s armor.legs
item replace entity @n[tag=converted] armor.feet from entity @s armor.feet

data modify entity @n[tag=converted] Tags append from entity @s Tags[]
data modify entity @n[tag=converted] DeathLootTable set from entity @s DeathLootTable
data modify entity @n[tag=converted] active_effects append from entity @s active_effects
data modify entity @n[tag=converted] LeftHanded set from entity @s LeftHanded
data modify entity @n[tag=converted] ArmorDropChances set from entity @s ArmorDropChances
data modify entity @n[tag=converted] HandDropChances set from entity @s HandDropChances

data modify entity @n[tag=converted] CustomName set from entity @s CustomName
data modify entity @n[tag=converted] PersistenceRequired set from entity @s PersistenceRequired
data modify entity @n[tag=converted] CanPickUpLoot set from entity @s CanPickUpLoot

data modify entity @n[tag=converted] Rotation set from entity @s Rotation
data modify entity @n[tag=converted] FallDistance set from entity @s FallDistance

playsound minecraft:entity.husk.converted_to_zombie hostile @a ~ ~ ~
particle minecraft:bubble ~ ~1 ~ 0.2 0.5 0.2 0.07 20 normal


execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=converted] remove converted
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead