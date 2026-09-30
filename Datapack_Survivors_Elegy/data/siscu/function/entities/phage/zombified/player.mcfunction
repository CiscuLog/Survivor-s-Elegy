advancement revoke @s only siscu:entities/player/zombified

# runs every second, regardless of location change
# it only decreases helmet durability when exposed to sunlight
# burning is controlled by the siscu:sunburn enchantment

execute at @s unless entity @s[gamemode=creative] if predicate {"type":"all_of",terms:[{"type":"location_check","predicate":{can_see_sky:true,light:{light:{min:15}}}}]} unless predicate siscu:entities/is_on_fire run function siscu:entities/phage/zombified/player_helmet

## Aggro nearby iron golems
execute at @s as @n[type=iron_golem,distance=..16] at @s run function siscu:entities/iron_golem/angry_against_player