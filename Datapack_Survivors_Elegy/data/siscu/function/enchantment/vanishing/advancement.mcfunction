
execute store result storage siscu:volatile data.x float 1.75 store result storage siscu:volatile data.particles int 1 run attribute @s attack_damage get
execute as @n[type=#siscu:spectral,nbt={HurtTime:10s}] at @s run function siscu:enchantment/vanishing/hurt with storage siscu:volatile data
data remove storage siscu:volatile data
advancement revoke @s only siscu:entities/hurt_spectral_with_vanishing
