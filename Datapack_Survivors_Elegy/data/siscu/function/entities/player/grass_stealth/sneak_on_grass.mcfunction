
execute if predicate siscu:entities/has_visible_invisibility run return run advancement revoke @s only siscu:entities/player_sneaks_on_grass

execute unless score @s siscu.grass_stealth matches 40.. run scoreboard players add @s siscu.grass_stealth 1

function siscu:entities/player/grass_stealth/sneak_on_grass_recover

advancement revoke @s only siscu:entities/player_sneaks_on_grass