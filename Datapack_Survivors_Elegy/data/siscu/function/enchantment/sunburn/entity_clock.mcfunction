
execute if predicate siscu:entities/is_on_fire run return 0
execute at @s unless predicate siscu:enchantments/sunburn run return run scoreboard players remove @s[scores={siscu.sunburn=1..}] siscu.sunburn 1
scoreboard players add @s siscu.sunburn 1

return 1
scoreboard objectives add siscu.sunburn dummy
