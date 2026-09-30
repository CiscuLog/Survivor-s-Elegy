advancement revoke @s only siscu:entities/hurt_while_wearing_copper_armor

# return if there's no living attacker
scoreboard players reset success siscu.volatile
execute on attacker run scoreboard players set success siscu.volatile 1
execute unless score success siscu.volatile matches 1 run return fail

execute on attacker if entity @s[type=#siscu:discharge_immune] run return fail
execute if predicate siscu:entities/is_wearing_charged_armor run function siscu:items/passive_behav/discharge/1