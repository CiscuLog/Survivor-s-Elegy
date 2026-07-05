item replace entity @s armor.head with amethyst_shard[item_model="siscu_se:amethyst_head"]
item replace entity @s weapon with amethyst_shard[item_model="siscu_se:blank",enchantment_glint_override=false,enchantments={"siscu:dazzling":1}]

data merge entity @s {DeathLootTable:"siscu:entities/special_zombie_loot",CanPickUpLoot:false}

data merge entity @s {drop_chances:{mainhand:0.0,head:0.0}}


tag @s remove siscu.unequipped