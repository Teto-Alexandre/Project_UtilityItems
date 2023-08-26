# 見た目
    particle dust 1 1 1 0.35 ^ ^ ^0 0 0 0 0 1 force
    particle dust 1 1 1 0.35 ^ ^ ^0.125 0 0 0 0 1 force
    particle dust 1 1 1 0.35 ^ ^ ^0.25 0 0 0 0 1 force
    particle dust 1 1 1 0.35 ^ ^ ^0.375 0 0 0 0 1 force

# 消す
    execute if entity @s[tag=tmw_255_proj_del] run function ui:tmw/255/projectile/kill
