#液体（粉雪含む）にぶつかったときの反応

# 速度減衰
    scoreboard players operation @s ui_bm *= #99 ui_num
    scoreboard players operation @s ui_bm /= #100 ui_num

# 耐えた時もこのtickの移動はおしまい
    tag @s add ui_temp_col