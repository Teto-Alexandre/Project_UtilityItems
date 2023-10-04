#say 条件のチェック
#tellraw @s [{"score":{"name": "$condition_checker","objective": "ui_temp"}},{"text":"-"},{"score":{"name": "$condition_var","objective": "ui_temp"}}]
execute if score $condition_checker ui_temp >= $condition_var ui_temp run scoreboard players set $condition ui_temp 1
execute unless data storage ui:temp temp.effect.condition_continue run scoreboard players set $condition_checker ui_temp 0