advancement revoke @s only siscu:items/use/ladle
scoreboard players set x siscu.volatile 50
execute as @s anchored eyes positioned ^ ^ ^0.1 run function siscu:items/use/ladle/raycast
execute if score x siscu.volatile matches -1 run item modify entity @s[gamemode=!creative] weapon siscu:decrease_1