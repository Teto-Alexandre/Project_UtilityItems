#compoundでtypeとnameを入れると取得

#
data modify storage ui:tmw272 temp set from storage ui:temp temp.effect.rand.max_input
execute unless data storage ui:tmw272 temp.input run data modify storage ui:tmw272 temp.input set from storage ui:temp temp.effect.rand.max_input.name

#
function ui:tmw/272/effect/misc/input/

#
scoreboard players operation $rand_max_luk ui_temp = $input_act ui_temp
scoreboard players reset $input_act ui_temp

# まだあるなら - 次のエフェクトに移動

#tellraw @a {"text":"d"}
