
data merge storage siscu:volatile {data:{entity:"zombie"}}
execute if entity @s[type=#siscu:illager] run return run data merge storage siscu:volatile {data:{entity:"zombie_villager"}}
execute if entity @s[type=#siscu:piglin] run return run data merge storage siscu:volatile {data:{entity:"zombified_piglin"}}
execute if entity @s[type=allay] run return run data merge storage siscu:volatile {data:{entity:"vex"}}
execute if entity @s[type=camel] run return run data merge storage siscu:volatile {data:{entity:"camel_husk"}}
execute if entity @s[type=hoglin] run return run data merge storage siscu:volatile {data:{entity:"hoglin"}}
execute if entity @s[type=horse] run return run data merge storage siscu:volatile {data:{entity:"zombified_horse"}}
execute if entity @s[type=nautilus] run data merge storage siscu:volatile {data:{entity:"zombie_nautilus"}}
execute if entity @s[type=rabbit] run return run data merge storage siscu:volatile {data:{entity:"rabbit",data:{RabbitType:99}}}
