advancement revoke @s only siscu:entities/hurt_vex

# Check for Cinder Box
execute unless predicate siscu:items/allay_container run return 0
item modify entity @s weapon.mainhand siscu:decrease_1
execute as @e[type=vex,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s positioned ~ ~0.2 ~ run function siscu:entities/vex/contain_vex