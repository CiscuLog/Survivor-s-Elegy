
execute on passengers run ride @s dismount
execute store result score show_death_messages siscu.volatile run gamerule show_death_messages
gamerule show_death_messages false
data merge entity @s {DeathLootTable:"siscu:entities/empty",DeathTime:-19,Silent:true}
tp ~ -1024 ~
kill @s
execute unless score show_death_messages siscu.volatile matches 0 run gamerule show_death_messages true
scoreboard players reset show_death_messages siscu.volatile
