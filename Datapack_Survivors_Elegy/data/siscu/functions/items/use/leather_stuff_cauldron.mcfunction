
item modify entity @s[nbt={SelectedItem:{id:"minecraft:leather_horse_armor",tag:{CustomModelData: 548101}}}] weapon siscu:leather/set_netherite_horse
item modify entity @s[nbt={Inventory:[{Slot:-106,id:"minecraft:leather_horse_armor",tag:{CustomModelData: 548101}}]}] weapon.offhand siscu:leather/set_netherite_horse

scoreboard players set ray siscu.volatile 5000
execute positioned ~ ~1.65 ~ run function siscu:items/use/technical/cauldron_ray

advancement revoke @s only siscu:items/use/leather_stuff_cauldron