# エルドピアサー
    scoreboard players operation $burst_alt ui_temp *= #2 ui_num
    scoreboard players operation $damage ui_temp += $burst_alt ui_temp
    scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    scoreboard players operation $burst_alt ui_temp /= #2 ui_num
    scoreboard players operation $range ui_temp += $burst_alt ui_temp