scoreboard players operation volatile siscu.volatile = @s siscu.zombifying
scoreboard players operation volatile siscu.volatile %= zombie_timer_limit siscu.integer
execute unless score volatile siscu.volatile matches 0 run return 0


execute store result score @s siscu.entity_health run attribute @s minecraft:max_health get
execute if score @s siscu.entity_health <= zombie_min_health siscu.integer run return 0
scoreboard players remove @s siscu.entity_health 1
execute store result storage siscu:volatile y int 1 run scoreboard players get @s siscu.entity_health

execute if score @s siscu.entity_health matches 0 if score zombie_death_enabled siscu.integer matches 1 run damage @s 1 siscu:phage

playsound minecraft:entity.zombie.ambient ambient @a ~ ~ ~ 0.5 0.8

particle minecraft:damage_indicator ~ ~ ~ 0 0 0 0.3 1 normal
execute if score @s siscu.entity_health matches 1.. run return run function siscu:entities/player/apply_health_macro with storage siscu:volatile