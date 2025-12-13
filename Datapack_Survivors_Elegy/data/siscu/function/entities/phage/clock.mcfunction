
# damage unzombifiable entity
execute unless entity @s[type=#siscu:phage_zombifiable] run damage @s 1 siscu:phage

scoreboard players add @s siscu.zombifying 1
# Display Countdown
execute if entity @s[type=player] if score @s siscu.zombifying matches ..0 run function siscu:entities/phage/text
# particle effects when still zombifying
execute at @s[tag=siscu.zombifying] if score @s siscu.zombifying matches ..0 anchored eyes positioned ^ ^ ^ run particle entity_effect{color:[0.752,0.643,0.302,1]} ~ ~-0.5 ~ 0 0.5 0 0.3 1 normal

# reduce player HP (return)
execute if score @s[type=player,tag=siscu.zombie] siscu.zombifying >= zombie_timer_limit siscu.integer run return 0
#run function siscu:entities/phage/reduce_player_hp

# End if entity is still zombifying or already zombified
execute unless score @s siscu.zombifying matches 0 run return 0
# Else, Zombification
# player
execute if score @s[type=player,tag=!siscu.zombie] siscu.zombifying matches 0.. run return run function siscu:entities/phage/zombify/player
# entities, remove zombifying status and then zombify
execute if score @s siscu.zombifying matches 1.. run function siscu:entities/phage/clear_zombifying
execute if score @s[type=hoglin] siscu.zombifying matches 0.. run return run function siscu:entities/phage/zombify/hoglin with entity @s
execute if score @s[type=horse] siscu.zombifying matches 0.. run return run function siscu:entities/phage/zombify/horse with entity @s
execute if score @s[type=camel] siscu.zombifying matches 0.. run return run function siscu:entities/phage/zombify/camel with entity @s
execute if score @s[type=nautilus] siscu.zombifying matches 0.. run return run function siscu:entities/phage/zombify/nautilus with entity @s
execute if score @s[type=#siscu:piglin] siscu.zombifying matches 0.. run return run function siscu:entities/phage/zombify/piglin with entity @s
execute if score @s[type=#siscu:illager] siscu.zombifying matches 0.. run return run function siscu:entities/phage/zombify/illager_split with entity @s
execute if score @s[type=rabbit] siscu.zombifying matches 0.. run return run data merge entity @s {RabbitType:99}
execute if score @s[type=allay] siscu.zombifying matches 0.. run return run function siscu:entities/phage/zombify/allay with entity @s
execute if score @s[type=wolf] siscu.zombifying matches 0.. run return run function siscu:entities/phage/zombify/wolf
execute if score @s[type=#siscu:phage_zombifiable_special] siscu.zombifying matches 0.. run return run function siscu:entities/phage/zombify/generic_passive_mob
