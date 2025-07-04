
scoreboard players operation timer.time_in_seconds siscu.volatile = @s siscu.zombifying
scoreboard players operation timer.time_in_seconds siscu.volatile *= -1 siscu.integer
function siscu:technical/display_seconds_in_minutes

#title @s reset
execute if score @s siscu.zombifying matches 0 run return run title @s actionbar [{"text":"\u2000","font":"siscu_se:icons","color":"white"},{"text":" You have been Zombified ",bold:true,color:red,"font":"minecraft:default"},{"text":"\u2000"}]

execute if score timer.minutes siscu.volatile matches 10.. run return run title @s actionbar [{"text":"","color":"dark_green"},{"text":"\u2000","font":"siscu_se:icons","color":"white"},{"text":" Time until zombification: "},{"score":{"name":"timer.minutes","objective":"siscu.volatile"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer.seconds","objective":"siscu.volatile"},"bold":true}]
execute if score timer.minutes siscu.volatile matches 2.. run return run title @s actionbar [{"text":"","color":"yellow"},{"text":"\u2000","font":"siscu_se:icons","color":"white"},{"text":" Time until zombification: "},{"score":{"name":"timer.minutes","objective":"siscu.volatile"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer.seconds","objective":"siscu.volatile"},"bold":true}]
title @s actionbar [{"text":"","color":"red"},{"text":"\u2000","font":"siscu_se:icons","color":"white"},{"text":" Time until zombification: "},{"score":{"name":"timer.minutes","objective":"siscu.volatile"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer.seconds","objective":"siscu.volatile"},"bold":true}]
