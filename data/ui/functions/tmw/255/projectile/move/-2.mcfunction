# 見た目
    #execute if predicate ui:percentage/20 run particle sonic_boom ~ ~ ~ 0 0 0 0 1 force
    particle dust 0 0.933 1 0.4 ~ ~ ~ 0.05 0.05 0.05 0 1 force
    particle dust 0 0.38 0.408 0.4 ~ ~ ~ 0.05 0.05 0.05 0 1 force

# 消す
    execute if entity @s[tag=tmw_255_proj_del] run function ui:tmw/255/projectile/kill
