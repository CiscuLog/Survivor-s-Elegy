
# stall undead mobs growth
execute as @e[type=#siscu:withering_convertible_variants,predicate=siscu:entities/variant_undead] run function siscu:entities/generic/stall_growth

# Give fire protection to withered entities
execute as @e[type=#siscu:withering_convertible_variants,tag=siscu.withering_invulnerable] run effect give @s fire_resistance infinite 1 true

# Resume tofu boost decrease
execute if entity @a[scores={siscu.tofu_boost_1=1..}] run schedule function siscu:items/consume/ancient_tofu/decrease_boost 1s

# Update old fire springs to Smithed conventions
execute as @e[type=#siscu:fire_spring,tag=fire_spring] run function siscu:blocks/fire_spring/update_old

# Update old boat banners
execute as @e[type=item_display,tag=boat_flag] run tag @s add siscu.boat_flag

# Fix flags

schedule function siscu:technical/clocks/tick_2m 120s