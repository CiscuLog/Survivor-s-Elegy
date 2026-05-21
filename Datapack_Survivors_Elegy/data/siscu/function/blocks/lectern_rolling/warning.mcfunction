
scoreboard players set @s siscu.spam_lectern -400
tellraw @s [{color:green,text:""},\
{translate: "chat.siscu.system_notification",color:white},\
{text:"You have been repeatedly placing lecterns and checking novice librarians. Note that the "},\
{text:"Villager Mending Nerf",color:gold,bold:true,hover_event:{action:"show_text",value:{text:"/function siscu:entities/config/menu"}},click_event:{action:"suggest_command",command:"/function siscu:entities/config/menu"}},\
{text: " is active, meaning villagers won't trade Mending.\n"},\
{text:"[Dismiss]",color:white,bold:true,hover_event:{action:"show_text",value:"Dismiss notification. A notification like this won't appear again."},click_event:{action:"suggest_command",command:"/trigger siscu.spam_lectern_dismiss set 1"}}]
scoreboard players enable @s siscu.spam_lectern_dismiss