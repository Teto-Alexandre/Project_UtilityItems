#say 条件のチェック

execute if score $condition_checker ui_temp matches 1.. run scoreboard players set $condition ui_temp 1
scoreboard players set $condition_checker ui_temp 0