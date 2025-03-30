
tag @s remove siscu.worldgen
tag @s remove siscu.museum_stray

# Shield (oxidised?)
loot replace entity @s contents loot siscu:items/combat/stray_chestplate
function siscu:entities/item_frame/item_frame_detection

# Explanation book
data merge block ~ ~ ~ {Book:{id:"written_book",count:1,components:{ "written_book_content": { "author": "Museum", "title": "Stray Robes", "generation": 1, "pages": [\
{"translate":"text.siscu.book.museum_stray.page1"},\
{"translate":"text.siscu.book.museum_stray.page2"}]\
}}}}