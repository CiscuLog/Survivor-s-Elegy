advancement revoke @s only siscu:items/consume/ancient_tofu

#execute unless score @s siscu.tofu_boost matches 0.. run scoreboard players set @s siscu.tofu_boost 0

# bump up a new heart
scoreboard players operation @s siscu.tofu_boost_5 = @s siscu.tofu_boost_4
scoreboard players operation @s siscu.tofu_boost_4 = @s siscu.tofu_boost_3
scoreboard players operation @s siscu.tofu_boost_3 = @s siscu.tofu_boost_2
scoreboard players operation @s siscu.tofu_boost_2 = @s siscu.tofu_boost_1
scoreboard players set @s siscu.tofu_boost_1 900

# apply effects
function siscu:items/consume/ancient_tofu/decrease_boost_2

execute if entity @a[scores={siscu.tofu_boost_1=1..}] run schedule function siscu:items/consume/ancient_tofu/decrease_boost 1s