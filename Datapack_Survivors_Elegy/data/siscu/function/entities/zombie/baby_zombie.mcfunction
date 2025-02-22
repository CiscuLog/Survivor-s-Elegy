# Equipment
execute if predicate siscu:utils/10_percent run loot replace entity @s[tag=!siscu.special] weapon loot siscu:entities/zombie/baby_zombie_weapons
execute if predicate siscu:utils/10_percent run loot replace entity @s[tag=!siscu.special] weapon.offhand loot siscu:entities/zombie/baby_zombie_shields

# Data
data modify entity @s ArmorDropChances[3] set value 0.0f
data merge entity @s {HandDropChances:[0.0f,0.0f],CanPickUpLoot:0b}
attribute @s minecraft:attack_damage base set 2

# Riders
execute at @s if entity @e[type=#siscu:baby_rideable,limit=1,sort=random,distance=..5,predicate=!siscu:entities/is_being_ridden] if predicate siscu:utils/10_percent run ride @s mount @n[type=#siscu:baby_rideable,distance=..5,predicate=!siscu:entities/is_being_ridden]
