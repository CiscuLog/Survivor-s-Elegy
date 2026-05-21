
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @n[tag=siscu.lectern_book,distance=..0.1] run return fail

execute if block ~ ~ ~ lectern[facing=north] run data merge storage siscu:volatile {Rotation:[-180.0,0.0]}
execute if block ~ ~ ~ lectern[facing=south] run data merge storage siscu:volatile {Rotation:[0.0,0.0]}
execute if block ~ ~ ~ lectern[facing=east] run data merge storage siscu:volatile {Rotation:[-90.0,0.0]}
execute if block ~ ~ ~ lectern[facing=west] run data merge storage siscu:volatile {Rotation:[90.0,0.0]}

function siscu:blocks/lectern_books/summon with storage siscu:volatile