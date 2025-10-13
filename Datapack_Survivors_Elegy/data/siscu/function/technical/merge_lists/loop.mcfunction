
# for (x in list1) - in decreasing order
execute store result storage siscu:volatile x int 1 run scoreboard players get x siscu.volatile
function siscu:technical/merge_lists/operation with storage siscu:volatile

scoreboard players remove x siscu.volatile 1
execute if score x siscu.volatile matches 0.. run function siscu:technical/merge_lists/loop