
execute store result score @s siscu.entity_health run data get entity @s Health

execute if score @s[tag=!burying] siscu.entity_health matches ..22 if score warden_retreat siscu.integer matches 1 run function siscu:entities/warden/bury

execute if entity @e[type=warden] run schedule function siscu:entities/warden/check_warden_1s_schedule 3t