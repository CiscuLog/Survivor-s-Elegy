
# suppose current entity will be discarded, and the new entity is tagged siscu.switch_objective
execute on controller run tag @s add siscu.switch_controller
execute on passengers run tag @s[tag=!siscu.switch_controller] add siscu.switch_passenger

execute on vehicle run tag @s add siscu.switch_vehicle
execute on vehicle on controller run tag @s add siscu.switch_veh_controller
execute on vehicle on passengers run tag @s[tag=!siscu.switch_veh_controller] add siscu.switch_veh_passenger

# safe getaway
execute on vehicle on passengers run ride @s dismount
execute on passengers run ride @s dismount

### what will be the actual implementation:
# dismount @s and other passangers of the root vehicle
execute on vehicle on passengers run ride @s dismount
# dismount all self passengers
execute on passengers run ride @s dismount

# vehicle entity controller rides vehicle
ride @n[tag=siscu.switch_veh_controller] mount @n[tag=siscu.switch_vehicle]
# vehicle passengers ride vehicle
execute as @n[tag=siscu.switch_veh_passenger,limit=2] run ride @s mount @n[tag=siscu.switch_vehicle]
# old passengers ride new entity
ride @n[tag=siscu.switch_controller] mount @n[tag=siscu.switch_objective]
execute as @n[tag=siscu.switch_passenger,limit=2] run ride @s mount @n[tag=siscu.switch_objective]


# clear all tags
tag @e[tag=siscu.switch_controller] remove siscu.switch_controller
tag @e[tag=siscu.switch_passenger] remove siscu.switch_passenger
tag @e[tag=siscu.switch_vehicle] remove siscu.switch_vehicle
tag @e[tag=siscu.switch_veh_controller] remove siscu.switch_veh_controller
tag @e[tag=siscu.switch_veh_passenger] remove siscu.switch_veh_passenger
tag @e[tag=siscu.switch_objective] remove siscu.switch_objective
