# Multiごとに個別

# 計算
scoreboard players operation $speed_over ui_temp = $speed ui_temp
scoreboard players operation $speed_over ui_temp -= $barrel ui_temp
scoreboard players operation $speed_over ui_temp /= #10 ui_num
scoreboard players operation $speed ui_temp < $barrel ui_temp
scoreboard players operation $speed ui_temp += $speed_over ui_temp
