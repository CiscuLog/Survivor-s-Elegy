
#requires lists OBJECTIVE and ADDITION in the following form: "entity @s data.list" or "storage foo:bar data.list"
$execute store result score x siscu.volatile run data get $(addition)
scoreboard players remove x siscu.volatile 1
execute unless score x siscu.volatile matches 0.. run return 0

$data merge storage siscu:volatile {String:"$(objective)",String2:"$(addition)"}
function siscu:technical/merge_lists/loop with storage siscu:volatile

