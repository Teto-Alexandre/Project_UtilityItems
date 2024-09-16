function oh_my_dat:please

data modify storage ui:temp temp.effect set value {macro:"tmw:{cg:{turn_discard:1}}",all:1}

scoreboard players set $var_temp ui_temp 40
function ui:tmw/272/effect/effect_type/discard/3_macro

scoreboard players reset $condition_checker_temp ui_temp
scoreboard players reset $just_check ui_temp
scoreboard players reset $var_temp ui_temp

data remove storage ui:temp temp
