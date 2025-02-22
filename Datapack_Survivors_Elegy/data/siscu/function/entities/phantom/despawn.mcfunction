
# Effect
execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0.4 0.2 0.4 0 16 force
#playsound siscu_se:entity.phantom.despawn hostile @a ~ ~ ~ 1 1.7

# Cat hiss
execute as @n[type=#siscu:felines] at @s run playsound entity.cat.hiss neutral @a
execute at @n[type=#siscu:felines] run particle smoke ~ ~ ~ 0.3 0 0.3 0 6

# Death
data merge entity @s {Silent:true}
effect give @s invisibility 1 1 true
tag @s add siscu.dead
function siscu:world/kill_dead