particle minecraft:soul_fire_flame ~ ~0.1 ~ 0.2 0.2 0.2 0.01 10
loot spawn ~ ~ ~ loot siscu:items/tools/allay_container_full
tag @s add dead
function siscu:world/kill_dead

execute as @p run advancement grant @s only siscu:minecraft/husbandry/contain_allay