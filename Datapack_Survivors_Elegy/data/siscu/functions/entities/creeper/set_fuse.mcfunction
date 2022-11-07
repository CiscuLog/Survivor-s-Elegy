
execute if predicate siscu:utils/50_percent run scoreboard players add creeper_fuse siscu.volatile 10
execute if predicate siscu:utils/50_percent run scoreboard players add creeper_fuse siscu.volatile 7
execute if predicate siscu:utils/50_percent run scoreboard players add creeper_fuse siscu.volatile 5
execute if predicate siscu:utils/50_percent run scoreboard players add creeper_fuse siscu.volatile 2
execute if predicate siscu:utils/50_percent run scoreboard players add creeper_fuse siscu.volatile 1

scoreboard players operation creeper_fuse siscu.volatile %= 40 siscu.integer
execute if score creeper_fuse siscu.volatile matches ..19 run scoreboard players add creeper_fuse siscu.volatile 20

execute store result storage siscu:volatile Fuse int 1 run scoreboard players get creeper_fuse siscu.volatile

data modify entity @s Fuse set from storage siscu:volatile Fuse