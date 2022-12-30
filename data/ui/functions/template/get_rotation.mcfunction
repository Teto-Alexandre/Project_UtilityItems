# 逐次更新型の更新
scoreboard players operation @s ui_rot_x_old = @s ui_rot_x
execute store result score @s ui_rot_x run data get entity @s Rotation[0] 10
scoreboard players operation @s ui_rot_y_old = @s ui_rot_y
execute store result score @s ui_rot_y run data get entity @s Rotation[1] 10
