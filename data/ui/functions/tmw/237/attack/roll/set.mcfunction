scoreboard players add $temp2 ui_temp 1
execute if score $temp2 ui_temp = $reach ui_temp positioned ^ ^ ^0.1 run function ui:tmw/237/attack/roll/forwardturn
execute if score $temp2 ui_temp < $reach ui_temp positioned ^ ^ ^0.1 run function ui:tmw/237/attack/roll/set