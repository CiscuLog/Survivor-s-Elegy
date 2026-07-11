advancement revoke @s only siscu:items/consume/ancient_tofu

#execute unless score @s siscu.tofu_boost matches 0.. run scoreboard players set @s siscu.tofu_boost 0

# bump up a new heart
function siscu:items/consume/ancient_tofu/increase_hp {score:900}

# apply effects
function siscu:items/consume/ancient_tofu/decrease_boost_2

schedule function siscu:items/consume/ancient_tofu/decrease_boost 1s
