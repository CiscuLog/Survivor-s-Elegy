
# if it has book already, check which one and then update
execute if block ~ ~ ~ lectern run return run function siscu:blocks/lectern_books/set_rotation
# if it has no book, remove books if there are any
#execute if

execute if score ray siscu.volatile matches 0 run return fail
scoreboard players remove ray siscu.volatile 1

execute positioned ^ ^ ^0.1 run function siscu:blocks/lectern_books/raycast