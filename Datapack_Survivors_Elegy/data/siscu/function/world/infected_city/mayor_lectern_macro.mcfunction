$data merge block ~ ~ ~ {Book:{id:"written_book",count:1,components:{ "item_name": {"translate":"item.siscu.mayors_note"}, "item_model": "siscu_se:mayor_note", "custom_data": { "SE_data": { "id": "siscu:mayor_note" } }, "rarity": "uncommon", "written_book_content": { "author": "$(Mayor1) $(Mayor2)", "title": "Mayor's Note", "generation": 0, "pages": [\
{"translate":"text.siscu.mayor_note.page1_1","extra": [\
{"type":"text","text":"$(City1)$(City2)"},\
{"translate":"text.siscu.mayor_note.page1_2"}]},\
{"translate":"text.siscu.mayor_note.page2_1"},\
{"translate":"text.siscu.mayor_note.page3_1"},\
{"translate":"text.siscu.mayor_note.page4_1","extra":[\
{"type":"text","text": "$(Mayor1) $(Mayor2)"},\
{"translate":"text.siscu.mayor_note.page4_2"},\
{"type":"text","text": "$(City1)$(City2)"}\
]}]\
}}}}

$execute align xyz unless entity @e[type=marker,tag=siscu.city_name,distance=..2] run summon marker ~0.5 ~0.5 ~0.5 {data:{city_name:"$(City1)$(City2)",mayor_name:"$(Mayor1) $(Mayor2)"},Tags:["siscu.city_name"]}