
# show title with a score value between 0 and 6
# x = @s/max*5
scoreboard players set x siscu.volatile 12
scoreboard players operation x siscu.volatile *= @s siscu.phage_buildup
scoreboard players operation x siscu.volatile /= phage_buildup_max siscu.integer

# A             --> full image
# B             --> backspace to beginning of bar
# abcdefghijkl. --> progress bar + backspace
# 1234          --> limit icon
execute if score x siscu.volatile matches 0 run return run title @s actionbar [{text:"AB1-------------",font:"siscu_se:phage_buildup_bar",color:"white"}]
execute if score x siscu.volatile matches 1 run return run title @s actionbar [{text:"ABa..1------------",font:"siscu_se:phage_buildup_bar",color:"white"}]
execute if score x siscu.volatile matches 2 run return run title @s actionbar [{text:"ABa.b..1-----------",font:"siscu_se:phage_buildup_bar",color:"white"}]
execute if score x siscu.volatile matches 3 run return run title @s actionbar [{text:"ABa.b.c..1----------",font:"siscu_se:phage_buildup_bar",color:"white"}]
execute if score x siscu.volatile matches 4 run return run title @s actionbar [{text:"ABa.b.c.d..2---------",font:"siscu_se:phage_buildup_bar",color:"white"}]
execute if score x siscu.volatile matches 5 run return run title @s actionbar [{text:"ABa.b.c.d.e..2--------",font:"siscu_se:phage_buildup_bar",color:"white"}]
execute if score x siscu.volatile matches 6 run return run title @s actionbar [{text:"ABa.b.c.d.e.f..2-------",font:"siscu_se:phage_buildup_bar",color:"white"}]
execute if score x siscu.volatile matches 7 run return run title @s actionbar [{text:"ABa.b.c.d.e.f.g..2------",font:"siscu_se:phage_buildup_bar",color:"white"}]
execute if score x siscu.volatile matches 8 run return run title @s actionbar [{text:"ABa.b.c.d.e.f.g.h..3-----",font:"siscu_se:phage_buildup_bar",color:"white"}]
execute if score x siscu.volatile matches 9 run return run title @s actionbar [{text:"ABa.b.c.d.e.f.g.h.i..3----",font:"siscu_se:phage_buildup_bar",color:"white"}]
execute if score x siscu.volatile matches 10 run return run title @s actionbar [{text:"ABa.b.c.d.e.f.g.h.i.j..3---",font:"siscu_se:phage_buildup_bar",color:"white"}]
execute if score x siscu.volatile matches 11 run return run title @s actionbar [{text:"ABa.b.c.d.e.f.g.h.i.j.k..4--",font:"siscu_se:phage_buildup_bar",color:"white"}]
execute if score x siscu.volatile matches 12.. run return run title @s actionbar [{text:"ABa.b.c.d.e.f.g.h.i.j.k.l..4-",font:"siscu_se:phage_buildup_bar",color:"white"}]
