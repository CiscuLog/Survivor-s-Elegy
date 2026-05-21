execute if entity @s[advancements={siscu:items/use/config_use=true}] run scoreboard players remove @s siscu.config_cooldown 1
#tellraw @s [{text:"Config Cooldown: "},{score:{name:"@s",objective:"siscu.config_cooldown"}}]
execute if score @s siscu.config_cooldown matches 1.. run advancement revoke @s only siscu:items/use/config_cooldown
execute if score @s siscu.config_cooldown matches 1.. run return 0
advancement revoke @s only siscu:items/use/config_use