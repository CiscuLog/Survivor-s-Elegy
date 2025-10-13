data merge storage siscu:volatile {effect:{id:"minecraft:bad_omen",amplifier:0,duration:120000}}
playsound item.ominous_bottle.dispose player
scoreboard players set break_flask siscu.broth_data 1
execute at @n[type=interaction,tag=siscu.broth_interacted] run particle trial_omen ~ ~0.6 ~ 0.2 0 0.2 0 4
execute if items entity @s weapon.mainhand ominous_bottle[ominous_bottle_amplifier=1] run return run data modify storage siscu:volatile effect.amplifier set value 1
execute if items entity @s weapon.mainhand ominous_bottle[ominous_bottle_amplifier=2] run return run data modify storage siscu:volatile effect.amplifier set value 2
execute if items entity @s weapon.mainhand ominous_bottle[ominous_bottle_amplifier=3] run return run data modify storage siscu:volatile effect.amplifier set value 3
execute if items entity @s weapon.mainhand ominous_bottle[ominous_bottle_amplifier=4] run return run data modify storage siscu:volatile effect.amplifier set value 4
return 1