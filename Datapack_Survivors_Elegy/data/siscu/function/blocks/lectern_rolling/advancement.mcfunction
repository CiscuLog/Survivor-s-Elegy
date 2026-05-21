# granted only when the player interacts with a novice librarian and places a lectern
advancement revoke @s only siscu:items/rolling_lectern_librarian

# return if the nerf is not active
execute if score librarian_mending_nerf siscu.integer matches 0 run return 0
# return if the player has dismissed the warning message
execute if score @s siscu.spam_lectern_dismiss matches 1 run return 0

# start clock
scoreboard players add @s siscu.spam_lectern 20
schedule function siscu:blocks/lectern_rolling/schedule 1s append
# if it has done this repeatedly for a while (6 times in under 20 seconds)
execute if score @s siscu.spam_lectern matches 100.. run return run function siscu:blocks/lectern_rolling/warning
