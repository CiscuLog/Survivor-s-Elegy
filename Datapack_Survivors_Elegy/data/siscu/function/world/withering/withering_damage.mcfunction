execute if score @s siscu.withering >= withering_timer siscu.integer if score @s siscu.withering < withering_timer_2 siscu.integer run effect give @s minecraft:wither 1 1 true
execute if score @s siscu.withering >= withering_timer_2 siscu.integer if score @s siscu.withering < withering_timer_3 siscu.integer run effect give @s minecraft:wither 2 1 true
execute if score @s siscu.withering >= withering_timer_3 siscu.integer if score @s siscu.withering < withering_timer_4 siscu.integer run effect give @s minecraft:wither 4 1 true
execute if score @s siscu.withering >= withering_timer_4 siscu.integer if score @s siscu.withering < withering_timer_5 siscu.integer run effect give @s minecraft:wither 8 1 true
execute if score @s siscu.withering >= withering_timer_5 siscu.integer if score @s siscu.withering < withering_timer_6 siscu.integer run effect give @s minecraft:wither 16 1 true
execute if score @s siscu.withering >= withering_timer_6 siscu.integer if score @s siscu.withering < withering_timer_7 siscu.integer run effect give @s minecraft:wither 32 1 true
execute if score @s siscu.withering >= withering_timer_7 siscu.integer if score @s siscu.withering < withering_timer_8 siscu.integer run effect give @s minecraft:wither 60 1 true
execute if score @s siscu.withering >= withering_timer_8 siscu.integer if score @s siscu.withering < withering_timer_9 siscu.integer run effect give @s minecraft:wither 60 2 true
execute if score @s siscu.withering >= withering_timer_9 siscu.integer if score @s siscu.withering < withering_timer_10 siscu.integer run effect give @s minecraft:wither 60 3 true
execute if score @s siscu.withering >= withering_timer_10 siscu.integer run effect give @s minecraft:wither 60 4 true

execute at @s if score @s siscu.withering matches 20.. run particle minecraft:smoke ~ ~1.6 ~ 0 0 0 0.05 15

execute if score @s siscu.withering matches 20.. run advancement grant @s only siscu:story/withering_damage