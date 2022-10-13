
scoreboard players operation $result ui_temp += $temp ui_temp
scoreboard players operation $result ui_temp /= #2 ui_num

scoreboard players operation $temp ui_temp = $input ui_temp
scoreboard players operation $temp ui_temp /= $result ui_temp

execute if score $result ui_temp > $temp ui_temp run function ui:common/distance/sqrt/lp