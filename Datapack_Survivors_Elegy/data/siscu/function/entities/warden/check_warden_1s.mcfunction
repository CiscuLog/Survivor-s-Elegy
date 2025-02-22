
execute store result score @s siscu.entity_health run data get entity @s Health

execute if score @s[tag=!siscu.warden_burying] siscu.entity_health matches ..22 if score warden_retreat siscu.integer matches 1 run function siscu:entities/warden/bury

schedule function siscu:entities/warden/check_warden_1s_schedule 1s