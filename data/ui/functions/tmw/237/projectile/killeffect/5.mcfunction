#見た目
    execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 1 ~ ~ ~ 0.4 0.4 0.4 0 10 force
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ~ ~ ~ 0.4 0.4 0.4 0 10 force
    execute if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 light_blue_wool replace #ui:wools
    execute if score $team ui_temp matches 2 run particle dust 1 0.5 1 1 ~ ~ ~ 0.4 0.4 0.4 0 10 force
    execute if score $team ui_temp matches 2 run particle block pink_concrete ~ ~ ~ 0.4 0.4 0.4 0 10 force
    execute if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 pink_wool replace #ui:wools
