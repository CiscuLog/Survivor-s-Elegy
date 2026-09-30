
# update from pre-1.21.4

scoreboard players add warning_message siscu.volatile 1
execute if score warning_message siscu.volatile matches 1 run tellraw @a [{"translate": "multiplayer.player.joined","with": ["Siscu"]}]
execute if score warning_message siscu.volatile matches 2 run tellraw @a [{"text":"<Siscu> It seems you're updating from a pre 1.21.4 version. 1.21.4 was released december 2024. What in the world are you doing???"}]
execute if score warning_message siscu.volatile matches 3 run tellraw @a [{"text":"<Siscu> Points for fidelity! The datapack has changed immensely since then. Lots of removals, lots of new features."}]
execute if score warning_message siscu.volatile matches 4 run tellraw @a [{"text":"<Siscu> Consider whatever items you had before to have lost their functionality. There was an item update pipeline in place once, but it's been retired since no one at this point (except you, apparently) was ever going to need it anymore."}]
execute if score warning_message siscu.volatile matches 5 run tellraw @a [{"text": "<Siscu> That's all from me. I'm astonished for the fidelity. Enjoy the game!"}]
execute if score warning_message siscu.volatile matches 6 run tellraw @a [{"translate": "multiplayer.player.left","with": ["Siscu"]}]
execute if score warning_message siscu.volatile matches ..5 run return run schedule function siscu:technical/load/update_warning/1.21.4 6s
scoreboard players reset warning_message siscu.volatile
