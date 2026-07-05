
# Aligned to the smithed convention proposal: "Body and Saddle slots for Players"

execute unless items entity @s armor.body *[minecraft:enchantments~[{enchantments:["binding_curse","vanishing_curse"]}]] run item modify entity @s armor.body {function:"minecraft:set_enchantments", enchantments:{"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}}

execute if items entity @s armor.body * run return fail
item replace entity @s armor.body with stone[equippable={slot:"body",equip_sound:"intentionally_empty"},enchantments={"minecraft:vanishing_curse":1,"minecraft:binding_curse":1}, minecraft:custom_data={smithed:{ignore:{everything:1b}}}]
