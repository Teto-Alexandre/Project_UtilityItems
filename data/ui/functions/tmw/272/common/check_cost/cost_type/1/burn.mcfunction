# 切削する
data modify storage ui:temp temp.mod set from storage ui:temp temp.mods[0]

#
data modify storage ui:tmw272 temp.input set from storage ui:temp temp.mod.name

#
tellraw @s[scores={ui_tmw601_accessory=5007}] [{"storage":"ui:temp","nbt":"temp.mod"}]
execute unless data storage ui:temp temp.mod.type run function ui:tmw/272/common/get_simple_value
execute if data storage ui:temp temp.mod{type:"advance_value"} run function ui:tmw/272/common/get_advance_value
scoreboard players operation $cost_act ui_temp = $tmw272_get_value ui_temp

#
scoreboard players reset $tmw272_get_value ui_temp

# pow
execute store result score $cost_pow ui_temp run data get storage ui:temp temp.mod.pow
execute if score $cost_pow ui_temp matches 2.. run scoreboard players operation $cost_act_temp ui_temp = $cost_act ui_temp
execute if score $cost_pow ui_temp matches 2.. run scoreboard players remove $cost_pow ui_temp 1
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

tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":" cost: "},{"score":{"name": "$cost","objective": "ui_temp"}},{"text":"  cost_act: "},{"score":{"name": "$cost_act","objective": "ui_temp"}}]

#
scoreboard players reset $cost_pow ui_temp
scoreboard players reset $cost_mult ui_temp
scoreboard players reset $cost_add ui_temp

# まだあるなら - 次のエフェクトに移動
scoreboard players reset $cost_act_temp ui_temp
data remove storage ui:temp temp.mod
data remove storage ui:temp temp.mods[0]
scoreboard players remove $cost_count ui_temp 1
execute if score $cost_count ui_temp matches 1.. run function ui:tmw/272/common/check_cost/cost_type/1/burn