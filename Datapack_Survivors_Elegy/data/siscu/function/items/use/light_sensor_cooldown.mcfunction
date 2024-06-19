execute if entity @s[advancements={siscu:items/use/light_sensor_use=true}] run scoreboard players remove @s siscu.light_sensor_cooldown 1
advancement revoke @s only siscu:items/use/light_sensor_cooldown
execute if score @s siscu.light_sensor_cooldown matches 1.. run return 0
advancement revoke @s only siscu:items/use/light_sensor_use