
##Counts the amount of (loaded) entities each tick has allocated by the load balancer

function siscu:technical/load_balancer/clear_count_instances

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=0}] run scoreboard players add instances_0 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=1}] run scoreboard players add instances_1 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=2}] run scoreboard players add instances_2 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=3}] run scoreboard players add instances_3 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=4}] run scoreboard players add instances_4 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=5}] run scoreboard players add instances_5 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=6}] run scoreboard players add instances_6 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=7}] run scoreboard players add instances_7 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=8}] run scoreboard players add instances_8 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=9}] run scoreboard players add instances_9 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=10}] run scoreboard players add instances_10 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=11}] run scoreboard players add instances_11 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=12}] run scoreboard players add instances_12 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=13}] run scoreboard players add instances_13 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=14}] run scoreboard players add instances_14 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=15}] run scoreboard players add instances_15 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=16}] run scoreboard players add instances_16 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=17}] run scoreboard players add instances_17 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=18}] run scoreboard players add instances_18 siscu.balancer 1

execute as @e[type=#siscu:tech_block_bases,scores={siscu.balancer=19}] run scoreboard players add instances_19 siscu.balancer 1

tellraw @s [{"text":"Load balancer distribution",bold:true}]
execute if score instances_0 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 0:  "},{score:{name:"instances_0",objective:"siscu.balancer"}}]
execute if score instances_1 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 1:  "},{score:{name:"instances_1",objective:"siscu.balancer"}}]
execute if score instances_2 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 2:  "},{score:{name:"instances_2",objective:"siscu.balancer"}}]
execute if score instances_3 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 3:  "},{score:{name:"instances_3",objective:"siscu.balancer"}}]
execute if score instances_4 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 4:  "},{score:{name:"instances_4",objective:"siscu.balancer"}}]
execute if score instances_5 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 5:  "},{score:{name:"instances_5",objective:"siscu.balancer"}}]
execute if score instances_6 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 6:  "},{score:{name:"instances_6",objective:"siscu.balancer"}}]
execute if score instances_7 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 7:  "},{score:{name:"instances_7",objective:"siscu.balancer"}}]
execute if score instances_8 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 8:  "},{score:{name:"instances_8",objective:"siscu.balancer"}}]
execute if score instances_9 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 9:  "},{score:{name:"instances_9",objective:"siscu.balancer"}}]
execute if score instances_10 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 10: "},{score:{name:"instances_10",objective:"siscu.balancer"}}]
execute if score instances_11 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 11: "},{score:{name:"instances_11",objective:"siscu.balancer"}}]
execute if score instances_12 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 12: "},{score:{name:"instances_12",objective:"siscu.balancer"}}]
execute if score instances_13 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 13: "},{score:{name:"instances_13",objective:"siscu.balancer"}}]
execute if score instances_14 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 14: "},{score:{name:"instances_14",objective:"siscu.balancer"}}]
execute if score instances_15 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 15: "},{score:{name:"instances_15",objective:"siscu.balancer"}}]
execute if score instances_16 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 16: "},{score:{name:"instances_16",objective:"siscu.balancer"}}]
execute if score instances_17 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 17: "},{score:{name:"instances_17",objective:"siscu.balancer"}}]
execute if score instances_18 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 18: "},{score:{name:"instances_18",objective:"siscu.balancer"}}]
execute if score instances_19 siscu.balancer matches 1.. run tellraw @s [{text:"- Tick 19: "},{score:{name:"instances_19",objective:"siscu.balancer"}}]
tellraw @s [{text:"---"}]

#function siscu:technical/load_balancer/clear_count_instances
