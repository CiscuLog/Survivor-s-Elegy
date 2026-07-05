advancement revoke @s only siscu:entities/player/zombified

# runs every second, regardless of location change
# it only decreases helmet durability when exposed to sunlight
# burning is controlled by the siscu:sunburn enchantment

execute at @s[gamemode=!creative] if predicate {"condition":"all_of",terms:[{condition:"location_check","predicate":{can_see_sky:true,light:{light:{min:15}}}}]} unless predicate siscu:entities/is_on_fire run function siscu:entities/player/burn_player
