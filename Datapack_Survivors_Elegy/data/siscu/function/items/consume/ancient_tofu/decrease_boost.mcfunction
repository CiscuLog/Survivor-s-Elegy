
# ticking function every second, decrease 1s on the boost timers

scoreboard players remove @a[scores={siscu.tofu_boost_1=1..}] siscu.tofu_boost_1 1
scoreboard players remove @a[scores={siscu.tofu_boost_2=1..}] siscu.tofu_boost_2 1
scoreboard players remove @a[scores={siscu.tofu_boost_3=1..}] siscu.tofu_boost_3 1
scoreboard players remove @a[scores={siscu.tofu_boost_4=1..}] siscu.tofu_boost_4 1
scoreboard players remove @a[scores={siscu.tofu_boost_5=1..}] siscu.tofu_boost_5 1

execute as @a[scores={siscu.tofu_boost=1..}] run function siscu:items/consume/ancient_tofu/decrease_boost_2

execute if entity @a[scores={siscu.tofu_boost=1..}] run schedule function siscu:items/consume/ancient_tofu/decrease_boost 1s
