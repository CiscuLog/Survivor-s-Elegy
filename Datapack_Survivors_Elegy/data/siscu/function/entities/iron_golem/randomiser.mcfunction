# Tag the entity as checked

tag @s add siscu.golem_checked

# Add equipment and tags

loot replace entity @s armor.feet loot siscu:entities/iron_golem/boots
data modify entity @s ArmorDropChances[0] set value 0.0f
attribute @s minecraft:follow_range base set 32