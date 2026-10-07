
execute if score shield_nerf siscu.integer matches 0 run return run advancement revoke @s from siscu:items/use/block_explosion

execute if entity @s[advancements={siscu:items/use/block_explosion={1..4=true}}] run function siscu:items/use/shield/blocked_explosion/damage {damage:1}
execute if entity @s[advancements={siscu:items/use/block_explosion={4..5=true}}] run function siscu:items/use/shield/blocked_explosion/damage {damage:1.25}
execute if entity @s[advancements={siscu:items/use/block_explosion={5..6=true}}] run function siscu:items/use/shield/blocked_explosion/damage {damage:1.5}
execute if entity @s[advancements={siscu:items/use/block_explosion={6..7=true}}] run function siscu:items/use/shield/blocked_explosion/damage {damage:1.75}
execute if entity @s[advancements={siscu:items/use/block_explosion={7..8=true}}] run function siscu:items/use/shield/blocked_explosion/damage {damage:2}
execute if entity @s[advancements={siscu:items/use/block_explosion={8..9=true}}] run function siscu:items/use/shield/blocked_explosion/damage {damage:2.25}
execute if entity @s[advancements={siscu:items/use/block_explosion={9..10=true}}] run function siscu:items/use/shield/blocked_explosion/damage {damage:2.75}
execute if entity @s[advancements={siscu:items/use/block_explosion={10..15=true}}] run function siscu:items/use/shield/blocked_explosion/damage {damage:3.5}
execute if entity @s[advancements={siscu:items/use/block_explosion={15..20=true}}] run function siscu:items/use/shield/blocked_explosion/damage {damage:5}
execute if entity @s[advancements={siscu:items/use/block_explosion={20..30=true}}] run function siscu:items/use/shield/blocked_explosion/damage {damage:6.5}
execute if entity @s[advancements={siscu:items/use/block_explosion={30..=true}}] run function siscu:items/use/shield/blocked_explosion/damage {damage:7.5}

advancement revoke @s only siscu:items/use/block_explosion
