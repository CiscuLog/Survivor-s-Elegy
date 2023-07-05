tag @s add zombifying
execute if predicate siscu:entities/has_weak_phage run scoreboard players set @s[type=#siscu:zombie_compatible] siscu.zombifying -1200
effect give @s[type=!#siscu:zombie_compatible] unluck infinite 1