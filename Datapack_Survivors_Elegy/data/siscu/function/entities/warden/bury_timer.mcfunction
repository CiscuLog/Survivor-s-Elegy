
scoreboard players remove @e[type=warden,tag=siscu.warden_burying] siscu.volatile 1

#execute as @e[type=warden,tag=siscu.warden_burying] if score @s siscu.volatile matches 0 at @s run particle sculk_charge 0 ~ ~0.3 ~ 0.3 0 0.3 0 5
execute as @e[type=warden,tag=siscu.warden_burying] if score @s siscu.volatile matches 0 at @s run place feature siscu:sculk_patch_warden
execute as @e[type=warden,tag=siscu.warden_burying] if score @s siscu.volatile matches ..-20 if data entity @s[type=warden] Brain.memories."minecraft:dig_cooldown" at @s run function siscu:entities/warden/force_despawn

execute if entity @e[type=warden,tag=siscu.warden_burying] run schedule function siscu:entities/warden/bury_timer 1t