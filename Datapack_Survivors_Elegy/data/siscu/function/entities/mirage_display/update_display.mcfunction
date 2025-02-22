
tag @s add siscu.mirage_active
data modify entity @n[type=item_display,tag=siscu.mirage] item set from entity @p[tag=siscu.mirage_interacting] SelectedItem
data merge entity @n[type=item_display,tag=siscu.mirage] {billboard:"vertical",item_display:"fixed",transformation:{scale:[0.5,0.5,0.5]}}
#playsound minecraft:block.end_portal_frame.fill block @a
#playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~ ~ 0.5 1.5
playsound siscu_se:item.mirage_bottle.update block @a ~ ~ ~ 0.5 1.5
execute as @p[tag=siscu.mirage_interacting] if items entity @s weapon.mainhand *[minecraft:custom_data~{SE_data:{id:"siscu:mirage_bottle"}}] run advancement grant @s only siscu:minecraft/end/mirage_bottle_on_mirage
