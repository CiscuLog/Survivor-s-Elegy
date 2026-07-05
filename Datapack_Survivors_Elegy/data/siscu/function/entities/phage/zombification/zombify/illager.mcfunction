
# remove trade data if it's not a villager
execute unless entity @s[type=villager] run data remove entity @n[tag=siscu.new_zombified] Offers
execute unless entity @s[type=villager] run data merge entity @n[tag=siscu.new_zombified] {VillagerData:{profession:"nitwit"}}

# dress up
execute if entity @s[type=villager] run function siscu:entities/phage/zombification/zombify/villager with entity @s
execute if entity @s[type=wandering_trader] as @n[tag=siscu.new_zombified] run return run function siscu:entities/zombified_illager/wandering_trader
execute if entity @s[type=pillager] as @n[tag=siscu.new_zombified] run return run function siscu:entities/zombified_illager/pillager
execute if entity @s[type=vindicator] as @n[tag=siscu.new_zombified] run return run function siscu:entities/zombified_illager/vindicator
execute if entity @s[type=evoker] as @n[tag=siscu.new_zombified] run return run function siscu:entities/zombified_illager/evoker
execute if entity @s[type=witch] as @n[tag=siscu.new_zombified] run return run function siscu:entities/zombified_illager/witch
execute if entity @s[type=illusioner] as @n[tag=siscu.new_zombified] run return run function siscu:entities/zombified_illager/illusioner
