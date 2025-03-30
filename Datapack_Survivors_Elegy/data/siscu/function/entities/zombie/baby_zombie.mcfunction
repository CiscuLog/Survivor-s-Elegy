# Equipment
execute if predicate siscu:utils/10_percent run loot replace entity @s[tag=!siscu.special] weapon loot siscu:entities/zombie/baby_zombie_weapons
execute if predicate siscu:utils/10_percent run loot replace entity @s[tag=!siscu.special] weapon.offhand loot siscu:entities/zombie/baby_zombie_shields

# Data
data merge entity @s {drop_chances:{head:0.0,mainhand:0.0,offhand:0.0},CanPickUpLoot:0b}
attribute @s minecraft:attack_damage base set 2

# Riders
execute at @s if entity @e[type=#siscu:baby_rideable,limit=1,sort=random,distance=..5,predicate=!siscu:entities/is_being_ridden] if predicate siscu:utils/10_percent run ride @s mount @n[type=#siscu:baby_rideable,distance=..5,predicate=!siscu:entities/is_being_ridden]
