
# Storages
## check if it's updating from pre 1.21.4
# warn if PackVersion exists but MajorUpdate doesn't
execute if data storage siscu:world PackVersion unless data storage siscu:world MajorUpdate run schedule function siscu:technical/load/warning 5s

# Update (siscu:world)
data merge storage siscu:world {PackVersion:"v1.0.12",RPVersion:10,MajorUpdate:1}
execute unless data storage siscu:world DragonSlayer run data merge storage siscu:world {DragonSlayer:"null"}
execute unless data storage siscu:world day_length run data merge storage siscu:world {day_length:3}

# Database (siscu:database)
function siscu:entities/enderman/list

#set gamerules
gamerule advance_time false

# create scoreboards
function siscu:technical/load/scoreboards
# set scores
function siscu:technical/load/scoreboards_config

# announce
tellraw @a [{"text":"   Survivor's Elegy","color":"gold","bold":true}]
tellraw @a [{"text":"Succesfully updated to version ","color":"yellow","bold":false},{"storage":"siscu:world","nbt":"PackVersion","bold":true}]
tellraw @s [{"text":"Resourcepack: ",color:gray},{"translate":"pack.siscu.version",color:green,"fallback":"%s",with:[{text:"-missing-",color:"red"}]},{text:"/"},{nbt:"RPVersion",storage:"siscu:world",color:"gold"}]
