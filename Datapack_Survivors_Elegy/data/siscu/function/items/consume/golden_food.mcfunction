
execute if score @s siscu.phage_buildup matches 1.. run tag @s add siscu.recovering_phage
execute if entity @s[advancements={siscu:items/consume/golden_food=true}] run function siscu:entities/phage/buildup/cure/recover {value:2}
execute if entity @s[advancements={siscu:items/consume/golden_apple=true}] run function siscu:entities/phage/buildup/cure/recover {value:4}
execute if entity @s[advancements={siscu:items/consume/golden_apple_ench=true}] run function siscu:entities/phage/buildup/cure/reset
execute if entity @s[tag=siscu.recovering_phage] run function siscu:entities/phage/buildup/title
tag @s remove siscu.recovering_phage

advancement revoke @s from siscu:items/consume/golden_food