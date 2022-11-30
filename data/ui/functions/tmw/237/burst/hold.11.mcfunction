# タメ
    execute if score $shotmode ui_temp matches 1 if score $ishold ui_temp < $burst.max ui_temp at @s run scoreboard players set $shottime ui_temp 0
    execute if score $shotmode ui_temp matches 2 if score $ishold ui_temp < $burst.max ui_temp at @s run scoreboard players add $chargetime ui_temp 1