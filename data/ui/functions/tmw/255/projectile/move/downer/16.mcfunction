# 見た目
    #execute if predicate ui:percentage/20 run particle sonic_boom ~ ~ ~ 0 0 0 0 1 force
    execute if predicate ui:percentage/40 run particle dust_color_transition 0 1 1 1 0 1 0 ~ ~ ~ 0.1 0.1 0.1 0 1 force
    execute if predicate ui:percentage/40 run particle dust_color_transition 0 1 1 1 0 0 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force
    execute if predicate ui:percentage/40 run particle dust_color_transition 0 1 1 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force

# 消す
    execute if entity @s[tag=tmw_255_proj_del] run function ui:tmw/255/projectile/kill
