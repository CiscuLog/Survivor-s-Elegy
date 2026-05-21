
# Effect
execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0.4 0.2 0.4 0 16 force
#playsound siscu_se:entity.phantom.despawn hostile @a ~ ~ ~ 1 1.7

# Cat hiss
execute as @n[type=#siscu:felines] at @s run function siscu:entities/phantom/feline_hiss

# Death
data merge entity @s {Silent:true}
effect give @s invisibility 1 1 true
function siscu:world/kill_dead