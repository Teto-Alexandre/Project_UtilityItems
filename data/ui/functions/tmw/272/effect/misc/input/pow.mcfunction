scoreboard players operation $input_act ui_temp *= $input_act_temp ui_temp

scoreboard players remove $input_pow ui_temp 1
execute if score $input_pow ui_temp matches 1.. run function ui:tmw/272/effect/misc/input/pow