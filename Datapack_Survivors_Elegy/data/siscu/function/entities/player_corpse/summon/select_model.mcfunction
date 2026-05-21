
tag @s remove siscu.player_corpse_new

execute if entity @s[tag=siscu.corpse_fleeing] run return run function siscu:entities/player_corpse/summon/models/fleeing_player

function siscu:entities/player_corpse/summon/models/fallback
