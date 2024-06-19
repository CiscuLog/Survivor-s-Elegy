scoreboard players set phage_time siscu.volatile 1
scoreboard players operation phage_time siscu.volatile -= @s siscu.zombifying
execute store result storage siscu:volatile PhageCounter int 1 run scoreboard players get phage_time siscu.volatile

function siscu:entities/zombifying/apply_phage_macro with storage siscu:volatile