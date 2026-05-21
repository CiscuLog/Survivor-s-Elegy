
## Random value
# Worst method by far. It could randomly allocate most entities in the same ticks and negate any advantages of the balancer
#return run execute store result score @s siscu.balancer run random value 0..19

## Increasing value
# The player could manipulate this numbering method and negate its effects
#scoreboard players add current_i siscu.balancer 1
#return run scoreboard players operation @s siscu.balancer = current_i siscu.balancer

## Selective allocation
# The most reliable, but also the most expensive to run
# Check how many entities are in each tick, allocates the new entity to the less populated one
# x = amount, y = minimum

# x = amount of all
# y = min(x,y)
## Tick 0
scoreboard players set y siscu.balancer 0
execute store result score y siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=0}]
scoreboard players set @s siscu.balancer 0
## Tick 1
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=1}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 1
## Tick 2
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=2}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 2
## Tick 3
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=3}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 3
## Tick 4
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=4}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 4
## Tick 5
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=5}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 5
## Tick 6
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=6}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 6
## Tick 7
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=7}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 7
## Tick 8
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=8}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 8
## Tick 9
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=9}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 9
## Tick 10
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=10}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 10
## Tick 11
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=11}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 11
## Tick 12
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=12}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 12
## Tick 13
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=13}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 13
## Tick 14
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=14}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 14
## Tick 15
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=15}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 15
## Tick 16
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=16}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 16
## Tick 17
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=17}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 17
## Tick 18
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=18}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 18
## Tick 19
execute store result score x siscu.balancer if entity @e[type=#siscu:tech_block_bases,scores={siscu.balancer=19}]
execute if function siscu:technical/load_balancer/set_value2 run scoreboard players set @s siscu.balancer 19
