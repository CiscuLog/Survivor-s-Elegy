
execute unless score @s siscu.phage_buildup matches 1.. run return run advancement revoke @s only siscu:items/consume/golden_food
execute if entity @s[advancements={siscu:items/consume/golden_food={other=true}}] run function siscu:entities/phage/buildup/cure/recover {value:2}
execute if entity @s[advancements={siscu:items/consume/golden_food={gapple=true}}] run function siscu:entities/phage/buildup/cure/recover {value:4}
execute if entity @s[advancements={siscu:items/consume/golden_food={ench_gapple=true}}] run function siscu:entities/phage/buildup/cure/reset
function siscu:entities/phage/buildup/title

advancement revoke @s only siscu:items/consume/golden_food
