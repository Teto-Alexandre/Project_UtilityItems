# インク残量を表示
scoreboard players operation $ink.temp ui_temp = $ink ui_temp
scoreboard players operation $ink.temp ui_temp *= #100 ui_num
scoreboard players operation $ink.temp ui_temp /= $ink.max ui_temp
scoreboard players operation $ink.temp ui_temp > #5 ui_num
scoreboard players operation $ink.temp ui_temp < #95 ui_num

xp set @s[gamemode=adventure] 0 levels
xp set @s[gamemode=adventure] 0 points