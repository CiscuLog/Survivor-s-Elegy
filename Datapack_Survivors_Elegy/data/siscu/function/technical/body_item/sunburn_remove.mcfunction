
execute unless items entity @s armor.body * run return run function siscu:technical/body_item/init

execute store success score x siscu.volatile run item modify entity @s armor.body {function:"set_enchantments",enchantments:{"siscu:sunburn":0}}
