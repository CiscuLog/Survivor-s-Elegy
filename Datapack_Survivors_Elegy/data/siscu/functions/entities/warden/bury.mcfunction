
#execute if data entity @s Brain.memories."minecraft:dig_cooldown" run data merge entity @s {Brain:{memories:{}}}
#execute if data entity @s anger.suspects[0] run data merge entity @s {Brain:{memories:{}},anger:{}}
#execute if data entity @s Brain.memories."minecraft:dig_cooldown" run data merge entity @s {Brain:{memories:{"minecraft:dig_cooldown":{ttl:0L}}}}

execute on attacker run advancement grant @s only siscu:minecraft/adventure/warden_retreat

tag @s add burying
data merge entity @s {anger:{suspects:[]},Brain:{memories:{"minecraft:dig_cooldown":{ttl:0L}}},Invulnerable:1b}
scoreboard players set @s siscu.volatile 100
function siscu:entities/warden/bury_timer

playsound minecraft:entity.warden.agitated hostile @a ~ ~ ~

