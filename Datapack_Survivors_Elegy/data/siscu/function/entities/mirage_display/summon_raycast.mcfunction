scoreboard players remove x siscu.volatile 1
execute if score x siscu.volatile matches ..0 run return 0
execute if block ~ ~ ~ #siscu:transparent_blocks positioned ^ ^ ^0.1 run return run function siscu:entities/mirage_display/summon_raycast
execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~ ~0.5 if entity @e[tag=siscu.mirage,distance=..0.4] run return 0
execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~ ~0.5 run function siscu:entities/mirage_display/summon
execute if items entity @s weapon.mainhand amethyst_shard[minecraft:custom_data~{SE_data:{id:"siscu:mirage_bottle"}}] run return run item modify entity @s[gamemode=!creative] weapon.mainhand siscu:decrease_1
item modify entity @s[gamemode=!creative] weapon.offhand siscu:decrease_1