scoreboard players add @s siscu.zombifying 1

execute unless predicate siscu:entities/has_phage run function siscu:entities/zombifying/apply_phage

execute if entity @s[type=!#siscu:zombie_compatible,tag=!infected_zombie,tag=!zombifying_invulnerable] run return run damage @s 1 siscu:phage

execute if score @s[type=player,tag=zombie] siscu.zombifying >= zombie_timer_limit siscu.integer run return run function siscu:entities/zombifying/reduce_player_hp
execute if score @s[type=player,tag=!zombie] siscu.zombifying matches 0.. run function siscu:entities/zombifying/zombify_player
execute if score @s[type=hoglin] siscu.zombifying matches 0.. run function siscu:entities/zombifying/zombify_hoglin
execute if score @s[type=horse] siscu.zombifying matches 0.. run function siscu:entities/zombifying/zombify_horse
execute if score @s[type=#piglin] siscu.zombifying matches 0.. run function siscu:entities/zombifying/zombify_piglin
execute if score @s[type=#siscu:illager] siscu.zombifying matches 0.. run function siscu:entities/zombifying/zombify_villager
execute if score @s[type=rabbit] siscu.zombifying matches 0.. run data merge entity @s {RabbitType:99}
execute if score @s[type=allay] siscu.zombifying matches 0.. run function siscu:entities/zombifying/zombify_allay
execute if score @s[type=wolf] siscu.zombifying matches 0.. run function siscu:entities/zombifying/zombify_wolf
execute if score @s[type=!player] siscu.zombifying matches 1.. run function siscu:entities/zombifying/clear_zombifying