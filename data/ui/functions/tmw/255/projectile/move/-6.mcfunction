# 見た目
    particle dust 1 1 0 0.6 ~ ~ ~ 0.06 0.06 0.06 0 1 force
    particle electric_spark ~ ~ ~ 0.05 0.05 0.05 0 1 force

# 消す
    execute if entity @s[tag=tmw_255_proj_del] run function ui:tmw/255/projectile/kill
