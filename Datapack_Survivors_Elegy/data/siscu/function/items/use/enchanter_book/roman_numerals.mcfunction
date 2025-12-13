
execute store result score z siscu.volatile run data get storage siscu:volatile lvl

execute if score z siscu.volatile matches 1 run return run data merge storage siscu:volatile {roman_numeral:"I"}
execute if score z siscu.volatile matches 2 run return run data merge storage siscu:volatile {roman_numeral:"II"}
execute if score z siscu.volatile matches 3 run return run data merge storage siscu:volatile {roman_numeral:"III"}
execute if score z siscu.volatile matches 4 run return run data merge storage siscu:volatile {roman_numeral:"IV"}
execute if score z siscu.volatile matches 5 run return run data merge storage siscu:volatile {roman_numeral:"V"}
execute if score z siscu.volatile matches 6 run return run data merge storage siscu:volatile {roman_numeral:"VI"}
execute if score z siscu.volatile matches 7 run return run data merge storage siscu:volatile {roman_numeral:"VII"}
execute if score z siscu.volatile matches 8 run return run data merge storage siscu:volatile {roman_numeral:"VIII"}
execute if score z siscu.volatile matches 9 run return run data merge storage siscu:volatile {roman_numeral:"IX"}
execute if score z siscu.volatile matches 10 run return run data merge storage siscu:volatile {roman_numeral:"X"}
execute if score z siscu.volatile matches 50 run return run data merge storage siscu:volatile {roman_numeral:"L"}
execute if score z siscu.volatile matches 100 run return run data merge storage siscu:volatile {roman_numeral:"C"}
data merge storage siscu:volatile {roman_numeral:"???"}