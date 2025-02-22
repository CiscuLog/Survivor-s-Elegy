item replace entity @s armor.head with amethyst_shard[item_model="siscu_se:amethyst_head"]
item replace entity @s weapon with amethyst_shard[item_model="siscu_se:blank",enchantment_glint_override=false,enchantments={"siscu:dazzling":1}]

data merge entity @s {DeathLootTable:"siscu:entities/special_zombie_loot",CanPickUpLoot:false}

data modify entity @s HandDropChances[0] set value 0.0f
data modify entity @s ArmorDropChances[3] set value 0.0f


tag @s remove siscu.unequipped