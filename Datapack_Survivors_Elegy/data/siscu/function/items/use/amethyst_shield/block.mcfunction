advancement revoke @s only siscu:items/use/amethyst_shield_block
execute if predicate siscu:entities/is_sneaking run return run function siscu:items/use/amethyst_shield/retribution
execute at @s run return run function siscu:items/use/amethyst_shield/add_charge