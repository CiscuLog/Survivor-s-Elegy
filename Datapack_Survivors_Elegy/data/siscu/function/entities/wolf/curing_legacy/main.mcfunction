
data modify storage siscu:volatile UUID set from entity @s UUID
function siscu:entities/wolf/curing_legacy/get_variant with storage siscu:volatile
function siscu:entities/wolf/curing_legacy/remove_from_list with storage siscu:volatile
execute if predicate siscu:entities/is_zombie_variant run data merge entity @s {variant:"pale"}
