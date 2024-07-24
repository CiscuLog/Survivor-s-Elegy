
execute as @e[type=wolf,tag=se_wolf_regression,limit=1,sort=random] at @s run function siscu:wolf_regression

execute if entity @e[type=wolf,tag=se_wolf_regression] run schedule function siscu:kill_schedule 10t
