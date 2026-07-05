# Tag the entity as checked

tag @s add siscu.evoker_checked

# Run the randomiser
execute if predicate siscu:utils/50_percent run item replace entity @s weapon.mainhand with minecraft:totem_of_undying

execute unless predicate siscu:locations/check_mansion if items entity @s weapon.mainhand totem_of_undying run data merge entity @s {DeathLootTable:"siscu:entities/empty"}
