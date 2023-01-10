#
execute store result score $magazine ui_temp run data get storage ui:gun temp.Magazine

scoreboard players operation $bar.temp ui_temp = $bullets ui_temp
scoreboard players operation $bar.temp ui_temp *= #100 ui_num
scoreboard players operation $bar.temp ui_temp /= $magazine ui_temp
scoreboard players operation $bar.temp ui_temp > #5 ui_num
scoreboard players operation $bar.temp ui_temp < #95 ui_num