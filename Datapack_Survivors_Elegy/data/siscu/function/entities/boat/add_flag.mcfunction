
execute if predicate siscu:items/ominous_banner run advancement grant @s only siscu:minecraft/adventure/place_ominous_banner_on_boat
data modify storage siscu:volatile BannerData set from entity @s SelectedItem
data merge storage siscu:volatile {BannerData:{count:1}}
execute at @s run summon minecraft:item_display ~ ~1 ~ {Tags:["siscu.boat_flag"],brightness:{sky:15,block:1}}
data modify entity @e[tag=siscu.boat_flag,tag=!resolved,type=minecraft:item_display,limit=1] item set from storage siscu:volatile BannerData
data merge entity @e[tag=siscu.boat_flag,tag=!resolved,type=minecraft:item_display,limit=1] {Rotation:[0.0f,0.0f],transformation:{right_rotation:[0.0f,0.6f,0.0f,0.8f],translation:[0.0f,0.5f,0.0f]}}
execute at @s run data modify entity @e[tag=siscu.boat_flag,tag=!resolved,type=minecraft:item_display,limit=1] Rotation[0] set from entity @s Rotation[0]
execute at @s run ride @e[tag=siscu.boat_flag,tag=!resolved,limit=1] mount @n[type=#minecraft:boat]
tag @e[tag=siscu.boat_flag] add resolved
item modify entity @s[gamemode=!creative] weapon siscu:decrease_1
execute at @s run playsound siscu_se:entity.boat.boat_banner_place ambient @a
schedule function siscu:entities/boat/remove_flag 2s append

execute at @s run tag @n[type=#boat] add siscu.boat_update
ride @s dismount
ride @s mount @n[tag=siscu.boat_update]
tag @n[tag=siscu.boat_update] remove siscu.boat_update