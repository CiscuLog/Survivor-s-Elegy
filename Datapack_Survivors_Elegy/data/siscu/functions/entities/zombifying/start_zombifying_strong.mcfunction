tag @s add zombifying
execute if predicate siscu:entities/has_strong_phage run scoreboard players set @s[type=#siscu:zombie_compatible] siscu.zombifying -60
execute if predicate siscu:entities/has_strong_phage run tag @s add zombifying_strong
effect give @s[type=!#siscu:zombie_compatible] unluck infinite 1