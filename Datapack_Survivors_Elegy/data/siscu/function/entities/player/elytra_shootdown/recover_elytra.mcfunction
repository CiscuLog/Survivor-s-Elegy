
# Failsafe
execute unless items entity @s armor.chest elytra run return 0
execute unless data entity @s equipment.chest.components.minecraft:custom_data.SE_data.old_durability run return 0

# Recover elytra durability
data remove storage siscu:volatile components
data modify storage siscu:volatile components set from entity @s equipment.chest.components
data modify storage siscu:volatile components.minecraft:damage set from storage siscu:volatile components.minecraft:custom_data.SE_data.old_durability
data remove storage siscu:volatile components.minecraft:custom_data.SE_data.old_durability
data remove storage siscu:volatile components.minecraft:custom_data.SE_data.shut_down_elytra
function siscu:entities/player/elytra_shootdown/recover_elytra_macro with storage siscu:volatile

return 0
