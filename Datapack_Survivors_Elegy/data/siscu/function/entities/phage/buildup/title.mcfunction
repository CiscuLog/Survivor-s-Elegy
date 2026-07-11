
# show title with a score value between 0 and 5
# x = @s/max*5
scoreboard players set x siscu.volatile 5
scoreboard players operation x siscu.volatile *= @s siscu.phage_buildup
scoreboard players operation x siscu.volatile /= phage_buildup_max siscu.integer

execute if score x siscu.volatile matches 0 run return run title @s actionbar [{text:"ABI"}]
execute if score x siscu.volatile matches 1 run return run title @s actionbar [{text:"AB-.I"}]
execute if score x siscu.volatile matches 2 run return run title @s actionbar [{text:"AB-.-.I"}]
execute if score x siscu.volatile matches 3 run return run title @s actionbar [{text:"AB-.-.-.I"}]
execute if score x siscu.volatile matches 4 run return run title @s actionbar [{text:"AB-.-.-.-.I"}]
execute if score x siscu.volatile matches 5 run return run title @s actionbar [{text:"AB-.-.-.-.-.I"}]
