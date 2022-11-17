#ブロックにぶつかったときの反応

# 貫通
    # 今の状態を観測 true=1 false=0
    execute store result score $temp ui_temp run gamerule mobGriefing
    execute if score $temp ui_temp matches 1 run function ui:tmw/255/projectile/col/block_col.true
    execute if score $temp ui_temp matches 0 run tag @s add tmw_255_proj_del

# 余裕で耐えた時以外、このtickの移動はおしまい
    scoreboard players operation $break.temp ui_temp = $break.max ui_temp
    scoreboard players operation $break.temp ui_temp /= #5 ui_num
    scoreboard players operation $break.temp2 ui_temp = $break.max ui_temp
    scoreboard players operation $break.temp2 ui_temp -= $break ui_temp
    # 総破壊力の1/5以上がこの移動で減ったなら停止
    execute if score $break.temp ui_temp <= $break.temp2 ui_temp run tag @s add ui_temp_col