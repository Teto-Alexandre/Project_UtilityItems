#

#
particle block blue_ice ~ ~1 ~ 1 1 1 1 5 force
particle dust 0 0.8 1 1 ~ ~1 ~ 1 1 1 1 5 force

#
execute if score $is ui_temp matches 1 run playsound block.glass.break player @a ~ ~ ~ 1 0.8 0
execute if score $is ui_temp matches 3 run playsound block.glass.break player @a ~ ~ ~ 1 0.8 0
execute if score $is ui_temp matches 5 run playsound block.glass.break player @a ~ ~ ~ 1 0.8 0
execute if score $is ui_temp matches 7 run playsound block.glass.break player @a ~ ~ ~ 1 0.8 0
execute if score $is ui_temp matches 9 run playsound block.glass.break player @a ~ ~ ~ 1 0.8 0
execute if score $is ui_temp matches 11 run playsound block.glass.break player @a ~ ~ ~ 1 0.8 0
execute if score $is ui_temp matches 13 run playsound block.glass.break player @a ~ ~ ~ 1 0.8 0
execute if score $is ui_temp matches 15 run playsound block.glass.break player @a ~ ~ ~ 1 0.8 0
execute if score $is ui_temp matches 17 run playsound block.glass.break player @a ~ ~ ~ 1 0.8 0
execute if score $is ui_temp matches 19 run playsound block.glass.break player @a ~ ~ ~ 1 0.8 0

#
execute if score $is ui_temp matches 19.. run kill @s