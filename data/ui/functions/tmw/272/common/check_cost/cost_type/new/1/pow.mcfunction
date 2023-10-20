scoreboard players operation $cost_act ui_temp *= $cost_act_temp ui_temp

scoreboard players remove $cost_pow ui_temp 1
execute if score $cost_pow ui_temp matches 1.. run function ui:tmw/272/common/check_cost/cost_type/new/1/pow