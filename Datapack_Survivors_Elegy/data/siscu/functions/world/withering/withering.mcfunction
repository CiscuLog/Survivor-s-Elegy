execute as @s[predicate=siscu:utils/check_the_nether] run function siscu:world/withering/withering_add
execute as @s[predicate=!siscu:utils/check_the_nether] run function siscu:world/withering/withering_recover
execute if score @s siscu.warped_food matches 1.. run function siscu:world/warped_food_recover