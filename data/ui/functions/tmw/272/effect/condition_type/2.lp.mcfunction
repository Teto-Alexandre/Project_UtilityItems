data modify storage ui:temp temp.temp.each set from storage ui:temp temp.temp.list[0]


function ui:tmw/272/effect/misc/input/


execute unless data storage ui:temp temp.effect.invert run scoreboard players operation $condition_checker ui_temp += $input_act ui_temp
execute if data storage ui:temp temp.effect.invert run scoreboard players operation $condition_checker ui_temp -= $input_act ui_temp



scoreboard players remove $count_condition_list ui_temp 1
data remove storage ui:temp temp.temp.list[0]
execute if score $count_condition_list ui_temp matches 1.. run function ui:tmw/272/effect/condition_type/2.lp
