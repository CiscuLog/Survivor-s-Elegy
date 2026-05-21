particle smoke ~ ~ ~ 0.3 0 0.3 0 6
execute if entity @s[predicate=siscu:utils/is_baby] at @s run return run playsound entity.baby_cat.hiss neutral @a
execute if data entity @s {sound_variant:"royal"} at @s run return run playsound entity.cat_royal.hiss neutral @a
playsound entity.cat.hiss neutral @a