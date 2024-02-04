data modify storage ui:tmw272 temp set from storage ui:temp temp.effect

execute if data storage ui:temp temp.effect{input:"health"} unless data storage ui:temp temp.effect{effect_mode:"set"} if score $var ui_temp matches ..-1 run scoreboard players add @s[tag=ui_temp_player] ui_tmw272_sacrifice 1
execute if data storage ui:temp temp.effect{input:"health"} if data storage ui:temp temp.effect{effect_mode:"set"} if score $var ui_temp < @s ui_tmw272_health run scoreboard players add @s[tag=ui_temp_player] ui_tmw272_sacrifice 1

execute unless data storage ui:temp temp.effect.type run function ui:tmw/272/common/value/modify_simple_value with storage ui:tmw272 temp
execute if data storage ui:temp temp.effect{type:"advance"} run function ui:tmw/272/common/value/modify_advance_value with storage ui:tmw272 temp
execute if data storage ui:temp temp.effect{type:"particle"} run function ui:tmw/272/common/value/modify_particle

data remove storage ui:tmw272 temp

#scoreboard players operation $condition_checker ui_temp += $tmw272_get_value ui_temp

#tellraw @a {"text":"c"}
