# 切削する
data modify storage ui:temp temp.mod set from storage ui:temp temp.mods[0]

#
data modify storage ui:tmw272 temp.input set from storage ui:temp temp.mod.name

#
execute if data storage ui:temp temp.mod{type:"simple_value"} run function ui:tmw/272/common/get_simple_value
execute if data storage ui:temp temp.mod{type:"simple_value"} run scoreboard players operation $cost_act ui_temp = $tmw272_get_simple_value ui_temp
##execute if data storage ui:temp temp.mod{type:"advance_value"} run function ui:tmw/272/common/get_advance_value
##execute if data storage ui:temp temp.mod{type:"advance_value"} run scoreboard players operation $cost_act ui_temp = $tmw272_get_advance_value ui_temp

#
scoreboard players reset $tmw272_get_simple_value ui_temp
##scoreboard players reset $tmw272_get_advance_value ui_temp

# pow
execute store result score $cost_pow ui_temp run data get storage ui:temp temp.mod.pow
execute if score $cost_pow ui_temp matches 1.. run scoreboard players operation $cost_act_temp ui_temp = $cost_act ui_temp
execute if score $cost_pow ui_temp matches 1.. run function ui:tmw/272/common/check_cost/cost_type/1/pow

# mult
execute store result score $cost_mult ui_temp run data get storage ui:temp temp.mod.mult 10
execute unless score $cost_mult ui_temp matches 0 run scoreboard players operation $cost_act ui_temp *= $cost_mult ui_temp
execute unless score $cost_mult ui_temp matches 0 run scoreboard players operation $cost_act ui_temp /= #10 ui_num

# add
execute store result score $cost_add ui_temp run data get storage ui:temp temp.mod.add 1
execute unless score $cost_add ui_temp matches 0 run scoreboard players operation $cost_act ui_temp += $cost_add ui_temp

# 入力
scoreboard players operation $cost ui_temp += $cost_act ui_temp

# まだあるなら - 次のエフェクトに移動
scoreboard players reset $cost_act_temp ui_temp
data remove storage ui:temp temp.mod
data remove storage ui:temp temp.mods[0]
scoreboard players remove $cost_count ui_temp 1
execute if score $cost_count ui_temp matches 1.. run function ui:tmw/272/common/check_cost/cost_type/1/burn