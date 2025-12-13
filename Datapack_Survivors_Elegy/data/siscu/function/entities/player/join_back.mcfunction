advancement revoke @s only siscu:entities/player_join_back
scoreboard players set @s siscu.left_game 0
# rp message
#title @s reset
#title @s times 20 200 100
#title @s title ""
#title @s subtitle {translate:"text.siscu.blank","fallback":"⚠ Missing Resource Pack! ⚠",color:"red"}
tellraw @s {translate:"text.siscu.blank","fallback":"⚠ Missing Resource Pack! ⚠",color:"red"}

# functions
function siscu:technical/clear_advancements
schedule function siscu:entities/mirage_display/empty_effects 40t append
schedule function siscu:blocks/sculk_plantoid/mantain_plantoid 60t append
schedule function siscu:blocks/broth_cauldron/update/check_schedule 24t append
schedule function siscu:items/consume/ancient_tofu/decrease_boost 1s
schedule function siscu:items/update/enable_trigger 1s