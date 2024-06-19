
execute if predicate siscu:items/ominous_banner run advancement grant @s only siscu:minecraft/adventure/place_ominous_banner_on_boat
data modify storage siscu:volatile BannerData set from entity @s SelectedItem
data merge storage siscu:volatile {BannerData:{Count:1}}
execute at @s run summon minecraft:item_display ~ ~1 ~ {Tags:["boat_flag"],brightness:{sky:15,block:1}}
data modify entity @e[tag=boat_flag,tag=!resolved,type=minecraft:item_display,limit=1] item set from storage siscu:volatile BannerData
data merge entity @e[tag=boat_flag,tag=!resolved,type=minecraft:item_display,limit=1] {Rotation:[0.0f,0.0f],transformation:{right_rotation:[0.0f,0.6f,0.0f,0.8f],translation:[0.0f,0.5f,0.0f]}}
execute at @s run data modify entity @e[tag=boat_flag,tag=!resolved,type=minecraft:item_display,limit=1] Rotation[0] set from entity @s Rotation[0]
execute at @s run ride @e[tag=boat_flag,tag=!resolved,limit=1] mount @e[type=boat,limit=1,sort=nearest]
tag @e[tag=boat_flag] add resolved
item modify entity @s[gamemode=!creative] weapon siscu:decrease_1
execute at @s run playsound minecraft:block.stem.place ambient @a
schedule function siscu:entities/boat/remove_flag 2s append