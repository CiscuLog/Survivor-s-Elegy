
item modify entity @s[nbt={SelectedItem:{id:"minecraft:leather_horse_armor",tag:{CustomModelData: 548101}}}] weapon siscu:leather/set_netherite_horse
item modify entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:leather_horse_armor",tag:{CustomModelData: 548101}}]}] weapon.offhand siscu:leather/set_netherite_horse

item modify entity @s[nbt={SelectedItem:{id:"minecraft:leather_horse_armor",tag:{CustomModelData: 548102}}}] weapon siscu:leather/set_chainmail_horse
item modify entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:leather_horse_armor",tag:{CustomModelData: 548102}}]}] weapon.offhand siscu:leather/set_chainmail_horse

item modify entity @s[nbt={SelectedItem:{id:"minecraft:leather_horse_armor",tag:{CustomModelData: 548103}}}] weapon siscu:leather/set_copper_horse
item modify entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:leather_horse_armor",tag:{CustomModelData: 548103}}]}] weapon.offhand siscu:leather/set_copper_horse

scoreboard players set ray siscu.volatile 5000
execute positioned ~ ~1.62 ~ if entity @s[dx=0] run function siscu:items/use/technical/cauldron_ray
execute positioned ~ ~0.7 ~ if entity @s[dx=0] positioned ~ ~0.92 ~ unless entity @s[dx=0] positioned ~ ~-0.32 ~ run function siscu:items/use/technical/cauldron_ray
execute positioned ~ ~0.7 ~ unless entity @s[dx=0] positioned ~ ~-0.28 ~ run function siscu:items/use/technical/cauldron_ray

advancement revoke @s only siscu:items/use/leather_stuff_cauldron