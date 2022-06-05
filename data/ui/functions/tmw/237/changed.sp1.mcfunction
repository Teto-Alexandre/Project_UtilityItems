# SP残量を表示
scoreboard players operation $ink.temp ui_temp = $sptime ui_temp
scoreboard players operation $ink.temp ui_temp *= #100 ui_num
scoreboard players operation $ink.temp ui_temp /= $sptime.max ui_temp
scoreboard players operation $ink.temp ui_temp > #5 ui_num
scoreboard players operation $ink.temp ui_temp < #95 ui_num
