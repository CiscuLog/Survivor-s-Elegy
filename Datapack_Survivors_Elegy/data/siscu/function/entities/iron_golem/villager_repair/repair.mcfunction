
# countdown
scoreboard players remove @s siscu.volatile 1
execute if score @s siscu.volatile matches ..0 run function siscu:entities/iron_golem/villager_repair/reset_home with entity @s data.SE_data

execute unless entity @n[type=villager,predicate=siscu:entities/can_repair_iron_golem,distance=..5] run return 1

effect give @s health_boost 1 0 false
playsound entity.iron_golem.repair neutral @a ~ ~ ~
particle happy_villager ~ ~ ~ 1 1 1 0 10

#execute if data entity @s PlayerCreated run advancement grant @a[distance=..20] only

function siscu:entities/iron_golem/villager_repair/reset_home with entity @s data.SE_data
# always loop
return 1
