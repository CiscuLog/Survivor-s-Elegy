
# increase score
scoreboard players add @s siscu.zombifying 1

execute unless predicate siscu:entities/has_phage run function siscu:entities/zombifying/apply_phage

execute if entity @s[type=#siscu:undead] run return 0

execute if entity @s[type=!#siscu:phage_zombifiable,tag=!siscu.infected_zombie] run return run damage @s 1 siscu:phage

# reduce player HP (return)
execute if score @s[type=player,tag=siscu.zombie] siscu.zombifying >= zombie_timer_limit siscu.integer run return run function siscu:entities/zombifying/reduce_player_hp

# overall zombification
execute if score @s siscu.zombifying matches ..-1 run return 0
execute if score @s[type=player,tag=!siscu.zombie] siscu.zombifying matches 0.. run function siscu:entities/zombifying/zombify/player

# for entities, remove zombifying status and then zombify
execute if score @s[type=!player] siscu.zombifying matches 1.. run return run function siscu:entities/zombifying/clear_zombifying
execute if score @s[type=hoglin] siscu.zombifying matches 0.. run return run function siscu:entities/zombifying/zombify/hoglin with entity @s
execute if score @s[type=horse] siscu.zombifying matches 0.. run return run function siscu:entities/zombifying/zombify/horse with entity @s
execute if score @s[type=#siscu:piglin] siscu.zombifying matches 0.. run return run function siscu:entities/zombifying/zombify/piglin with entity @s
execute if score @s[type=#siscu:illager] siscu.zombifying matches 0.. run return run function siscu:entities/zombifying/zombify/illager_split with entity @s
execute if score @s[type=rabbit] siscu.zombifying matches 0.. run return run data merge entity @s {RabbitType:99}
execute if score @s[type=allay] siscu.zombifying matches 0.. run return run function siscu:entities/zombifying/zombify/allay with entity @s
execute if score @s[type=wolf] siscu.zombifying matches 0.. run return run function siscu:entities/zombifying/zombify/wolf