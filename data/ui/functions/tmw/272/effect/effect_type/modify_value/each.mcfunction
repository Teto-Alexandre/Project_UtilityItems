data modify storage ui:tmw272 temp set from storage ui:temp temp.effect
execute unless data storage ui:temp temp.effect.type run function ui:tmw/272/common/value/modify_simple_value with storage ui:tmw272 temp
execute if data storage ui:temp temp.effect{type:"advance"} run function ui:tmw/272/common/value/modify_advance_value with storage ui:tmw272 temp
execute if data storage ui:temp temp.effect{type:"particle"} run function ui:tmw/272/common/value/modify_particle

data remove storage ui:tmw272 temp

#scoreboard players operation $condition_checker ui_temp += $tmw272_get_value ui_temp

#tellraw @a {"text":"c"}
