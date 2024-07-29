
tag @s add siscu.mirage_active
data modify entity @e[type=item_display,tag=siscu.mirage,limit=1,sort=nearest] item set from entity @p[tag=siscu.mirage_interacting] SelectedItem
data merge entity @e[type=item_display,tag=siscu.mirage,limit=1,sort=nearest] {billboard:"vertical",item_display:"fixed",transformation:{scale:[0.5,0.5,0.5]}}
#playsound minecraft:block.end_portal_frame.fill block @a
#playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 0.5 1.5
playsound siscu_se:item.mirage_bottle.update block @a ~ ~ ~ 0.5 1.5
execute as @p[tag=siscu.mirage_interacting] if items entity @s weapon.mainhand *[minecraft:custom_model_data=540005] run advancement grant @s only siscu:minecraft/end/mirage_bottle_on_mirage
