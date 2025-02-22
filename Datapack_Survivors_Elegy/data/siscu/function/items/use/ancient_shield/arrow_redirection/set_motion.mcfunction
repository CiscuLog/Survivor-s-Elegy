data modify entity @s Motion set from storage siscu:volatile Motion
data modify entity @s Owner set from entity @p UUID
execute if entity @s[type=!trident] run data merge entity @s {damage:4.0,LeftOwner:true,crit:true}
execute if entity @s[type=trident] run data merge entity @s {DealtDamage:false,damage:4.0,crit:true}
particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0.3 10
playsound item.trident.return player @a ~ ~ ~ 1 2
tag @s add siscu.electric_particle
tag @s add siscu.deflected_projectile_2
tag @s remove siscu.deflected_projectile