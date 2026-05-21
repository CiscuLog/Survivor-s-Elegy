
scoreboard players set z siscu.balancer 0
#execute if score x siscu.balancer < y siscu.balancer run scoreboard players set z siscu.balancer 1
execute store success score z siscu.balancer if score x siscu.balancer < y siscu.balancer

execute if score z siscu.balancer matches 0 run return fail

scoreboard players operation y siscu.balancer = x siscu.balancer
return 1
