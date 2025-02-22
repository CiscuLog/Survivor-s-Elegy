
execute store result score random siscu.volatile run random value 0..2

execute if score random siscu.volatile matches 0 run loot replace entity @s armor.head loot siscu:entities/zombie/zombie_arrows
execute if score random siscu.volatile matches 1 run loot replace entity @s weapon.mainhand loot siscu:entities/zombie/zombie_arrows
execute if score random siscu.volatile matches 2 run loot replace entity @s weapon.offhand loot siscu:entities/zombie/zombie_arrows

execute unless score random siscu.volatile matches 1 run item replace entity @s weapon with arrow[item_model="siscu_se:blank",enchantment_glint_override=false,enchantments={"siscu:infectious":1}]
execute if predicate siscu:utils/10_percent unless score random siscu.volatile matches 2 run loot replace entity @s weapon.offhand loot siscu:entities/zombie/zombie_shields

data merge entity @s {ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],DeathLootTable:"siscu:entities/special_zombie_loot",CanPickUpLoot:false}

effect give @s unluck infinite 1
tag @s remove siscu.unequipped
tag @s add siscu.zombifying_invulnerable