execute store result score @s siscu.y_rotation run data get entity @s Rotation[1] -100
execute store result score @s siscu.y_rotation_int run data get entity @s Rotation[1] -1
scoreboard players operation @s siscu.y_rotation_decimal = @s siscu.y_rotation

execute if score @s siscu.y_rotation matches ..0 run scoreboard players operation @s siscu.y_rotation_int *= -1 siscu.integer
execute if score @s siscu.y_rotation matches ..-1 run scoreboard players remove @s siscu.y_rotation_int 1

execute if score @s siscu.y_rotation matches 0.. run scoreboard players operation @s siscu.y_rotation_decimal %= 100 siscu.integer
execute if score @s siscu.y_rotation matches ..-1 run scoreboard players operation @s siscu.y_rotation_decimal *= -1 siscu.integer
execute if score @s siscu.y_rotation matches ..-1 run scoreboard players operation @s siscu.y_rotation_decimal %= 100 siscu.integer

execute if score @s siscu.y_rotation matches -9000 run scoreboard players set @s siscu.y_rotation_int 90

execute if score @s siscu.y_rotation matches 0.. if score @s siscu.y_rotation_decimal matches 10.. run title @s actionbar [{"score":{"name":"*","objective":"siscu.y_rotation_int"},"color":"gold"},{"text":"."},{"score":{"name":"*","objective":"siscu.y_rotation_decimal"}},{"text":"º"}]
execute if score @s siscu.y_rotation matches 0.. if score @s siscu.y_rotation_decimal matches ..9 run title @s actionbar [{"score":{"name":"*","objective":"siscu.y_rotation_int"},"color":"gold"},{"text":"."},{"text":"0"},{"score":{"name":"*","objective":"siscu.y_rotation_decimal"}},{"text":"º"}]
execute if score @s siscu.y_rotation matches ..-1 if score @s siscu.y_rotation_decimal matches 10.. run title @s actionbar [{"text":"-","color":"gold"},{"score":{"name":"*","objective":"siscu.y_rotation_int"},"color":"gold"},{"text":"."},{"score":{"name":"*","objective":"siscu.y_rotation_decimal"}},{"text":"º"}]
execute if score @s siscu.y_rotation matches ..-1 if score @s siscu.y_rotation_decimal matches ..9 run title @s actionbar [{"text":"-","color":"gold"},{"score":{"name":"*","objective":"siscu.y_rotation_int"},"color":"gold"},{"text":"."},{"text":"0"},{"score":{"name":"*","objective":"siscu.y_rotation_decimal"}},{"text":"º"}]


advancement revoke @s only siscu:items/use/astrolabe_use