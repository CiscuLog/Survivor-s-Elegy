
execute as @a[scores={siscu.spam_lectern=1..}] run scoreboard players remove @s siscu.spam_lectern 1

execute if entity @a[scores={siscu.spam_lectern=1..}] run schedule function siscu:blocks/lectern_rolling/schedule 1s
