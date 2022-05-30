#
    ## $range
    ## $damage
    ## $multishot
    ## $speed
    ## $ct

# チャージ数に応じて強化
    execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $burst_alt ui_temp /= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $speed.plus ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $burst_alt ui_temp /= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $range ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $burst_alt ui_temp /= #3 ui_num
    execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $ct ui_temp -= $burst_alt ui_temp
    #execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $burst_alt ui_temp /= #2 ui_num
    #execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $range ui_temp += $burst_alt ui_temp
    #execute if score $burst_alt.id ui_temp matches 101 run scoreboard players operation $damage ui_temp += $burst_alt ui_temp
