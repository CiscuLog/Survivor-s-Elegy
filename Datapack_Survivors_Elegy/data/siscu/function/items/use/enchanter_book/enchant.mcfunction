
# item modifier
# This clears all enchantments that once were in the book, so players should handle with caution. It's on them but they'll figure it out on their own
$item modify entity @s weapon.mainhand {function:"set_components",components:{stored_enchantments:{$(String):$(lvl)}}}
# This stores the list index
$item modify entity @s weapon.mainhand {function:set_custom_data,tag:{SE_data:{last_roll:$(x)b}}}

# announcement (Q.O.L.)
# This announces the reroll in the actionbar. We use the actionbar because it's discrete and doesn't flood the chat with messages
title @s reset
$title @s actionbar [{"translate":"actionbar.siscu.enchantment_reroll","color":"green"},{"translate":"$(String2)","bold":true},{"text":" !!!"}]
