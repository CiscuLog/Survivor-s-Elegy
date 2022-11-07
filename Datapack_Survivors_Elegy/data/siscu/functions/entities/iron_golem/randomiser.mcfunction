# Tag the entity as checked

tag @s add golem_checked

# Add equipment and tags

loot replace entity @s armor.feet loot siscu:items/misc/golem_boots
data modify entity @s ArmorDropChances[0] set value 0.0f
attribute @s minecraft:generic.follow_range base set 32