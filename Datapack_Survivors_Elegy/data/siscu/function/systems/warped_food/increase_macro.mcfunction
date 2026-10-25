
# increases poisoning and withering
$scoreboard players set x siscu.volatile $(poisoning)
scoreboard players operation @s siscu.warped_food += x siscu.volatile
$scoreboard players set x siscu.volatile $(withering)
scoreboard players operation @s siscu.withering += x siscu.volatile
function siscu:systems/warped_food/clamp_values
function siscu:systems/withering/clamp_values