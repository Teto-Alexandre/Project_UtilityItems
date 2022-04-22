execute store result storage ui:temp tag.tmw.amount int 1 run scoreboard players get $temp2 ui_temp
scoreboard players operation $temp4 ui_temp -= $temp2 ui_temp
scoreboard players operation $temp ui_temp = $temp4 ui_temp

function ui:tmw/227/orb