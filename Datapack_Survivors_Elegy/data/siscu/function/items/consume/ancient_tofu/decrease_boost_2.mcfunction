
# get the amount of hp increases
# check if the amount matches the score on the previous second. if it doesn't, update HP

scoreboard players set x siscu.volatile 0
execute if score @s siscu.tofu_boost_1 matches 1.. run scoreboard players add x siscu.volatile 4
execute if score @s siscu.tofu_boost_2 matches 1.. run scoreboard players add x siscu.volatile 4
execute if score @s siscu.tofu_boost_3 matches 1.. run scoreboard players add x siscu.volatile 4
execute if score @s siscu.tofu_boost_4 matches 1.. run scoreboard players add x siscu.volatile 4
execute if score @s siscu.tofu_boost_5 matches 1.. run scoreboard players add x siscu.volatile 4

execute unless score @s siscu.tofu_boost = x siscu.volatile run function siscu:items/consume/ancient_tofu/boost_change
scoreboard players operation @s siscu.tofu_boost = x siscu.volatile

