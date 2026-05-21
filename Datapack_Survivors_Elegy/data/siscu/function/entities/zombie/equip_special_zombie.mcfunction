execute unless entity @s[tag=siscu.unequipped] run return fail
tag @s remove siscu.unequipped

execute as @s[tag=siscu.amethyst_zombie] run function siscu:entities/zombie/variants/amethyst_zombie
execute as @s[tag=siscu.lush_zombie] run function siscu:entities/zombie/variants/lush_zombie
execute as @s[tag=siscu.dripstone_zombie] run function siscu:entities/zombie/variants/dripstone_zombie
execute as @s[tag=siscu.citizen_zombie] run function siscu:entities/zombie/variants/citizen_zombie
execute as @s[tag=siscu.infected_zombie] run function siscu:entities/zombie/variants/infected_zombie
execute as @s[tag=siscu.stray_zombie] run function siscu:entities/zombie/variants/stray_zombie
execute as @s[tag=siscu.bogged_zombie] run function siscu:entities/zombie/variants/bogged_zombie
