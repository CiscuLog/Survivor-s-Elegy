#delete scoreboards
scoreboard objectives remove siscu.day
scoreboard objectives remove siscu.death
scoreboard objectives remove siscu.dimension
scoreboard objectives remove siscu.integer
scoreboard objectives remove siscu.sleep_time
scoreboard objectives remove siscu.UseCarrot
scoreboard objectives remove siscu.x_pos
scoreboard objectives remove siscu.y_pos
scoreboard objectives remove siscu.y_rotation
scoreboard objectives remove siscu.y_rotation_int
scoreboard objectives remove siscu.y_rotation_decimal
scoreboard objectives remove siscu.z_pos

scoreboard objectives remove siscu.withering
scoreboard objectives remove siscu.warped_food

scoreboard objectives remove siscu.block_holding
scoreboard objectives remove siscu.pig_count
scoreboard objectives remove siscu.skeleton_class
scoreboard objectives remove siscu.llama_color
scoreboard objectives remove siscu.item_frame_inv
scoreboard objectives remove siscu.rotting_mob
scoreboard objectives remove siscu.fire_spring
scoreboard objectives remove siscu.zombifying

tellraw @a [{"text":"   Survivor's Elegy\n","color":"gold","bold":"true"},{"text":"succesfully cleared all scoreboards","bold":"false"}]