# revision 02/07/2024: increased accuracy by adding 2 decimal digits
# revision 11/07/2024: this is dumb and not accurate at all, square roots are stupid
# I'm still keeping it bc it's useful though

scoreboard players operation x2 siscu.volatile -= x1 siscu.volatile
scoreboard players operation y2 siscu.volatile -= y1 siscu.volatile
scoreboard players operation z2 siscu.volatile -= z1 siscu.volatile
scoreboard players operation x2 siscu.volatile *= 100 siscu.integer
scoreboard players operation y2 siscu.volatile *= 100 siscu.integer
scoreboard players operation z2 siscu.volatile *= 100 siscu.integer
execute if score x2 siscu.volatile matches 0 run scoreboard players set x2 siscu.volatile 1
execute if score y2 siscu.volatile matches 0 run scoreboard players set y2 siscu.volatile 1
execute if score z2 siscu.volatile matches 0 run scoreboard players set z2 siscu.volatile 1

# sqrt(a^2+b^2+c^2) == Q+(z2^2)/(Q*2) | Q=(x2+(y2^2)/(2*x2))

scoreboard players operation y2 siscu.volatile *= y2 siscu.volatile
scoreboard players operation y2 siscu.volatile /= 2 siscu.integer
scoreboard players operation y2 siscu.volatile /= x2 siscu.volatile
scoreboard players operation y2 siscu.volatile += x2 siscu.volatile

scoreboard players operation z2 siscu.volatile *= z2 siscu.volatile
scoreboard players operation z2 siscu.volatile /= 2 siscu.integer
scoreboard players operation z2 siscu.volatile /= y2 siscu.volatile
scoreboard players operation z2 siscu.volatile += y2 siscu.volatile

scoreboard players operation d siscu.volatile = z2 siscu.volatile
scoreboard players operation d siscu.volatile /= 100 siscu.integer
execute if score d siscu.volatile matches ..-1 run scoreboard players operation d siscu.volatile *= -1 siscu.integer