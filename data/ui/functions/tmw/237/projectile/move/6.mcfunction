#見た目
    execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 0.8 ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~ ~ ~ ~ ~-1 ~ light_blue_wool replace #ui:wools
    execute if score $team ui_temp matches 2 run particle dust 1 0.5 1 0.8 ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 run particle block pink_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~ ~ ~ ~ ~-1 ~ pink_wool replace #ui:wools

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
