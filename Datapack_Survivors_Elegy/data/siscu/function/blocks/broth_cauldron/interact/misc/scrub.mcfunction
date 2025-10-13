
execute at @n[type=interaction,tag=siscu.broth_interacted] as @n[type=item_display,tag=siscu.broth_water] if data entity @s {data:{stains:0}} run return run function siscu:blocks/broth_cauldron/interact/interrupt

execute at @n[type=interaction,tag=siscu.broth_interacted] as @n[type=item_display,tag=siscu.broth_water] at @s run return run function siscu:blocks/broth_cauldron/interact/misc/scrub2

function siscu:blocks/broth_cauldron/interact/interrupt