summon vex ~ ~ ~ {Tags:["zombified","vex_checked"]}

item replace entity @e[tag=zombified,limit=1,sort=nearest] weapon from entity @s weapon
item replace entity @e[tag=zombified,limit=1,sort=nearest] weapon.offhand from entity @s weapon.offhand
item replace entity @e[tag=zombified,limit=1,sort=nearest] armor.head from entity @s armor.head
item replace entity @e[tag=zombified,limit=1,sort=nearest] armor.chest from entity @s armor.chest
item replace entity @e[tag=zombified,limit=1,sort=nearest] armor.legs from entity @s armor.legs
item replace entity @e[tag=zombified,limit=1,sort=nearest] armor.feet from entity @s armor.feet

data modify entity @e[tag=zombified,limit=1,sort=nearest] ArmorDropChances set from entity @s ArmorDropChances
data modify entity @e[tag=zombified,limit=1,sort=nearest] HandDropChances set from entity @s HandDropChances

data modify entity @e[tag=zombified,limit=1,sort=nearest] Inventory set from entity @s Inventory
data modify entity @e[tag=zombified,limit=1,sort=nearest] CustomName set from entity @s CustomName

data modify entity @e[tag=zombified,limit=1,sort=nearest] Rotation set from entity @s Rotation
#data modify entity @e[tag=zombified,limit=1,sort=nearest] FallDistance set from entity @s FallDistance

playsound minecraft:entity.allay.death hostile @a ~ ~ ~
particle minecraft:angry_villager ~ ~ ~ 0.2 0.2 0.2 1 10 normal
effect give @e[tag=zombified] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=zombified] remove zombified
tag @s[type=!player] add dead
function siscu:world/kill_dead