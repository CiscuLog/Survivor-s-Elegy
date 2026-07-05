
# early returns
execute unless entity @s[type=#siscu:phage_zombifiable] run return fail
execute if entity @s[tag=siscu.zombifying_invulnerable] run return fail
execute if entity @s[tag=siscu.zombifying] run return fail
execute if entity @s[tag=siscu.zombie] run return fail

# increase and tag if necessary
scoreboard players add @s siscu.phage_buildup 1
function siscu:entities/phage/buildup/title

# start zombification
execute if score @s siscu.phage_buildup >= phage_buildup_max siscu.integer run function siscu:entities/phage/buildup/start_zombification {value:1200}
