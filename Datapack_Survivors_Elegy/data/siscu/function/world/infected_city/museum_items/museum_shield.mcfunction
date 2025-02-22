
tag @s remove siscu.worldgen
tag @s remove siscu.museum_shield

# Shield (oxidised?)
loot replace entity @s contents loot siscu:items/combat/ancient_shield_oxidised
function siscu:entities/item_frame/item_frame_detection

# Explanation book
data merge block ~ ~ ~ {Book:{id:"written_book",count:1,components:{ "written_book_content": { "author": "Museum", "title": "Ancient Shield", "generation": 1, "pages": [\
"{\"translate\":\"text.siscu.book.museum_ancient_shield.page1\"}",\
"{\"translate\":\"text.siscu.book.museum_ancient_shield.page2\"}",\
"{\"translate\":\"text.siscu.book.museum_ancient_shield.page3\"}"]\
}}}}