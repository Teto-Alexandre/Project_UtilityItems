#
    execute if score $addct ui_temp matches 0 run scoreboard players add $temp ui_temp 1
    execute if score $addct ui_temp matches 0 run scoreboard players add $addct.max ui_temp 1
    execute if score $addct ui_temp matches 0 run scoreboard players operation $addct ui_temp = $addct.max ui_temp
    execute unless score $addct ui_temp matches 0 run scoreboard players remove $addct ui_temp 1
