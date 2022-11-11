#液体（粉雪含む）にぶつかったときの反応

# 減衰
    scoreboard players remove @s ui_gpc 1

# 消失
    execute if score @s ui_gpc matches ..0 run tag @s add tmw_255_proj_del

# 耐えた時もこのtickの移動はおしまい
    tag @s add ui_temp_col