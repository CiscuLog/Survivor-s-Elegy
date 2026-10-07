
function siscu:technical/scoreboards/uninstall/main

tellraw @a[gamemode=creative] [{text:""},{text:"   Survivor's Elegy\n",color:"gold",bold:true},{text:"succesfully cleared "},{score:{name:"x",objective:"siscu.volatile"}},{text:" scoreboards"}]
scoreboard objectives remove siscu.volatile
