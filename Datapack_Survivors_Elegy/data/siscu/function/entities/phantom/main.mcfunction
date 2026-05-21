tag @s add siscu.phantom_checked

# Despawning from tamed felines around the nearest player
scoreboard players set x siscu.volatile 0
execute at @p as @e[type=#siscu:felines,distance=..32] if data entity @s Owner run scoreboard players set x siscu.volatile 1
execute at @p as @e[type=#siscu:felines,distance=..32] if data entity @s Trusting run scoreboard players set x siscu.volatile 1
execute if score x siscu.volatile matches 0 run return 0
function siscu:entities/phantom/despawn
