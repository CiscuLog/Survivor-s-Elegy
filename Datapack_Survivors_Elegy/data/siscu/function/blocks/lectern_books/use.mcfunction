
scoreboard players set ray siscu.volatile 50
execute anchored eyes positioned ^ ^ ^0.1 run function siscu:blocks/lectern_books/raycast
execute at @s as @e[type=item_display,tag=siscu.lectern_book,distance=..5] at @s run function siscu:blocks/lectern_books/update/texture
schedule function siscu:blocks/lectern_books/update/schedule 1t append
