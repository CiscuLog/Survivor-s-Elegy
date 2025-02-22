
# stall undead wolf growth
execute as @e[type=wolf,predicate=siscu:entities/wolf_growth_stalling_requirements] run function siscu:entities/wolf/stall_baby_growth

# Give fire protection to withered wolves
execute as @e[type=wolf,tag=withering_invulnerable] run effect give @s fire_resistance infinite 1 true

# Resume tofu boost decrease
execute if entity @a[scores={siscu.tofu_boost_1=1..}] run schedule function siscu:items/consume/ancient_tofu/decrease_boost 1s

schedule function siscu:technical/clocks/tick_2m 120s