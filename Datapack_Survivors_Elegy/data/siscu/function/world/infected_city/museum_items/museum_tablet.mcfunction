
tag @s remove siscu.worldgen
tag @s remove siscu.museum_shield

# Shield (oxidised?)
loot replace entity @s contents loot siscu:archaeology/jungle_ruins_tablets
function siscu:entities/item_frame/item_frame_detection

# Explanation book
data merge block ~ ~ ~ {Book:{id:"written_book",count:1,components:{ "written_book_content": { "author": "Museum", "title": "Enchanted Tablets", "generation": 1, "pages": [\
"{\"translate\":\"text.siscu.book.museum_ancient_tablets.page1\"}",\
"{\"translate\":\"text.siscu.book.museum_ancient_tablets.page2\"}"]\
}}}}