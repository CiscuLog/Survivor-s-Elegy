
execute store result storage siscu:volatile CMD int 1 run random value 0..5

data merge storage siscu:volatile {String:"siscu:items/functional/crimson_painting"}
function siscu:world/piglin/summon_wall_decor_macro with storage siscu:volatile

tag @s remove siscu.piglin_painting