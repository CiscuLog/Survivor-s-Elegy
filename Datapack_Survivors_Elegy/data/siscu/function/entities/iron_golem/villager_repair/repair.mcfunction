
execute store result score @s siscu.entity_health run data get entity @s Health
execute store result score max_hp siscu.entity_health run attribute @s max_health get .9
execute unless score @s siscu.entity_health < max_hp siscu.entity_health run return 0

execute unless entity @n[type=villager,predicate=siscu:entities/can_repair_iron_golem,distance=..8] run return 1

# heal using scores
execute store result score max_hp siscu.entity_health run attribute @s max_health get 1
scoreboard players add @s siscu.entity_health 25
execute if score @s siscu.entity_health > max_hp siscu.entity_health run scoreboard players operation @s siscu.entity_health = max_hp siscu.entity_health
execute store result entity @s Health int 1 run scoreboard players get @s siscu.entity_health

# effects
playsound entity.iron_golem.repair neutral @a ~ ~ ~
particle happy_villager ~ ~ ~ 1 1 1 0 10
