execute unless entity @s[tag=siscu.unequipped] run return fail
tag @s remove siscu.unequipped

execute as @s[tag=siscu.amethyst_zombie] run function siscu:entities/zombie/variants/amethyst
execute as @s[tag=siscu.lush_zombie] run function siscu:entities/zombie/variants/lush
execute as @s[tag=siscu.dripstone_zombie] run function siscu:entities/zombie/variants/dripstone
execute as @s[tag=siscu.citizen_zombie] run function siscu:entities/zombie/variants/citizen
execute as @s[tag=siscu.infected_zombie] run function siscu:entities/zombie/variants/infected
execute as @s[tag=siscu.stray_zombie] run function siscu:entities/zombie/variants/stray
execute as @s[tag=siscu.bogged_zombie] run function siscu:entities/zombie/variants/bogged
