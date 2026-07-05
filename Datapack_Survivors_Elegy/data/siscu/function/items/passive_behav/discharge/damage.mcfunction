
# negate if wearing copper
execute if items entity @s armor.* #siscu:armor_items/copper run return 0
# minimal damage if wearing gold
execute if items entity @s armor.* #siscu:armor_items/gold run return run damage @s 1 siscu:copper_discharge by @n[tag=siscu.discharging]
# light damage if wearing iron
execute if items entity @s armor.* #siscu:armor_items/iron run return run damage @s 2 siscu:copper_discharge by @n[tag=siscu.discharging]
# strong damage if wearing netherite
execute if items entity @s armor.* #siscu:armor_items/netherite run return run damage @s 5 siscu:copper_discharge by @n[tag=siscu.discharging]
# regular damage
damage @s 3 siscu:copper_discharge by @n[tag=siscu.discharging]

return 1