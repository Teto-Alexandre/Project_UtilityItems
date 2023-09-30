#say 条件のチェック
execute if score $condition_checker ui_temp >= $condition_var ui_temp run scoreboard players set $condition ui_temp 1
execute unless data storage ui:temp temp.effect.condition_continue run scoreboard players set $condition_checker ui_temp 0