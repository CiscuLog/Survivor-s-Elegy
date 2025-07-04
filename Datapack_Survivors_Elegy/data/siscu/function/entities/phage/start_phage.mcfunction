
execute if entity @s[type=#siscu:phage_immune] run return 0
tag @s add siscu.zombifying

# exit if the value to set is bigger than the one the entity has
$execute if score @s siscu.zombifying matches -$(value)..-1 run return 0

$scoreboard players set @s siscu.zombifying -$(value)

execute if entity @s[type=player] run function siscu:entities/phage/text
