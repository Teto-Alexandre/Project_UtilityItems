#

#
execute if score $is ui_temp matches 1 run particle dust 1 0.5 0.5 0.8 ~ ~-1 ~ 0.5 0.1 0.5 0 10 force
execute if score $is ui_temp matches 2 run particle dust 1 0.5 0.5 0.8 ~ ~-0.8 ~ 0.5 0.1 0.5 0 10 force
execute if score $is ui_temp matches 3 run particle dust 1 0.5 0.5 0.8 ~ ~-0.6 ~ 0.5 0.1 0.5 0 10 force
execute if score $is ui_temp matches 4 run particle dust 1 0.5 0.5 0.8 ~ ~-0.4 ~ 0.5 0.1 0.5 0 10 force
execute if score $is ui_temp matches 5 run particle dust 1 0.5 0.5 0.8 ~ ~-0.2 ~ 0.5 0.1 0.5 0 10 force
execute if score $is ui_temp matches 6 run particle dust 1 0.5 0.5 0.8 ~ ~0 ~ 0.5 0.1 0.5 0 10 force
execute if score $is ui_temp matches 7 run particle dust 1 0.5 0.5 0.8 ~ ~0.2 ~ 0.5 0.1 0.5 0 10 force
execute if score $is ui_temp matches 8 run particle dust 1 0.5 0.5 0.8 ~ ~0.4 ~ 0.5 0.1 0.5 0 10 force
execute if score $is ui_temp matches 9 run particle dust 1 0.5 0.5 0.8 ~ ~0.6 ~ 0.5 0.1 0.5 0 10 force
execute if score $is ui_temp matches 10 run particle dust 1 0.5 0.5 0.8 ~ ~0.8 ~ 0.5 0.1 0.5 0 10 force
execute if score $is ui_temp matches 11 run particle dust 1 0.5 0.5 0.8 ~ ~1 ~ 0.5 0.1 0.5 0 10 force

execute if score $is ui_temp matches 1 run playsound block.respawn_anchor.charge player @a ~ ~ ~ 1 1.5 0

#
execute if score $is ui_temp matches 11.. run kill @s