kill @e[type=interaction,tag=siscu.config_interaction]
execute at @s run summon minecraft:interaction ~ ~ ~ {height:2,Tags:["siscu.config_interaction"],response:true}
execute if entity @e[type=interaction,tag=siscu.config_interaction] run schedule function siscu:items/use/config/config_schedule 10t
advancement revoke @a only siscu:items/use/config_hold
