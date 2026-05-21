
tellraw @s [{color:"green",text:""},\
{translate: "chat.siscu.system_notification",color:white},\
{text:"You won't receive this notification again."}]
scoreboard players enable @s siscu.spam_lectern_dismiss
