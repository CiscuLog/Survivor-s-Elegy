

execute if items entity @s weapon.mainhand rotten_flesh run return run function siscu:blocks/broth_cauldron/interact/food/add_effect {id:"minecraft:hunger",amplifier:0,duration:600}
execute if items entity @s weapon.mainhand poisonous_potato run return run function siscu:blocks/broth_cauldron/interact/food/add_effect {id:"minecraft:poison",amplifier:0,duration:100}
execute if items entity @s weapon.mainhand glow_berries run return run function siscu:blocks/broth_cauldron/interact/food/add_effect {id:"minecraft:glowing",amplifier:0,duration:100}
execute if items entity @s weapon.mainhand spider_eye run return run function siscu:blocks/broth_cauldron/interact/food/add_effect {id:"minecraft:poison",amplifier:0,duration:100}
execute if items entity @s weapon.mainhand golden_apple run function siscu:blocks/broth_cauldron/interact/food/add_effect {id:"minecraft:regeneration",amplifier:1,duration:100}
execute if items entity @s weapon.mainhand golden_apple run return run function siscu:blocks/broth_cauldron/interact/food/add_effect {id:"minecraft:absorption",amplifier:0,duration:2400}
execute if items entity @s weapon.mainhand enchanted_golden_apple run function siscu:blocks/broth_cauldron/interact/food/add_effect {id:"minecraft:regeneration",amplifier:1,duration:400}
execute if items entity @s weapon.mainhand enchanted_golden_apple run function siscu:blocks/broth_cauldron/interact/food/add_effect {id:"minecraft:absorption",amplifier:3,duration:2400}
execute if items entity @s weapon.mainhand enchanted_golden_apple run function siscu:blocks/broth_cauldron/interact/food/add_effect {id:"minecraft:resistance",amplifier:0,duration:6000}
execute if items entity @s weapon.mainhand enchanted_golden_apple run return run function siscu:blocks/broth_cauldron/interact/food/add_effect {id:"minecraft:fire_resistance",amplifier:0,duration:6000}