advancement revoke @a only siscu:entities/player_fishing
tag @s add siscu.fisherman

# Explicit Fathoms compatibility because Lead hates me :(
execute if score #fathoms.installed fathoms.dummy matches 1.. run return run schedule function siscu:world/fishing/schedule_2t 2t append
# Regular, clean, beautiful original implementation :)
schedule function siscu:world/fishing/schedule 1t
