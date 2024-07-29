
execute if predicate siscu:entities/zombifying_exceptions run return 0
execute unless score @s siscu.withering matches ..-1 run scoreboard players set @s[type=#siscu:zombie_compatible,tag=!zombifying_strong,tag=!zombifying] siscu.zombifying -1200
execute if predicate siscu:entities/has_strong_phage run function siscu:entities/zombifying/start_zombifying_strong
tag @s add zombifying
effect give @s[type=!#siscu:zombie_compatible] unluck infinite 1