# 見た目
particle minecraft:dust 1 1 0 1.5 ~ ~ ~ 1 1 1 0 1 force
particle minecraft:block gold_block ~ ~ ~ 0 0 0 0 1 force
scoreboard players operation $temp ui_temp = $world ui_tc
scoreboard players operation $temp ui_temp %= #2 ui_num
execute if score $temp ui_temp matches 0 run scoreboard players operation $obj_id ui_temp = @s ui_gpc
execute if score $temp ui_temp matches 0 run function ui:tmw/242/spawn/gold_missile