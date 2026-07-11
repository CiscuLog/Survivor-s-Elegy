
### Immutable values
## Read-only constants
scoreboard players set -1 siscu.integer -1
scoreboard players set 2 siscu.integer 2
scoreboard players set 5 siscu.integer 5
scoreboard players set 8 siscu.integer 8
scoreboard players set 10 siscu.integer 10
scoreboard players set 20 siscu.integer 20
scoreboard players set 30 siscu.integer 30
scoreboard players set 60 siscu.integer 60
scoreboard players set 100 siscu.integer 100

### Mutable values
## World
# Death message
execute unless score death_message siscu.integer matches 0.. run scoreboard players set death_message siscu.integer 1
# Daytime cycle
execute unless score daytime_speed siscu.day matches 1.. run scoreboard players set daytime_speed siscu.day 3
execute unless score sleep_module_on siscu.day matches 0.. run scoreboard players set sleep_module_on siscu.day 1
execute unless score do_daylight_cycle siscu.day matches 0.. run scoreboard players set do_daylight_cycle siscu.day 1
execute unless score day_announcement siscu.day matches 0..1 run scoreboard players set day_announcement siscu.day 1
function siscu:world/day_features/config/normal_cycle
# Withering
execute unless score withering siscu.integer matches 0.. run scoreboard players set withering siscu.integer 1
execute unless score withering_timer siscu.integer matches 0.. run scoreboard players set withering_timer siscu.integer 20

## Items
# Shield Nerf
execute unless score shield_nerf siscu.integer matches 0.. run scoreboard players set shield_nerf siscu.integer 1
# Ancient Shield
scoreboard players set vibrations_max siscu.integer 7

## Entities
# Enderman block list amount
scoreboard players set enderman_block siscu.integer 117
# Creeper Fuse config
execute unless score creeper_fuse siscu.integer matches 0.. run scoreboard players set creeper_fuse siscu.integer 1
scoreboard players set creeper_max siscu.integer 35
scoreboard players set creeper_min siscu.integer 25
# Villager trade nerfs
execute unless score fletcher_stick_nerf siscu.integer matches 0.. run scoreboard players set fletcher_stick_nerf siscu.integer 1
execute unless score librarian_mending_nerf siscu.integer matches 0.. run scoreboard players set librarian_mending_nerf siscu.integer 1
# Warden retreat
execute unless score warden_retreat siscu.integer matches 0.. run scoreboard players set warden_retreat siscu.integer 1
# Fire Springs
execute unless score fire_springs_enabled siscu.integer matches 0.. run scoreboard players set fire_springs_enabled siscu.integer 1
scoreboard players set fire_spring_lava siscu.integer 0
scoreboard players set fire_spring_flame siscu.integer 50
scoreboard players set fire_spring_intense siscu.integer 280
scoreboard players set fire_spring_sound siscu.integer 298
scoreboard players set fire_spring_limit siscu.integer 300
# Phage
execute unless score phage_enabled siscu.integer matches 0..1 run scoreboard players set phage_enabled siscu.integer 1
execute unless score zombie_death_enabled siscu.integer matches 0..1 run scoreboard players set zombie_death_enabled siscu.integer 1
execute unless score zombie_timer_limit siscu.integer matches 0.. run scoreboard players set zombie_timer_limit siscu.integer 90
scoreboard players operation zombie_timer_limit_2 siscu.integer = zombie_timer_limit siscu.integer
scoreboard players operation zombie_timer_limit_2 siscu.integer += 60 siscu.integer
execute unless score zombie_min_health siscu.integer matches 0.. run scoreboard players set zombie_min_health siscu.integer 8
execute unless score phage_buildup_max siscu.integer matches 1.. run scoreboard players set phage_buildup_max siscu.integer 5
# Rotting
execute unless score rotting siscu.integer matches 0.. run scoreboard players set rotting siscu.integer 1
execute unless score rotting_random_limit siscu.integer matches 0.. run scoreboard players set rotting_random_limit siscu.integer 10
execute unless score rotting_timer_limit siscu.integer matches 0.. run scoreboard players set rotting_timer_limit siscu.integer 15

## Load Balancer
scoreboard players set 20 siscu.balancer 20