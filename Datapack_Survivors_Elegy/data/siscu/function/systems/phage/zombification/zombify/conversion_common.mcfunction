
function siscu:entities/generic/transformation with storage siscu:volatile data

execute as @n[tag=siscu.new_zombified] if predicate siscu:entities/has_wax_armor run function siscu:systems/phage/zombification/zombify/wax_armor

# conditions
execute if entity @s[type=#siscu:illager] run function siscu:systems/phage/zombification/zombify/illager
playsound entity.zombie_villager.converted hostile @a

effect give @n[tag=siscu.zombified] slowness 3 2 true
