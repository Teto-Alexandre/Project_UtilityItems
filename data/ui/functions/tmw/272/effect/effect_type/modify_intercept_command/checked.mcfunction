scoreboard players add $condition_checker_temp ui_temp 1
scoreboard players remove $var_temp ui_temp 1

execute if data storage ui:temp temp.effect{effect_mode:"delete"} run function ui:tmw/272/effect/effect_type/modify_intercept_command/mode/delete
execute if data storage ui:temp temp.effect{effect_mode:"merge"} run function ui:tmw/272/effect/effect_type/modify_intercept_command/mode/merge
execute if data storage ui:temp temp.effect{effect_mode:"activate"} run function ui:tmw/272/effect/effect_type/modify_intercept_command/mode/activate/