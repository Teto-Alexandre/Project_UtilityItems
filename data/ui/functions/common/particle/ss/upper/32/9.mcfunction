#

#
particle block blue_ice ~ ~ ~ 0.5 0.5 0.5 1 2 force
particle dust 0 1 1 1 ~ ~ ~ 0.5 0.5 0.5 1 2 force

#
execute if score $is ui_temp matches 1 run playsound block.glass.break player @a ~ ~ ~ 1 2 0
execute if score $is ui_temp matches 3 run playsound block.glass.break player @a ~ ~ ~ 1 1.8 0
execute if score $is ui_temp matches 5 run playsound block.glass.break player @a ~ ~ ~ 1 1.6 0
execute if score $is ui_temp matches 7 run playsound block.glass.break player @a ~ ~ ~ 1 1.4 0
execute if score $is ui_temp matches 9 run playsound block.glass.break player @a ~ ~ ~ 1 1.2 0

#
execute if score $is ui_temp matches 9.. run kill @s