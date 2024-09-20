# その他

execute if data storage ui:temp temp.effect{effect_mode:"reprogram"} run function ui:tmw/272/effect/effect_type/misc/reprogram
execute if data storage ui:temp temp.effect{effect_mode:"return"} run function ui:tmw/272/effect/fail
execute if data storage ui:temp temp.effect{effect_mode:"break"} run scoreboard players set $count ui_temp 0
