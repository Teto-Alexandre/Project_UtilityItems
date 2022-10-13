#

#
execute if score $is ui_temp matches 1 run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute if score $is ui_temp matches 4 run particle dust 0.5 1 1 0.8 ~ ~ ~ 1 1 1 0 15 force
execute if score $is ui_temp matches 11.. run kill @s