#compoundでtypeとnameを入れると取得

#
data modify storage ui:tmw272 temp.input set from storage ui:temp temp.effect.input

#
execute unless data storage ui:temp temp.effect.input.type run function ui:tmw/272/common/get_simple_value
execute if data storage ui:temp temp.effect.input{type:"advance_value"} run function ui:tmw/272/common/get_advance_value

scoreboard players operation $input_temp ui_temp = $tmw272_get_value ui_temp

#
##execute if data storage ui:temp temp.effect.input.to_var run scoreboard players operation $var ui_temp = $input_temp ui_temp
scoreboard players operation $var ui_temp = $input_temp ui_temp
scoreboard players reset $input_temp ui_temp

#
scoreboard players reset $tmw272_get_value ui_temp

# まだあるなら - 次のエフェクトに移動
data remove storage ui:temp temp.mod
