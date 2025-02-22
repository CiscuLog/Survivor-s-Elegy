
# returns "fail" if there is a block between clouds and player
# returns 1 otherwise

execute if predicate {"condition":"location_check","predicate":{position:{"y":{"min":150}}}} run return 1

execute unless block ~ ~ ~ air run return fail
execute unless block ~ ~1 ~ air run return fail
execute unless block ~ ~2 ~ air run return fail

return run execute positioned ~ ~3 ~ run function siscu:entities/player/elytra_shootdown/check_open_sky