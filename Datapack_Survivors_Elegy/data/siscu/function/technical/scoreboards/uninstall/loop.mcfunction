
execute store result score success siscu.volatile run function siscu:technical/scoreboards/uninstall/single with storage siscu:database scoreboards[0]
execute if score success siscu.volatile matches 1 run scoreboard players add x siscu.volatile 1

execute unless data storage siscu:database scoreboards[0] run return fail

function siscu:technical/scoreboards/uninstall/loop