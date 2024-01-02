#compoundでtypeとnameを入れると取得

#
execute if data storage ui:temp temp.effect.var_input.name run data modify storage ui:temp temp.effect.var_input.input set from storage ui:temp temp.effect.var_input.name
execute if data storage ui:temp temp.effect.var_input.input run data modify storage ui:tmw272 temp set from storage ui:temp temp.effect.var_input
execute unless data storage ui:temp temp.effect.var_input.input run data modify storage ui:tmw272 temp set value {input:"null"}
execute unless data storage ui:temp temp.effect.var_input.input run data modify storage ui:tmw272 temp.input set from storage ui:temp temp.effect.var_input

#
function ui:tmw/272/effect/misc/input/

#
scoreboard players operation $var ui_temp = $input_act ui_temp
scoreboard players reset $input_act ui_temp

# まだあるなら - 次のエフェクトに移動

#tellraw @a {"text":"d"}
