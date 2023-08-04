
#execute if data entity @s Brain.memories."minecraft:dig_cooldown" run data merge entity @s {Brain:{memories:{}}}
#execute if data entity @s anger.suspects[0] run data merge entity @s {Brain:{memories:{}},anger:{}}
#execute if data entity @s Brain.memories."minecraft:dig_cooldown" run data merge entity @s {Brain:{memories:{"minecraft:dig_cooldown":{ttl:0L}}}}

execute on attacker run advancement grant @s only siscu:minecraft/adventure/warden_retreat

summon warden ~ ~ ~ {Tags:["burying"],Brain:{memories:{"minecraft:dig_cooldown":{ttl:0L}}},Invulnerable:1b}
data modify entity @e[type=warden,tag=burying,limit=1,sort=nearest] Rotation set from entity @s Rotation
scoreboard players set @e[type=warden,tag=burying,limit=1,sort=nearest] siscu.volatile 100
function siscu:entities/warden/bury_timer

playsound minecraft:entity.warden.agitated hostile @a ~ ~ ~

tp @s[type=!player] ~ ~-300 ~
kill @s[type=!player]

