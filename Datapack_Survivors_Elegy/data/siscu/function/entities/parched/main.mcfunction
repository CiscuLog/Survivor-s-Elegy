
tag @s add siscu.parched_checked

execute on vehicle if entity @s[type=camel_husk] run return 0
execute unless predicate siscu:utils/is_baby if predicate siscu:utils/10_percent run loot replace entity @s[tag=!siscu.special] weapon loot siscu:entities/husk/husk_weapons
execute if predicate siscu:utils/10_percent unless predicate siscu:utils/is_baby run loot replace entity @s[tag=!siscu.special] weapon.offhand loot siscu:entities/husk/husk_shields
