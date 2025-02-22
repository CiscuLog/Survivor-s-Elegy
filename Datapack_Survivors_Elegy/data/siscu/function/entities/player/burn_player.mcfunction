# clear head
execute unless items entity @s armor.head * unless predicate siscu:entities/is_on_fire run return run summon small_fireball ~ ~3 ~ {Motion:[0.0,-10.0,0.0],CustomName:'[{"translate":"The Sun"}]'}

# invulnerable helmet
execute if predicate siscu:items/sun_invulnerable run return 0

# durability
execute if predicate siscu:items/broken_helmet run return run damage @s 0.1 siscu:confusion
execute store result score x siscu.volatile run data get entity @s Inventory[{Slot:103b}].components.minecraft:damage
scoreboard players add x siscu.volatile 1
data merge storage siscu:volatile {Slot:"armor.head"}
execute store result storage siscu:volatile x int 1 run scoreboard players get x siscu.volatile
function siscu:items/item_modifier/set_damage with storage siscu:volatile

# particles
execute at @s run particle minecraft:small_flame ~ ~1.8 ~ 0.2 0 0.2 0.01 3