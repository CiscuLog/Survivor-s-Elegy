
# check it can be cured, return if not
execute store result score x siscu.volatile run data get entity @s ConversionTime
execute if score x siscu.volatile matches 2.. run return fail

# check if it has tags
execute if entity @s[tag=!siscu.zombified_wandering_trader,tag=!siscu.zombified_pillager,tag=!siscu.zombified_witch,tag=!siscu.zombified_vindicator,tag=!siscu.zombified_evoker,tag=!siscu.zombified_illusioner] run return fail

# now cure
data remove storage siscu:volatile data.data
data merge storage siscu:volatile {data:{data:{},entity:"villager",extra:""}}
data modify storage siscu:volatile data.data set from entity @s
data remove storage siscu:volatile data.data.attributes
data remove storage siscu:volatile data.data.UUID

# dispatch entity type
# - empty for now -

# summon
function siscu:entities/zombified_illager/cure/convert with storage siscu:volatile data

data remove storage siscu:volatile data.data

function siscu:world/kill_dead
kill @s
