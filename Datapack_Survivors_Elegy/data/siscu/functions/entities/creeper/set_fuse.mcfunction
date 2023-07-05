
execute store result score creeper_fuse siscu.volatile run loot spawn ~ ~ ~ loot siscu:gameplay/randomiser_creeper

execute if score server_status siscu.integer matches 0 run function siscu:entities/creeper/set_fuse_server

execute store result storage siscu:volatile Fuse int 1 run scoreboard players get creeper_fuse siscu.volatile

data modify entity @s Fuse set from storage siscu:volatile Fuse