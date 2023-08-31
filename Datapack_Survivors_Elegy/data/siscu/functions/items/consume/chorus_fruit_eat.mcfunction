execute if predicate siscu:entities/is_falling if predicate siscu:locations/check_void run advancement grant @s only siscu:minecraft/end/eat_chorus_fruit_in_the_void
execute if predicate siscu:entities/is_falling if predicate siscu:utils/check_the_end run spreadplayers ~ ~ 0 8 true @s
execute at @s run particle minecraft:portal ~ ~0.5 ~ 0.5 0.5 0.5 0 100
advancement revoke @s only siscu:items/consume/chorus_fruit_eat