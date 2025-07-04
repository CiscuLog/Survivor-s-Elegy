
## Item Frame Behav ##
execute as @e[type=#siscu:item_frames] run function siscu:entities/item_frame/clock

## Zombifying ##
execute if score phage_enabled siscu.integer matches 1 as @e[tag=siscu.zombifying,tag=!siscu.zombifying_invulnerable,tag=!smithed.entity] at @s run function siscu:entities/phage/clock

schedule function siscu:technical/clocks/tick_1s 1s