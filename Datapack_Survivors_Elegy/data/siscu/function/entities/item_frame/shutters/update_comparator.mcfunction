
execute if block ~ ~ ~ comparator[powered=false] run return 0

$execute if block ~ ~ ~ comparator[facing=north,mode=subtract] run return run setblock ~ ~ ~ comparator[facing=north,mode=subtract,powered=true]{OutputSignal:$(OutputSignal)}
$execute if block ~ ~ ~ comparator[facing=south,mode=subtract] run return run setblock ~ ~ ~ comparator[facing=south,mode=subtract,powered=true]{OutputSignal:$(OutputSignal)}
$execute if block ~ ~ ~ comparator[facing=east,mode=subtract] run return run setblock ~ ~ ~ comparator[facing=east,mode=subtract,powered=true]{OutputSignal:$(OutputSignal)}
$execute if block ~ ~ ~ comparator[facing=west,mode=subtract] run return run setblock ~ ~ ~ comparator[facing=west,mode=subtract,powered=true]{OutputSignal:$(OutputSignal)}

$execute if block ~ ~ ~ comparator[facing=north] run return run setblock ~ ~ ~ comparator[facing=north,powered=true]{OutputSignal:$(OutputSignal)}
$execute if block ~ ~ ~ comparator[facing=south] run return run setblock ~ ~ ~ comparator[facing=south,powered=true]{OutputSignal:$(OutputSignal)}
$execute if block ~ ~ ~ comparator[facing=east] run return run setblock ~ ~ ~ comparator[facing=east,powered=true]{OutputSignal:$(OutputSignal)}
$execute if block ~ ~ ~ comparator[facing=west] run return run setblock ~ ~ ~ comparator[facing=west,powered=true]{OutputSignal:$(OutputSignal)}