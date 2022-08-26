# 見た目
particle minecraft:flame ~ ~ ~ 0 0 0 0.5 1 force
particle minecraft:lava ~ ~ ~ 0 0 0 0 1 force
scoreboard players operation $obj_id ui_temp = @s ui_obj_id
execute as @e[distance=1..15,tag=tmw_242] run scoreboard players operation @s ui_gpc = $obj_id ui_temp
execute as @e[distance=1..15,tag=tmw_242] run scoreboard players operation @s ui_gpc = $obj_id ui_temp