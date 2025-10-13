
function siscu:blocks/broth_cauldron/summon/main

## random data
execute as @n[type=interaction,tag=siscu.broth_cauldron] store result entity @s data.broth_food int 1 run random value 0..4200
execute as @n[type=interaction,tag=siscu.broth_cauldron] store result entity @s data.broth_saturation int 1 run random value 0..7680
execute as @n[type=interaction,tag=siscu.broth_cauldron] store result entity @s data.broth_level int 1 run random value 0..3
## Stains
execute as @n[type=item_display,tag=siscu.broth_water] store result entity @s data.stains int 1 run random value 0..35
execute as @n[type=item_display,tag=siscu.broth_water] run function siscu:blocks/broth_cauldron/interact/scoop/stain
