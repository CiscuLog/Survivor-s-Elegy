execute if biome ~ ~ ~ warped_forest run return 0

execute if predicate siscu:entities/is_wearing_stray_armor run return run function siscu:systems/withering/stray_armor/effects

# add-on tag for interrupting withering
execute if function #siscu:world/withering_interrupt run return fail

# advance withering
scoreboard players add @s siscu.withering 1
execute at @s[type=#siscu:withering_damage] if biome ~ ~ ~ siscu:withered_grounds if predicate siscu:utils/50_percent run scoreboard players add @s siscu.withering 1

# damage
execute if function #siscu:world/withering_damage_protection run return 0
execute if entity @s[type=#siscu:withering_damage] if predicate siscu:utils/50_percent run function siscu:systems/withering/damage
