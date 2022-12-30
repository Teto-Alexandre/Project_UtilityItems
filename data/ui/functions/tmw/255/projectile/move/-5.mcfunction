# 見た目
    execute if predicate ui:percentage/30 run particle dust 1 0.5 0 0.4 ~ ~ ~ 0.05 0.05 0.05 0 1 force
    execute if predicate ui:percentage/30 run particle small_flame ~ ~ ~ 0.05 0.05 0.05 0 1 force

# 消す
    execute if entity @s[tag=tmw_255_proj_del] run function ui:tmw/255/projectile/kill
