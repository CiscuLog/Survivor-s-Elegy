
# Discharge effect
tag @s add discharging
scoreboard players set N siscu.volatile 0

execute on attacker at @s run summon area_effect_cloud ~ ~0.5 ~ {Tags:["siscu.discharge_path"]}
execute as @e[tag=siscu.discharge_path] at @s facing entity @p feet rotated ~40 ~ run function siscu:entities/guardian/zap_effect

#execute on attacker at @s run playsound minecraft:entity.blaze.hurt ambient @a ~ ~ ~ 1 2
tag @s remove discharging