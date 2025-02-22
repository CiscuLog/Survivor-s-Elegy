
# Spawn loot
loot spawn ~ ~ ~ loot siscu:entities/special_wolf

# Make them silent
data merge entity @s {Silent:true}

# Die
tag @s add siscu.dead
function siscu:world/kill_dead