#見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/256/projectile/move/6/1
    execute if score $team ui_temp matches 2 run function ui:tmw/256/projectile/move/6/2
    execute if score $team ui_temp matches 3 run function ui:tmw/256/projectile/move/6/3
    execute if score $team ui_temp matches 4 run function ui:tmw/256/projectile/move/6/4

# 消す
    execute if entity @s[tag=tmw_256_proj_del] run function ui:tmw/256/projectile/kill
