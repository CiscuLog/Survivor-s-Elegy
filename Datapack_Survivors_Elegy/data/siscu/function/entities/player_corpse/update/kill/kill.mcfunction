
execute on passengers run kill @s[type=item_display]

execute at @s run playsound entity.player.death block @a ~ ~ ~
execute at @s run function siscu:entities/player_corpse/update/kill/loot

execute at @s run particle cloud ~ ~0.3 ~ 0.3 0.3 0.3 0 10
#execute at @s run summon area_effect_cloud ~ ~0.5 ~ {custom_particle:{type:"cloud"},WaitTime:10,Duration:2,Radius:0.5}

kill @s[tag=siscu.player_corpse]
