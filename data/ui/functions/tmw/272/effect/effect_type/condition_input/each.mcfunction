data modify storage ui:tmw272 temp set from storage ui:temp temp.effect
execute unless data storage ui:temp temp.effect.type run function ui:tmw/272/common/get_simple_value
execute if data storage ui:temp temp.effect{type:"advance"} run function ui:tmw/272/common/get_advance_value

#tellraw @s [{"score":{"name": "$condition_checker","objective": "ui_temp"},"color": "yellow"}]

execute unless data storage ui:temp temp.effect.invert run scoreboard players operation $condition_checker ui_temp += $tmw272_get_value ui_temp
execute if data storage ui:temp temp.effect.invert run scoreboard players operation $condition_checker ui_temp -= $tmw272_get_value ui_temp

#tellraw @s [{"score":{"name": "$condition_checker","objective": "ui_temp"},"color": "red"}]
