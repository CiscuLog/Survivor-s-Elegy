advancement revoke @s only siscu:entities/player_join_back
scoreboard players set @s siscu.left_game 0
# rp message
title @s reset
title @s times 20 60 20
title @s title ""
title @s subtitle {"translate":"text.siscu.blank","fallback":"⚠ Missing Resource Pack! ⚠","color":"red"}

# functions
function siscu:technical/clear_advancements
schedule function siscu:entities/mirage_display/empty_effects 40t append
schedule function siscu:entities/sculk_plantoid/mantain_plantoid 60t append
execute if entity @e[type=marker,tag=siscu.broth_cauldron] run function siscu:world/day_features/advance_schedule with storage siscu:world