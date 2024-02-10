# clear head
execute if predicate siscu:items/clear_head unless predicate siscu:entities/is_on_fire run return run summon small_fireball ~ ~3 ~ {Motion:[0.0,-10.0,0.0]}

# custom helmets
execute if predicate siscu:items/sun_invulnerable run return 0

execute if predicate siscu:items/custom_helmet if predicate siscu:utils/50_percent run return run function siscu:items/use/custom_reduce_head_1

## vanilla helmets
# break broken ones
execute if predicate siscu:items/broken_helmet run return run damage @s 0.1 siscu:confusion

# vanilla decay
execute if predicate siscu:items/durability_helmet_leather if predicate siscu:utils/50_percent run return run item modify entity @s armor.head siscu:durability/damage_leather_helmet_1

execute if predicate siscu:items/durability_helmet_iron if predicate siscu:utils/50_percent run return run item modify entity @s armor.head siscu:durability/damage_iron_helmet_1

execute if predicate siscu:items/durability_helmet_diamond if predicate siscu:utils/50_percent run return run item modify entity @s armor.head siscu:durability/damage_diamond_helmet_1