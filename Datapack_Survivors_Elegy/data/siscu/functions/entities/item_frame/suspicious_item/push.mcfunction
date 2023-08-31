execute if block ^ ^ ^-0.5 gravel run setblock ^ ^ ^-0.5 suspicious_gravel
execute if block ^ ^ ^-0.5 suspicious_gravel run particle minecraft:block gravel ^ ^ ^-0.5 0.25 0.25 0.25 0.3 32
execute if block ^ ^ ^-0.5 sand run setblock ^ ^ ^-0.5 suspicious_sand
execute if block ^ ^ ^-0.5 suspicious_sand run particle minecraft:block sand ^ ^ ^-0.5 0.25 0.25 0.25 0.3 32
setblock ~ ~ ~ air

data modify block ^ ^ ^-0.5 item merge from entity @s Item

playsound minecraft:block.suspicious_gravel.place block @a ~ ~ ~
playsound minecraft:entity.glow_item_frame.remove_item block @a ~ ~ ~
particle minecraft:block oak_planks ~ ~ ~ 0 0 0 0.3 6
kill @s
advancement grant @p only siscu:minecraft/adventure/create_suspicious_block