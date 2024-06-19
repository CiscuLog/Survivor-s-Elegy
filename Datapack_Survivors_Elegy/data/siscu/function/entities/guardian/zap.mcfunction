
# Discharge effect
tag @s remove siscu.extra_shock
tag @s add discharging
scoreboard players set N siscu.volatile 0

execute on attacker at @s run summon area_effect_cloud ~ ~ ~ {Tags:["siscu.discharge_path"]}
execute as @e[tag=siscu.discharge_path] at @s facing entity @p feet rotated ~40 ~ run function siscu:entities/guardian/zap_effect

tag @s[predicate=siscu:entities/is_wearing_netherite] add siscu.extra_shock
execute if entity @e[tag=siscu.extra_shock] run schedule function siscu:entities/guardian/extra_zap 1t

tag @s remove discharging