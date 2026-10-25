advancement revoke @s only siscu:items/use/ladle
execute unless items entity @s weapon.mainhand *[custom_data~{SE_data:{id:"siscu:ladle"}}]
scoreboard players set x siscu.volatile 50
execute as @s anchored eyes positioned ^ ^ ^0.1 run function siscu:items/use/ladle/raycast
execute if score x siscu.volatile matches -1 if items entity @s weapon.mainhand *[custom_data~{SE_data:{id:"siscu:ladle"}}] run return run item modify entity @s[gamemode=!creative] weapon.mainhand siscu:decrease_1
execute if score x siscu.volatile matches -1 run item modify entity @s[gamemode=!creative] weapon.offhand siscu:decrease_1