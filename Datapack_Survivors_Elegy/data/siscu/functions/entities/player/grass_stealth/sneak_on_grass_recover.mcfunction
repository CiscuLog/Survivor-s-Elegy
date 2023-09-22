execute if score @s siscu.grass_stealth matches 20..40 at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stealth_cloud"], Particle: "minecraft:dust 0 0 0 0", effects:[{id:"minecraft:invisibility",amplifier:1,duration:3,show_icon:0b,show_particles:0b}], Duration:2, ReapplicationDelay:0, WaitTime:-1, Age:-1, Radius:0.2}

execute unless predicate siscu:entities/is_sneaking if score @s siscu.grass_stealth matches 1.. run scoreboard players remove @s siscu.grass_stealth 10
execute unless predicate siscu:entities/is_sneaking at @s run particle block minecraft:grass ~ ~1 ~ 0.2 0.5 0.2 0 10
execute unless predicate siscu:entities/is_sneaking at @s run playsound minecraft:block.grass.step player @a

execute if score @s[advancements={siscu:entities/player_sneaks_on_grass=false}] siscu.grass_stealth matches 2.. run scoreboard players remove @s siscu.grass_stealth 2

execute at @s run function siscu:entities/player/grass_stealth/grass_particles

schedule function siscu:entities/player/grass_stealth/sneak_on_grass_recover_schedule 2t