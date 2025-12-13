advancement revoke @s only siscu:entities/hurt_while_wearing_copper_armor
execute on attacker if entity @n[type=#siscu:discharge_immune] run return fail
execute if predicate siscu:entities/is_wearing_charged_armor run function siscu:items/passive_behav/discharge/1