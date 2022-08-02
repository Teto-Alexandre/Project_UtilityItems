#
    ## $range
    ## $damage
    ## $multishot
    ## $speed
    ## $ct
    ## $spread

# 長押し時間に応じて強化

# 連射、速度アップ
    execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $burst_alt ui_temp /= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $speed.plus ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $burst_alt ui_temp /= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $range ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $burst_alt ui_temp /= #3 ui_num
    execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $ct ui_temp -= $burst_alt ui_temp

# 威力、収束アップ
    execute if score $burst_alt.id ui_temp matches 102 run scoreboard players operation $burst_alt ui_temp *= #8 ui_num
    execute if score $burst_alt.id ui_temp matches 102 run scoreboard players operation $spread ui_temp -= $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 102 run scoreboard players operation $burst_alt ui_temp /= #8 ui_num
    execute if score $burst_alt.id ui_temp matches 102 run scoreboard players operation $burst_alt ui_temp *= #3 ui_num
    execute if score $burst_alt.id ui_temp matches 102 run scoreboard players operation $burst_alt ui_temp /= #10 ui_num
    execute if score $burst_alt.id ui_temp matches 102 run scoreboard players operation $range ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 102 run scoreboard players operation $damage ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 102 run scoreboard players operation $burst_alt ui_temp /= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 102 run scoreboard players operation $ct ui_temp -= $burst_alt ui_temp