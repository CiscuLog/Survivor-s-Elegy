
## Item Frame Behav ##
execute as @e[type=#siscu:item_frames,tag=!smithed.entity,tag=!smithed.strict] run function siscu:entities/item_frame/clock

## Zombifying ##
execute if score phage_enabled siscu.integer matches 1 as @e[type=!#siscu:phage_immune,tag=siscu.zombifying,tag=!smithed.entity] at @s run function siscu:entities/phage/zombification/clock

schedule function siscu:technical/clocks/tick_1s 1s