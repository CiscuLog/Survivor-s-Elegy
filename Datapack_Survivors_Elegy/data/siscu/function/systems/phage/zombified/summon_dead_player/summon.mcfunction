
$summon zombie $(x) $(y) $(z) {CanPickUpLoot:true, drop_chances:{body:1,chest:1,feet:1,head:1,legs:1,mainhand:1,offhand:1,saddle:1}, PersistenceRequired:true, CustomName:"$(player)", CustomNameVisible:true, Tags:["siscu.entity_checked","siscu.zombie_checked"]}
$particle entity_effect{color:[0.752,0.643,0.302,1]} $(x) $(y) $(z) 0 0.5 0 0.1 10 normal
$playsound entity.zombie_villager.converted player @a $(x) $(y) $(z)
