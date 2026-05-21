
# returns "fail" if there is a block between clouds and player
# returns 1 otherwise

execute if predicate {"condition":"location_check","predicate":{position:{"y":{"min":150}}}} run return 1
execute if predicate siscu:locations/check_open_sky run return 1
return fail
