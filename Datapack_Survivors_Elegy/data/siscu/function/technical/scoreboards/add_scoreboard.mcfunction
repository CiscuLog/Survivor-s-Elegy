
$scoreboard objectives add $(name) $(type) $(display)
$execute unless data storage siscu:database scoreboards[{name:"$(name)",type:"$(type)"}] run data modify storage siscu:database scoreboards append value {name:"$(name)",type:"$(type)"}
