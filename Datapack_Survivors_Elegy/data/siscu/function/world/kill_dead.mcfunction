
execute store result score x siscu.volatile run gamerule showDeathMessages
gamerule showDeathMessages false
data merge entity @s {DeathLootTable:"siscu:entities/empty",DeathTime:-19}
tp ~ -1024 ~
kill @s
execute unless score x siscu.volatile matches 0 run gamerule showDeathMessages true
