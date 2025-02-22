
execute if predicate siscu:utils/50_percent run return run function siscu:world/infected_city/museum_items/museum_stray

tag @s remove siscu.worldgen
tag @s remove siscu.museum_shield

# Shield (oxidised?)
item replace entity @s contents with ender_pearl
function siscu:entities/item_frame/item_frame_detection

# Explanation book
data merge block ~ ~ ~ {Book:{id:"written_book",count:1,components:{ "written_book_content": { "author": "Museum", "title": "Ender Pearls", "generation": 1, "pages": [\
"{\"translate\":\"text.siscu.book.museum_ender_pearl.page1\"}",\
"{\"translate\":\"text.siscu.book.museum_ender_pearl.page2\"}"]\
}}}}