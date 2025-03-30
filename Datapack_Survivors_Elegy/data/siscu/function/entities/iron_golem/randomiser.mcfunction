# Tag the entity as checked

tag @s add siscu.golem_checked

# Add equipment and tags

loot replace entity @s armor.feet loot siscu:entities/iron_golem/boots
data merge entity @s {drop_chances:{feet:0.0}}
attribute @s minecraft:follow_range base set 32