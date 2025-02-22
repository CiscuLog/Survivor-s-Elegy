scoreboard players add warning_message siscu.volatile 1
execute if score warning_message siscu.volatile matches 1 run tellraw @a [{"translate": "multiplayer.player.joined","with": ["Siscu"]}]
execute if score warning_message siscu.volatile matches 2 run tellraw @a [{"text":"<Siscu> It seems you're updating from a pre 1.21.4 datapack version. While this makes me very happy (points for fidelity!), the version you're coming from is quite different from this one, and old stuff is bound to break. :/"}]
execute if score warning_message siscu.volatile matches 3 run tellraw @a [{"text":"<Siscu> I had prepared a trigger function for 1.21.3 to update old items to the new format, but it irreversably broke in 1.21.4 because of changes on the \"custom_model_data\" component."}]
execute if score warning_message siscu.volatile matches 4 run tellraw @a [{"text":"<Siscu> Typing "},{"text":"/trigger siscu.update_item","bold": true},{"text": " while holding them in your main hand would update the item. There's no guarantee this will work now, but you could try. Honestly, my recommendation would be for you to start a new world."}]
execute if score warning_message siscu.volatile matches 5 run tellraw @a [{"text": "<Siscu> That's all from me, sorry for the bad news, and thank you for the fidelity!"}]
execute if score warning_message siscu.volatile matches 6 run tellraw @a [{"translate": "multiplayer.player.left","with": ["Siscu"]}]
execute if score warning_message siscu.volatile matches ..5 run return run schedule function siscu:technical/load/warning 8s
scoreboard players reset warning_message siscu.volatile