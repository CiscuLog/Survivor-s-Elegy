
summon armor_stand ~ ~ ~ {Tags:["siscu.corpse_placer","smithed.entity","siscu.player_corpse_unset"]}
summon armor_stand ~ ~ ~ {Tags:["siscu.corpse_placer","smithed.entity","siscu.player_corpse_unset"]}
summon armor_stand ~ ~ ~ {Tags:["siscu.corpse_placer","smithed.entity","siscu.player_corpse_unset"]}
summon armor_stand ~ ~ ~ {Tags:["siscu.corpse_placer","smithed.entity","siscu.player_corpse_unset"]}
summon armor_stand ~ ~ ~ {Tags:["siscu.corpse_placer","smithed.entity","siscu.player_corpse_unset"]}
summon armor_stand ~ ~ ~ {Tags:["siscu.corpse_placer","smithed.entity","siscu.player_corpse_unset"]}
summon armor_stand ~ ~ ~ {Tags:["siscu.corpse_placer","smithed.entity","siscu.player_corpse_unset"]}
summon armor_stand ~ ~ ~ {Tags:["siscu.corpse_placer","smithed.entity","siscu.player_corpse_unset"]}
summon armor_stand ~ ~ ~ {Tags:["siscu.corpse_placer","smithed.entity","siscu.player_corpse_unset"]}
summon armor_stand ~ ~ ~ {Tags:["siscu.corpse_placer","smithed.entity","siscu.player_corpse_unset"]}
spreadplayers ~ ~ 8 64 under 100 false @e[type=#siscu:corpse_placers,tag=siscu.corpse_placer]
execute as @e[type=#siscu:corpse_placers,tag=siscu.corpse_placer] at @s run function siscu:entities/player_corpse/summon/natural
execute as @e[type=#siscu:corpse_placers,tag=siscu.corpse_placer] at @s as @n[tag=siscu.player_corpse] facing entity @p eyes rotated ~ 0.1 run rotate @s facing ^ ^ ^-1
kill @e[type=#siscu:corpse_placers,tag=siscu.corpse_placer]
