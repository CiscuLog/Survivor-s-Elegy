
execute at @s unless entity @p[distance=..16,tag=siscu.zombie] run return fail
execute if data entity @s angry_at run return fail

data modify entity @s angry_at set from entity @n[type=player,tag=siscu.zombie,distance=..16] UUID
execute store result entity @s anger_end_time long 1 run random value 400..800
return 1