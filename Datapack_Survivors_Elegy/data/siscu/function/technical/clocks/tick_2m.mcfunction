
# stall undead wolf growth
execute as @e[type=#siscu:withering_convertible_variants,predicate=siscu:entities/wolf_undead] run function siscu:entities/generic/stall_growth

# Give fire protection to withered entities
execute as @e[type=#siscu:withering_convertible_variants,tag=withering_invulnerable] run effect give @s fire_resistance infinite 1 true

# Resume tofu boost decrease
execute if entity @a[scores={siscu.tofu_boost_1=1..}] run schedule function siscu:items/consume/ancient_tofu/decrease_boost 1s

schedule function siscu:technical/clocks/tick_2m 120s