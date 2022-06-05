#見た目
    execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 1.2 ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 store result score $temp ui_temp run fill ~ ~ ~ ~ ~-4 ~ light_blue_wool replace #ui:wools
    execute if score $team ui_temp matches 2 run particle dust 1 0.5 1 1.2 ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 run particle block pink_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 store result score $temp ui_temp run fill ~ ~ ~ ~ ~-4 ~ pink_wool replace #ui:wools
