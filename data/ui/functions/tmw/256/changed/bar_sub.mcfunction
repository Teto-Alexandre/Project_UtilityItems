# SP残量を表示
scoreboard players operation $ink.temp ui_temp = $subtime ui_temp
scoreboard players operation $ink.temp ui_temp *= #100 ui_num
scoreboard players operation $ink.temp ui_temp /= $subtime.max ui_temp
scoreboard players operation $ink.temp ui_temp > #5 ui_num
scoreboard players operation $ink.temp ui_temp < #95 ui_num

execute if entity @s[gamemode=adventure] run function ui:tmw/256/changed/bar_sub.adv