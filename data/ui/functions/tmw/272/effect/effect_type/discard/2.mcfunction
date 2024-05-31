# varをコピーして回数を増やす
scoreboard players operation $var_temp ui_temp = $var ui_temp
scoreboard players set $condition_checker_temp ui_temp 0

scoreboard players set $just_check ui_temp 0
execute if score $var_temp ui_temp matches 0 run scoreboard players set $just_check ui_temp 1
execute if score $var_temp ui_temp matches 0 run scoreboard players set $var_temp ui_temp 1

data remove storage ui:temp temp.display

execute unless data storage ui:temp temp.effect.macro if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/discard/3
execute if data storage ui:temp temp.effect.macro if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/discard/3_macro

scoreboard players set $broadcast_type ui_temp 6
function ui:tmw/272/effect/broadcast/
execute if score $just_check ui_temp matches 0 run scoreboard players operation @s ui_tmw272_discard += $condition_checker_temp ui_temp

execute if data storage ui:temp temp.effect.condition_limit_1 run scoreboard players operation $condition_checker_temp ui_temp < #1 ui_num

execute unless data storage ui:temp temp.effect.no_condition run scoreboard players operation $condition_checker ui_temp += $condition_checker_temp ui_temp
scoreboard players reset $condition_checker_temp ui_temp
scoreboard players reset $just_check ui_temp