
execute if score @s siscu.grass_stealth matches 20..40 at @s run effect give @s invisibility 1 0 true
execute if score @s siscu.grass_stealth matches 15.. at @s as @e[type=wolf,distance=..10,predicate=!siscu:entities/is_sitting] run function siscu:entities/wolf/wolf_stealth/main
execute unless predicate siscu:entities/is_sneaking if predicate siscu:entities/has_grass_invisibility_only run effect clear @s invisibility

execute unless predicate siscu:entities/is_sneaking if score @s siscu.grass_stealth matches 1.. run scoreboard players set @s siscu.grass_stealth 0
execute unless predicate siscu:entities/is_sneaking at @s run particle block{block_state:"short_grass"} ~ ~1 ~ 0.2 0.5 0.2 0 10
execute unless predicate siscu:entities/is_sneaking at @s run playsound minecraft:block.grass.step player @a

execute at @s run function siscu:entities/player/grass_stealth/grass_particles

schedule function siscu:entities/player/grass_stealth/sneak_on_grass_recover_schedule 2t

execute if entity @s[advancements={siscu:entities/player_sneaks_on_grass=true}] run return 1

execute if score @s siscu.grass_stealth matches 2.. run return run scoreboard players remove @s siscu.grass_stealth 2
scoreboard players set @s siscu.grass_stealth 0