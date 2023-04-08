
time add 1t

execute store result score Day_correction siscu.day run time query day

execute if score Day_correction siscu.day < Day siscu.day run time add 1d