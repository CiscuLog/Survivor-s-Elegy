
execute if block ^ ^ ^-0.5 sand run function siscu:entities/item_frame/suspicious_item/replace_block_macro {block:"sand"}
execute if block ^ ^ ^-0.5 gravel run function siscu:entities/item_frame/suspicious_item/replace_block_macro {block:"gravel"}
setblock ~ ~ ~ air

data modify block ^ ^ ^-0.5 item merge from entity @s Item

$playsound minecraft:entity.$(item).remove_item block @a ~ ~ ~
$particle item{item:"$(item)"} ~ ~ ~ 0.1 0.1 0.1 0.07 8
kill @s
advancement grant @p only siscu:minecraft/adventure/create_suspicious_block