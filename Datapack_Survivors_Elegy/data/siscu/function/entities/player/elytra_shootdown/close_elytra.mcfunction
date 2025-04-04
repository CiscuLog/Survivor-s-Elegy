
# save durability and break elytra
execute store result storage siscu:volatile x int 1 run data get entity @s equipment.chest.components."minecraft:damage"
function siscu:entities/player/elytra_shootdown/close_elytra_macro with storage siscu:volatile
# enable recovery
advancement revoke @s only siscu:entities/elytra_recover
