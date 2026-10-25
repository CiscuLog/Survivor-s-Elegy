
$function siscu:technical/operations/get_block_location {path:"$(path)"}
$execute store result $(path)[0] int 16 run data get storage siscu:volatile $(path)[0] 0.0625
$execute store result $(path)[1] int 16 run data get storage siscu:volatile $(path)[1] 0.0625
$execute store result $(path)[2] int 16 run data get storage siscu:volatile $(path)[2] 0.0625
