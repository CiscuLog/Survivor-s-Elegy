item replace entity @s armor.head from entity @s weapon.offhand
execute unless entity @s[gamemode=creative] run item replace entity @s weapon.offhand with air

execute at @s run playsound minecraft:item.armor.equip_iron player @a ~ ~ ~