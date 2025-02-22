advancement revoke @s only siscu:entities/player_get_phage

# return if the entity is not zombifiable
execute if predicate siscu:entities/zombifying_exceptions run return run tag @s add siscu.zombifying_invulnerable

# apply phage
# (it already has phage, so...)

tag @s add siscu.zombifying

execute unless score @s siscu.zombifying matches ..1 unless score @s siscu.zombifying matches -1.. run scoreboard players set @s siscu.zombifying -999999999
execute if predicate siscu:entities/has_strong_phage run function siscu:entities/zombifying/update_phage