# 数値を入れる
execute unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players set $condition_checker ui_temp 0
data modify storage ui:tmw272 temp set from storage ui:temp temp.effect

function ui:tmw/272/common/get_simple_value

scoreboard players operation $condition_checker ui_temp += $tmw272_get_simple_value ui_temp
scoreboard players reset $tmw272_get_simple_value ui_temp