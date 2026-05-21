
execute as @e[type=iron_golem,scores={siscu.volatile=1..}] at @s if function siscu:entities/iron_golem/villager_repair/repair run schedule function siscu:entities/iron_golem/villager_repair/schedule 1s
