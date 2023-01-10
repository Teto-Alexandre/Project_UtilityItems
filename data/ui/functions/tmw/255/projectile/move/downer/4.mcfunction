# 見た目
    particle dust 1 0.5 0 0.5 ~ ~ ~ 0.05 0.05 0.05 0 1 force
    particle small_flame ~ ~ ~ 0.05 0.05 0.05 0 1 force

# 消す
    execute if entity @s[tag=tmw_255_proj_del] run function ui:tmw/255/projectile/kill
