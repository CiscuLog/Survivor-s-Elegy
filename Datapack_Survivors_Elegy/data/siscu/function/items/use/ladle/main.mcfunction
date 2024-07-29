advancement revoke @s only siscu:items/use/ladle
scoreboard players set x siscu.volatile 50
execute at @s positioned ~ ~1.62 ~ if entity @s[dx=0] run function siscu:items/use/ladle/raycast
execute positioned ~ ~0.7 ~ if entity @s[dx=0] positioned ~ ~0.92 ~ unless entity @s[dx=0] positioned ~ ~-0.32 ~ run function siscu:items/use/ladle/raycast
execute positioned ~ ~0.7 ~ unless entity @s[dx=0] positioned ~ ~-0.28 ~ run function siscu:items/use/ladle/raycast
execute if score x siscu.volatile matches -1 run item modify entity @s[gamemode=!creative] weapon siscu:decrease_1