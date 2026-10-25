
# executed as any entity with the siscu.zombifying tag

execute if entity @s[tag=siscu.zombifying_invulnerable] run return run tag @s remove siscu.zombifying
execute if score @s siscu.zombifying matches 1.. run return run tag @s remove siscu.zombifying

# damage unzombifiable entity
execute unless entity @s[type=#siscu:phage_zombifiable] run damage @s 1 siscu:phage

scoreboard players add @s siscu.zombifying 1

# Display Countdown
execute if entity @s[type=player] if score @s siscu.zombifying matches ..0 run function siscu:systems/phage/zombification/text_clock
# particle effects when still zombifying
execute if score @s siscu.zombifying matches ..0 at @s anchored eyes positioned ^ ^ ^ run particle entity_effect{color:[0.752,0.643,0.302,1]} ~ ~-0.5 ~ 0 0.5 0 0.3 1 normal

# End if entity is still zombifying or already zombified
execute unless score @s siscu.zombifying matches 0 run return 0
# Else, Zombification

# Non-zombifiable!!
execute if entity @s[type=!#siscu:phage_zombifiable] run return run function siscu:systems/phage/cure/clear_zombifying

# Player
execute if score @s[type=player,tag=!siscu.zombie] siscu.zombifying matches 0.. run return run function siscu:systems/phage/zombification/zombify/player
# Entities, remove zombifying status and then zombify
function siscu:systems/phage/cure/clear_zombifying
# Rabbit
execute if entity @s[type=rabbit] run return run data merge entity @s {RabbitType:99}
# Change of entity variant
execute if entity @s[type=#siscu:phage_zombifiable_special] run return run function siscu:systems/phage/zombification/zombify/variant_change_main

# else, summon new entity
data remove storage siscu:volatile data.data
data merge storage siscu:volatile {data:{data:{},entity:"zombie",extra:""}}
tag @s add siscu.new_zombified
data modify storage siscu:volatile data.data set from entity @s
tag @s remove siscu.new_zombified
data remove storage siscu:volatile data.data.attributes
data remove storage siscu:volatile data.data.UUID

# dispatch entity type
function siscu:systems/phage/zombification/zombify/set_entity

# summon
function siscu:systems/phage/zombification/zombify/conversion_common
tag @e[tag=siscu.new_zombified] remove siscu.new_zombified
data remove storage siscu:volatile data.data
function siscu:world/kill_dead

return 0
