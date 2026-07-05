tag @s add siscu.cave_spider_checked

# destroy spawner
execute if predicate siscu:locations/check_mineshaft run fill ~-5 ~-2 ~-5 ~5 ~6 ~5 air replace spawner destroy
# {SpawnPotentials:[{data:{entity:{id:"minecraft:cave_spider"}}}]}