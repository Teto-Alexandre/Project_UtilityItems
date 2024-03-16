# varをコピーして回数を増やす
scoreboard players operation $var_temp ui_temp = $var ui_temp
scoreboard players set $condition_checker_temp ui_temp 0

data remove storage ui:temp temp.display

execute unless data storage ui:temp temp.effect.macro if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/discard/3
execute if data storage ui:temp temp.effect.macro if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/discard/3_macro

scoreboard players set $broadcast_type ui_temp 6
function ui:tmw/272/effect/broadcast/
scoreboard players operation @s ui_tmw272_discard += $condition_checker_temp ui_temp

execute unless data storage ui:temp temp.effect.no_condition run scoreboard players operation $condition_checker ui_temp += $condition_checker_temp ui_temp
scoreboard players reset $condition_checker_temp ui_temp