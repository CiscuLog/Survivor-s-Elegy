execute as @a[advancements={siscu:items/use/enchanted_saddle_interact_normal=true,siscu:items/use/enchanted_saddle_interact=false}] run function siscu:items/use/enchanted_saddle_interact_normal

execute as @a[advancements={siscu:items/use/enchanted_saddle_interact_normal=true,siscu:items/use/enchanted_saddle_interact=true}] run function siscu:items/use/enchanted_saddle_interact

advancement revoke @a only siscu:items/use/enchanted_saddle_interact_normal
advancement revoke @a only siscu:items/use/enchanted_saddle_interact