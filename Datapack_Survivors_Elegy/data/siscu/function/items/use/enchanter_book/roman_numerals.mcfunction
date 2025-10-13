
execute store result score z siscu.volatile run data get storage siscu:volatile lvl

execute if score z siscu.volatile matches 1 run return run data merge storage siscu:volatile {roman_numeral:"I"}
execute if score z siscu.volatile matches 2 run return run data merge storage siscu:volatile {roman_numeral:"II"}
execute if score z siscu.volatile matches 3 run return run data merge storage siscu:volatile {roman_numeral:"III"}
execute if score z siscu.volatile matches 4 run return run data merge storage siscu:volatile {roman_numeral:"IV"}
execute if score z siscu.volatile matches 5 run return run data merge storage siscu:volatile {roman_numeral:"V"}
data merge storage siscu:volatile {roman_numeral:"???"}