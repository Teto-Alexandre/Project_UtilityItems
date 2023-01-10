#
execute store result score $magazine ui_temp run data get storage ui:gun temp.Magazine

scoreboard players operation $bar.temp ui_temp = $bullets ui_temp
scoreboard players operation $bar.temp ui_temp *= #100 ui_num
scoreboard players operation $bar.temp ui_temp /= $magazine ui_temp
scoreboard players operation $bar.temp ui_temp > #5 ui_num
scoreboard players operation $bar.temp ui_temp < #95 ui_num

execute store result score $time ui_temp run time query gametime
scoreboard players operation $bar.text ui_temp = $cooltime ui_temp
scoreboard players operation $bar.text ui_temp -= $time ui_temp
scoreboard players remove $bar.text ui_temp 1
scoreboard players operation $bar.text ui_temp /= #20 ui_num
scoreboard players add $bar.text ui_temp 1
scoreboard players operation $bar.text ui_temp > #1 ui_num