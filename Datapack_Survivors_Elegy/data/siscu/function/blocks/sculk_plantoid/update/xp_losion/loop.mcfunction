
# No xp?
execute if score xp_plantoid siscu.volatile matches ..1 run return 0

# Random orb motion
data merge storage siscu:volatile {Motion:[0.0d,0.0d,0.0d]}
execute store result storage siscu:volatile Motion[0] double 0.01 run random value -20..20
execute store result storage siscu:volatile Motion[1] double 0.01 run random value 5..30
execute store result storage siscu:volatile Motion[2] double 0.01 run random value -20..20

scoreboard players operation xp_plantoid2 siscu.volatile = xp_plantoid siscu.volatile
# Set orb Value (each orb has 1/5th of the recursive xp value) -> xp_plantoid2 = xp_plantoid - xp_plantoid/5
scoreboard players operation xp_plantoid siscu.volatile /= 2 siscu.integer
execute store result storage siscu:volatile Xp int 1 run scoreboard players operation xp_plantoid2 siscu.volatile -= xp_plantoid siscu.volatile
# Summon orb with value xp_plantoid2
function siscu:blocks/sculk_plantoid/update/xp_losion/macro with storage siscu:volatile

execute unless score xp_plantoid2 siscu.volatile matches ..0 run return run function siscu:blocks/sculk_plantoid/update/xp_losion/loop
