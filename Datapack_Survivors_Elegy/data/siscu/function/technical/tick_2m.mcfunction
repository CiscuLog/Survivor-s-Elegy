
# stall undead wolf growth
execute as @e[type=wolf,predicate=siscu:utils/is_baby,predicate=siscu:entities/wolf_growth_stalling_requirements] run function siscu:entities/wolf/stall_baby_growth

# Give fire protection to withered wolves
execute as @e[type=wolf,tag=withering_invulnerable] run effect give @s fire_resistance infinite 1 true

schedule function siscu:technical/tick_2m 120s