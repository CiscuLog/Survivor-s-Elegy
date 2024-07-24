execute if score uninstalled siscu.volatile matches 0.. run return 0

execute if score do_daylight_cycle siscu.day matches 1 run gamerule doDaylightCycle true

function siscu:clear_scoreboards
data remove storage siscu:world FirstLogin
data remove storage siscu:world PackVersion
#data remove storage siscu:volatile *

schedule function siscu:remove_stuff 5s