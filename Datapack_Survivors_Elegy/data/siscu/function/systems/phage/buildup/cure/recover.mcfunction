
$scoreboard players remove @s siscu.phage_buildup $(value)
execute if score @s siscu.phage_buildup matches ..0 run function siscu:systems/phage/buildup/cure/reset
