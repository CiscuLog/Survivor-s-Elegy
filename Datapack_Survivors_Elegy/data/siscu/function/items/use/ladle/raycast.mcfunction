scoreboard players remove x siscu.volatile 1
execute if score x siscu.volatile matches ..0 run return 0
execute if block ~ ~ ~ #siscu:broth_cauldrons_allow_ladle align xyz positioned ~0.5 ~0.2 ~0.5 unless entity @e[tag=siscu.broth_cauldron,distance=..0.5] positioned ~ ~ ~ run return run function siscu:blocks/broth_cauldron/summon/main
execute unless block ~ ~ ~ #siscu:transparent_blocks run return 0
execute positioned ^ ^ ^0.1 run return run function siscu:items/use/ladle/raycast