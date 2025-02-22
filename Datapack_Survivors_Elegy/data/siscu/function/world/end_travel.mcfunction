
# remove advancement
advancement revoke @s only siscu:entities/crosses_from_or_to_end
# particles and all that
tag @s add siscu.end_travel
execute at @s run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1 0.75
schedule function siscu:world/end_travel_2 3t append
