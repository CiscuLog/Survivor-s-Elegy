
# non-valid book
execute unless items entity @s weapon.mainhand enchanted_book run return fail
execute if items entity @s weapon.mainhand enchanted_book[custom_data,!custom_data~{SE_data:{}}] run return fail
execute if items entity @s weapon.mainhand *[consumable] run return fail

# valid, set all data
item modify entity @s weapon.mainhand {type:"set_custom_data",tag:{SE_data:{id:"siscu:bound_allay"}}}
item modify entity @s weapon.mainhand {type:"set_components",components:{consumable:{consume_seconds:99999}}}
item modify entity @s weapon.mainhand {type:"set_lore",lore:[{translate:"text.siscu.bound_allay",color:gray,italic:false},[{translate:"text.siscu.click_keybind",color:gray,italic:false},{keybind:"key.use"},{translate:"text.siscu.bound_allay2"}]],mode:"replace_all"}
item modify entity @s weapon.mainhand siscu:tooltip
execute if items entity @s weapon.mainhand *[!custom_name] run item modify entity @s weapon.mainhand {type:"set_components",components:{item_name:{translate:"item.siscu.bound_allay"}}}

# ench cost - add 100
execute store result score x siscu.volatile run data get entity @s equipment.mainhand.components."minecraft:repair_cost"
execute store result storage siscu:volatile data.cost int 1 run scoreboard players add x siscu.volatile 100
item modify entity @s weapon.mainhand {type:"set_components",components:{"minecraft:repair_cost":1}}
data modify entity @s equipment.mainhand.components.minecraft:repair_cost set from storage siscu:volatile data.cost

# spawn book
loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"slots",slot_source:[{type:"slot_range",slots:"weapon.mainhand",source:"this"}]}]}]}

playsound entity.allay.item_given neutral @a ~ ~ ~
particle minecraft:trial_spawner_detection_ominous ~ ~0.1 ~ 0.2 0.2 0.2 0.01 10
function siscu:world/kill_dead

execute as @p run advancement grant @s only siscu:minecraft/husbandry/bind_allay