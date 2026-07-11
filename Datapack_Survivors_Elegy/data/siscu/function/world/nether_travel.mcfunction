
# remove advancement
advancement revoke @s only siscu:entities/crosses_from_or_to_nether

# happenings
execute unless entity @s[advancements={siscu:minecraft/adventure/stray_clothes_nether=true}] run advancement revoke @s only siscu:minecraft/adventure/stray_clothes_nether
scoreboard players set @s siscu.stray_armor 0
