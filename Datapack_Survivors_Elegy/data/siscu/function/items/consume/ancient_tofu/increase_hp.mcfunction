
# bump up a new heart

# if 5 < new, 5 = 4. else, 5 = new
# if 4 < new, 4 = 3. else, 4 = new
# [repeat]

scoreboard players set x siscu.volatile 0
# if 5 is bigger, return fail
$execute if score @s siscu.tofu_boost_5 matches $(score).. run return fail
# if 4 is bigger, return 5 = new
$execute if score @s siscu.tofu_boost_4 matches $(score).. run return run scoreboard players set @s siscu.tofu_boost_5 $(score)
# else, 5 = 4 and continue evaluation
scoreboard players operation @s siscu.tofu_boost_5 = @s siscu.tofu_boost_4

# repeat for the rest
$execute if score @s siscu.tofu_boost_3 matches $(score).. run return run scoreboard players set @s siscu.tofu_boost_4 $(score)
scoreboard players operation @s siscu.tofu_boost_4 = @s siscu.tofu_boost_3
$execute if score @s siscu.tofu_boost_2 matches $(score).. run return run scoreboard players set @s siscu.tofu_boost_3 $(score)
scoreboard players operation @s siscu.tofu_boost_3 = @s siscu.tofu_boost_2
$execute if score @s siscu.tofu_boost_1 matches $(score).. run return run scoreboard players set @s siscu.tofu_boost_2 $(score)
scoreboard players operation @s siscu.tofu_boost_2 = @s siscu.tofu_boost_1

# if we reached this far, new > 1. Therefore, 1 = new
$scoreboard players set @s siscu.tofu_boost_1 $(score)
return 1