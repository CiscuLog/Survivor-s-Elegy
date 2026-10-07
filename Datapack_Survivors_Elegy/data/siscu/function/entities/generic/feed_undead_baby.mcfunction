
advancement revoke @s only siscu:entities/feed/undead_baby

execute at @s as @e[type=#siscu:withering_convertible_variants,predicate=siscu:entities/variant_undead,distance=..10,nbt={AgeLocked:false}] at @s run particle angry_villager ~ ~ ~ 0.3 0.3 0.3 0 4
execute at @s as @e[type=#siscu:withering_convertible_variants,predicate=siscu:entities/variant_undead,distance=..10] run function siscu:entities/generic/stall_growth
stopsound @a * item.golden_dandelion.use