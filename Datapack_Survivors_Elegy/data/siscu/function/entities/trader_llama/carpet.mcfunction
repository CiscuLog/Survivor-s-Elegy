# Tag the entity as checked

tag @s add siscu.llama_checked

# Run the randomiser

execute store result score llama_color siscu.volatile run random value 0..20

execute if score llama_color siscu.volatile matches 0 run item replace entity @s armor.body with white_carpet
execute if score llama_color siscu.volatile matches 1 run item replace entity @s armor.body with orange_carpet
execute if score llama_color siscu.volatile matches 2 run item replace entity @s armor.body with magenta_carpet
execute if score llama_color siscu.volatile matches 3 run item replace entity @s armor.body with light_blue_carpet
execute if score llama_color siscu.volatile matches 4 run item replace entity @s armor.body with yellow_carpet
execute if score llama_color siscu.volatile matches 5 run item replace entity @s armor.body with lime_carpet
execute if score llama_color siscu.volatile matches 6 run item replace entity @s armor.body with pink_carpet
execute if score llama_color siscu.volatile matches 7 run item replace entity @s armor.body with gray_carpet
execute if score llama_color siscu.volatile matches 8 run item replace entity @s armor.body with light_gray_carpet
execute if score llama_color siscu.volatile matches 9 run item replace entity @s armor.body with cyan_carpet
execute if score llama_color siscu.volatile matches 10 run item replace entity @s armor.body with purple_carpet
execute if score llama_color siscu.volatile matches 11 run item replace entity @s armor.body with blue_carpet
execute if score llama_color siscu.volatile matches 12 run item replace entity @s armor.body with brown_carpet
execute if score llama_color siscu.volatile matches 13 run item replace entity @s armor.body with green_carpet
execute if score llama_color siscu.volatile matches 14 run item replace entity @s armor.body with red_carpet
execute if score llama_color siscu.volatile matches 15 run item replace entity @s armor.body with black_carpet