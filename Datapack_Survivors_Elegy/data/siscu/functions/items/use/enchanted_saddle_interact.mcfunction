execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:548101}}}] at @s run execute as @e[limit=1,sort=nearest,nbt={Saddle:1b},tag=!siscu.saddled] run function siscu:items/use/technical/enchanted_saddle_apply

execute unless entity @s[nbt={SelectedItem:{tag:{CustomModelData:548101}}}] at @s run execute as @e[limit=1,sort=nearest,nbt={Saddle:1b},tag=!siscu.saddled] run function siscu:items/use/technical/normal_saddle_apply

advancement revoke @s only siscu:items/use/enchanted_saddle_interact