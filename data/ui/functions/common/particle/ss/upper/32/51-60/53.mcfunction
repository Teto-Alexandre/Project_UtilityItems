#

#
execute if score $is ui_temp matches 1 run particle block blue_ice ~ ~1 ~ 1 1 1 1 50 force
execute if score $is ui_temp matches 1 run particle dust 0 0.8 1 1 ~ ~1 ~ 1 1 1 1 50 force
execute if score $is ui_temp matches 1 run particle block_marker ice ~ ~1 ~ 1 1 1 1 10 force

execute if score $is ui_temp matches 21 run particle block blue_ice ~ ~1 ~ 1.5 1.5 1.5 1 50 force
execute if score $is ui_temp matches 21 run particle dust 0 0.8 1 1 ~ ~1 ~ 1.5 1.5 1.5 1 50 force
execute if score $is ui_temp matches 21 run particle block_marker ice ~ ~1 ~ 1.5 1.5 1.5 1 10 force

execute if score $is ui_temp matches 41 run particle block blue_ice ~ ~1 ~ 2 2 2 1 100 force
execute if score $is ui_temp matches 41 run particle dust 0 0.8 1 1 ~ ~1 ~ 2 2 2 1 100 force
execute if score $is ui_temp matches 41 run particle block_marker ice ~ ~1 ~ 2 2 2 1 30 force

#
execute if score $is ui_temp matches 1 run playsound block.glass.break player @a ~ ~ ~ 1 0.5 0
execute if score $is ui_temp matches 1 run playsound block.amethyst_block.break player @a ~ ~ ~ 1 0.9 0

execute if score $is ui_temp matches 21 run playsound block.glass.break player @a ~ ~ ~ 1 0.5 0
execute if score $is ui_temp matches 21 run playsound block.amethyst_block.break player @a ~ ~ ~ 1 0.9 0

execute if score $is ui_temp matches 41 run playsound block.glass.break player @a ~ ~ ~ 1 0.5 0
execute if score $is ui_temp matches 41 run playsound block.amethyst_block.break player @a ~ ~ ~ 1 0.6 0

#
execute if score $is ui_temp matches 41.. run kill @s