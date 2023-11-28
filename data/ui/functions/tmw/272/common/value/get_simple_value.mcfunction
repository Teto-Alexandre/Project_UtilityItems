# 数値を入れる
$execute store success score $success_get_simple_value ui_temp run scoreboard players set $this_is_dummy_player ui_tmw272_$(input) 1

execute if score $success_get_simple_value ui_temp matches 1 run function ui:tmw/272/common/value/get_simple_value_true with storage ui:tmw272 temp
execute if score $success_get_simple_value ui_temp matches 0 run function ui:tmw/272/common/value/get_simple_value_exception with storage ui:tmw272 temp

scoreboard players reset $success_get_simple_value ui_temp