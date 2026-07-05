
$summon $(entity) ~ ~ ~ $(data)

execute as @n[tag=siscu.new_zombified] if predicate siscu:entities/has_wax_armor run function siscu:entities/phage/zombification/zombify/wax_armor

# conditions
execute if entity @s[type=#siscu:illager] run function siscu:entities/phage/zombification/zombify/illager
playsound entity.zombie_villager.converted hostile @a

effect give @n[tag=siscu.zombified] slowness 3 2 true

execute on passengers run ride @s mount @n[tag=siscu.new_zombified]
execute at @s on passengers run tp @s ~ ~ ~
function siscu:entities/generic/switch_vehicle
$tag @e[type=$(entity),tag=siscu.new_zombified] remove siscu.new_zombified
