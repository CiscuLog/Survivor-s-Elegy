# Stall baby stage
execute if predicate siscu:utils/is_baby run return run function siscu:entities/generic/stall_baby_growth
# Stall breeding
data merge entity @s {Age:24000,InLove:false}