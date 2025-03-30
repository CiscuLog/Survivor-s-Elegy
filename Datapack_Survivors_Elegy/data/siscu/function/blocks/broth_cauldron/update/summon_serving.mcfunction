
#give @s suspicious_stew[item_name={"translate":"item.siscu.broth"},\
food= { "nutrition": 1, "saturation": 1 }, \
consumable= { "consume_seconds": 2, "on_consume_effects": [ { "type": "apply_effects", "effects": [] } ] }, \
use_remainder= { "id": "bowl" },\
max_stack_size= 1,\
custom_data= { "SE_data": { "id": "siscu:broth", "UpdateVersion": "v1.0.1", "Broth": 1 } },\
item_model= "siscu_se:broth_bowl" ]

#$summon item ~ ~ ~ {Item:{id:"suspicious_stew",components:{item_name:{"translate":"item.siscu.broth"},\
food: { "nutrition": $(broth_food), "saturation": $(broth_saturation) }, \
consumable: { "consume_seconds": 2, "on_consume_effects": [ { "type": "apply_effects", "effects": [] } ] }, \
use_remainder: { "id": "$(String)" },\
max_stack_size: 1,\
custom_data: { "SE_data": { "id": "siscu:broth", "UpdateVersion": "v1.0.1"} },\
item_model: "$(String2)"}}}

$give @s suspicious_stew[item_name={"translate":"item.siscu.$(name)"},\
food= { "nutrition": $(broth_food), "saturation": $(broth_saturation) }, \
consumable= { "consume_seconds": $(consume_seconds), "on_consume_effects": [ { "type": "apply_effects", "effects": [] } ] }, \
use_remainder= { "id": "$(remainder)" },\
max_stack_size= 1,\
custom_data= { "SE_data": { "id": "siscu:broth", "UpdateVersion": "v1.0.1"} },\
item_model= "$(model)" ]
