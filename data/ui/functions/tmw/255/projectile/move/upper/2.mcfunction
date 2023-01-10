# 見た目
    execute if predicate ui:percentage/30 run particle flame ~ ~ ~ 0 0 0 0.3 1 force
    execute if predicate ui:percentage/30 run particle cloud ~ ~ ~ 0 0 0 0.3 1 force
    execute if predicate ui:percentage/10 run particle lava ~ ~ ~ 0 0 0 0 1 force

# 消す
    execute if entity @s[tag=tmw_255_proj_del] run function ui:tmw/255/projectile/kill
