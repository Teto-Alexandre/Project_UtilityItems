#液体（粉雪含む）にぶつかったときの反応

# 破壊力減衰
    scoreboard players remove $break ui_temp 5

# 余裕で耐えた時以外、このtickの移動はおしまい
    scoreboard players operation $break.temp ui_temp = $break.max ui_temp
    scoreboard players operation $break.temp ui_temp /= #5 ui_num
    scoreboard players operation $break.temp2 ui_temp = $break.max ui_temp
    scoreboard players operation $break.temp2 ui_temp -= $break ui_temp
    # 総破壊力の1/5以上がこの移動で減ったなら停止
    execute if score $break.temp ui_temp <= $break.temp2 ui_temp run tag @s add ui_temp_col