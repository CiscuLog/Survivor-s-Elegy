execute if entity @s[type=villager] run return run function siscu:entities/phage/zombify/villager with entity @s
execute if entity @s[type=wandering_trader] run return run function siscu:entities/phage/zombify/wandering_trader with entity @s

execute if entity @s[type=pillager] run return run function siscu:entities/phage/zombify/pillager {Entity:"pillager"}
execute if entity @s[type=vindicator] run return run function siscu:entities/phage/zombify/pillager {Entity:"vindicator"}
execute if entity @s[type=evoker] run return run function siscu:entities/phage/zombify/pillager {Entity:"evoker"}
execute if entity @s[type=witch] run return run function siscu:entities/phage/zombify/pillager {Entity:"witch"}
execute if entity @s[type=illusioner] run return run function siscu:entities/phage/zombify/pillager {Entity:"illusioner"}