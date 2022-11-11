# 見た目
    #execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 3 ~ ~ ~ 0 0 0 0 1 force
    particle end_rod ~ ~ ~ 0 0 0 100000 1 force

# 消す
    execute if entity @s[tag=tmw_255_proj_del] run function ui:tmw/255/projectile/kill
