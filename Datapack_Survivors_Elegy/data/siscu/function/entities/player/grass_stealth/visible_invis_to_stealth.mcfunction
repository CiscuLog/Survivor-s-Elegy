# This doesn't work because the advancement doesn't either as of 1.21.11.
# It should detect an invisibility effect disappearing. Alas, it doesn't.
advancement revoke @s only siscu:entities/player_visible_invis_to_stealth

execute unless block ~ ~1 ~ #siscu:grass_stealth_valid run return 0
execute unless predicate siscu:entities/is_sneaking run return 0

scoreboard players set @s siscu.grass_stealth 40
function siscu:entities/player/grass_stealth/sneak_on_grass
