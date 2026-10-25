
ride @s dismount
execute on vehicle run ride @s dismount

# might be expanded later, but for now:
return 1

# ---------------------------------------------- #
# suppose current entity will be discarded, and the new entity is tagged siscu.switch_target
tag @s add siscu.switch_destroy
execute on controller run tag @s add siscu.switch_controller
execute on passengers run tag @s[tag=!siscu.switch_controller] add siscu.switch_passenger

execute on vehicle run tag @s add siscu.switch_vehicle
execute on vehicle on controller run tag @s add siscu.switch_veh_controller
execute on vehicle on passengers run tag @s[tag=!siscu.switch_veh_controller] add siscu.switch_veh_passenger

# passgs ride new entity
ride @n[tag=siscu.switch_controller] mount @s
execute as @e[tag=siscu.switch_passenger] run ride @s mount @n[tag=siscu.switch_target]

# veh passgs change
execute on vehicle on passengers run ride @s dismount

# vehicle entity controller rides vehicle
ride @n[tag=siscu.switch_veh_controller] mount @n[tag=siscu.switch_vehicle]
# vehicle passengers ride vehicle
execute as @n[tag=siscu.switch_veh_passenger,limit=2] run ride @s mount @n[tag=siscu.switch_vehicle]
# old passengers ride new entity
ride @n[tag=siscu.switch_controller] mount @n[tag=siscu.switch_target]
execute as @n[tag=siscu.switch_passenger,limit=2] run ride @s mount @n[tag=siscu.switch_target]

# clear all tags
tag @e[tag=siscu.switch_controller] remove siscu.switch_controller
tag @e[tag=siscu.switch_passenger] remove siscu.switch_passenger
tag @e[tag=siscu.switch_vehicle] remove siscu.switch_vehicle
tag @e[tag=siscu.switch_veh_controller] remove siscu.switch_veh_controller
tag @e[tag=siscu.switch_veh_passenger] remove siscu.switch_veh_passenger
tag @e[tag=siscu.switch_target] remove siscu.switch_target
