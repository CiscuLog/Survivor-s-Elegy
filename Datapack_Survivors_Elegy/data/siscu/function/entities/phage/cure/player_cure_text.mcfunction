
execute if entity @s[tag=siscu.zombie] run return run title @s actionbar [{"text":""},{"text":"\u2000","font":"siscu_se:icons","color":"white"},{"text":"Your Zombification has been cured!","color":green},{"text":"\u2000","font":"siscu_se:icons","color":"white"}]
execute if entity @s[tag=siscu.zombifying] run return run title @s actionbar [{"text":""},{"text":"\u2000","font":"siscu_se:icons","color":"white"},{"text":"Your Zombification has been aborted!","color":green},{"text":"\u2000","font":"siscu_se:icons","color":"white"}]
title @s actionbar [{"text":""},{"text":"Something has been cured..?"}]
