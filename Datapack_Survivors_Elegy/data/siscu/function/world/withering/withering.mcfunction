
execute as @s[predicate=siscu:utils/check_the_nether] run return run function siscu:world/withering/withering_add
execute if score @s siscu.withering matches 1.. run function siscu:world/withering/withering_recover
