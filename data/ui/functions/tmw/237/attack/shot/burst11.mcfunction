#
    execute if score $shotmode ui_temp matches 2 run scoreboard players set $chargetime ui_temp 0
    execute if score $shotmode ui_temp matches 1 run scoreboard players add $shottime ui_temp 1
    execute if score $shotmode ui_temp matches 1 run scoreboard players set $changed ui_temp 1