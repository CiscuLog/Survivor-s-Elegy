
execute if entity @s[type=zombie] if predicate siscu:entities/check_drowned run function siscu:entities/drownable/summon_drowned
execute if entity @s[type=husk] if predicate siscu:entities/check_drowned run function siscu:entities/drownable/summon_zombie

schedule function siscu:entities/drownable/tick_schedule 1t