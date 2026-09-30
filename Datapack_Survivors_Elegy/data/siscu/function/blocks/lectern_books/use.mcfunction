
scoreboard players set ray siscu.volatile 50
data remove storage siscu:volatile lectern.book
execute anchored eyes positioned ^ ^ ^0.1 run function siscu:blocks/lectern_books/raycast
execute at @s as @e[type=item_display,tag=siscu.lectern_book,distance=..5] at @s run function siscu:blocks/lectern_books/update/texture
execute if data storage siscu:volatile lectern.book run function siscu:blocks/lectern_books/dialogs/main
schedule function siscu:blocks/lectern_books/update/schedule 1t append
