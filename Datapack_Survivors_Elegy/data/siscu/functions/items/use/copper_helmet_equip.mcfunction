item replace entity @s armor.head from entity @s weapon.mainhand
execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air

execute at @s run playsound minecraft:item.armor.equip_iron player @a ~ ~ ~