
scoreboard players set siscu.grass_particle_color siscu.volatile 0
execute if biome ~ ~ ~ #siscu:pale_grass run scoreboard players set siscu.grass_particle_color siscu.volatile 1
execute if biome ~ ~ ~ #siscu:dry_grass run scoreboard players set siscu.grass_particle_color siscu.volatile 2
execute if biome ~ ~ ~ #siscu:obscure_grass run scoreboard players set siscu.grass_particle_color siscu.volatile 3

execute if score siscu.grass_particle_color siscu.volatile matches 0 run particle dust 0.3 0.6 0.3 1.5 ~ ~0.6 ~ 0.1 0.3 0.1 1 1
execute if score siscu.grass_particle_color siscu.volatile matches 1 run particle dust 0.5 0.7 0.5 1.5 ~ ~0.6 ~ 0.1 0.3 0.1 1 1
execute if score siscu.grass_particle_color siscu.volatile matches 2 run particle dust 0.6 0.6 0.3 1.5 ~ ~0.6 ~ 0.1 0.3 0.1 1 1
execute if score siscu.grass_particle_color siscu.volatile matches 3 run particle dust 0.2 0.45 0.2 1.5 ~ ~0.6 ~ 0.1 0.3 0.1 1 1