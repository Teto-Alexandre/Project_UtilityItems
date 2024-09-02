# 切削する
data modify storage ui:temp temp.mod set from storage ui:temp temp.mods[0]

#
data modify storage ui:tmw272 temp.input set from storage ui:temp temp.mod.name
execute if data storage ui:temp temp.mod.input run data modify storage ui:tmw272 temp.input set from storage ui:temp temp.mod.input
execute if data storage ui:temp temp.mod.mute run data modify storage ui:tmw272 temp.mute set value 1

#
tellraw @s[scores={ui_tmw601_accessory=5007}] [{"storage":"ui:temp","nbt":"temp.mod"}]
execute unless data storage ui:temp temp.mod.type run function ui:tmw/272/common/value/get_simple_value with storage ui:tmw272 temp
execute if data storage ui:temp temp.mod{type:"advance_value"} run function ui:tmw/272/common/value/get_advance_value with storage ui:tmw272 temp
scoreboard players operation $cost_act ui_temp = $tmw272_get_value ui_temp

#tellraw @a {"text":"a"}

#
scoreboard players reset $tmw272_get_value ui_temp

# mod
execute store result score $cost_mod ui_temp run data get storage ui:temp temp.mod.mod 1
execute unless score $cost_mod ui_temp matches 0 run scoreboard players operation $cost_act ui_temp %= $cost_mod ui_temp

# pow
execute store result score $cost_pow ui_temp run data get storage ui:temp temp.mod.pow
execute if score $cost_pow ui_temp matches 1.. run scoreboard players operation $cost_act_temp ui_temp = $cost_act ui_temp
execute if score $cost_pow ui_temp matches 1.. run scoreboard players remove $cost_pow ui_temp 1
execute if score $cost_pow ui_temp matches 1.. run function ui:tmw/272/common/check_cost/cost_type/new/2/pow

# mult
execute store result score $cost_mult ui_temp run data get storage ui:temp temp.mod.mult 100
execute unless score $cost_mult ui_temp matches 0 run scoreboard players operation $cost_act ui_temp *= $cost_mult ui_temp
execute unless score $cost_mult ui_temp matches 0 run scoreboard players operation $cost_act ui_temp /= #100 ui_num

# add
execute store result score $cost_add ui_temp run data get storage ui:temp temp.mod.add 1
execute unless score $cost_add ui_temp matches 0 run scoreboard players operation $cost_act ui_temp += $cost_add ui_temp

# min-max
execute if data storage ui:temp temp.mod.min store result score $cost_min ui_temp run data get storage ui:temp temp.mod.min 1
execute if data storage ui:temp temp.mod.max store result score $cost_max ui_temp run data get storage ui:temp temp.mod.max 1

# 条件から外れていればダメ
execute unless data storage ui:temp temp.mod.mute if score $cost_min ui_temp matches -2147483648..2147483647 if score $cost_act ui_temp < $cost_min ui_temp run tellraw @s [{"text":"    条件が満たされていません","color":"gray"}]
execute if score $cost_min ui_temp matches -2147483648..2147483647 if score $cost_act ui_temp < $cost_min ui_temp run scoreboard players set $check_cost ui_temp 0
execute unless data storage ui:temp temp.mod.mute if score $cost_max ui_temp matches -2147483648..2147483647 if score $cost_act ui_temp > $cost_max ui_temp run tellraw @s [{"text":"    条件が満たされていません","color":"gray"}]
execute if score $cost_max ui_temp matches -2147483648..2147483647 if score $cost_act ui_temp > $cost_max ui_temp run scoreboard players set $check_cost ui_temp 0

tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":" cost: "},{"score":{"name": "$cost","objective": "ui_temp"}},{"text":"  cost_act: "},{"score":{"name": "$cost_act","objective": "ui_temp"}}]

#
scoreboard players reset $cost_act_temp ui_temp
scoreboard players reset $cost_min ui_temp
scoreboard players reset $cost_max ui_temp
scoreboard players reset $cost_mod ui_temp
scoreboard players reset $cost_pow ui_temp
scoreboard players reset $cost_mult ui_temp
scoreboard players reset $cost_add ui_temp

data remove storage ui:tmw272 temp

# まだあるなら - 次のエフェクトに移動
scoreboard players reset $cost_act_temp ui_temp
data remove storage ui:temp temp.mod
data remove storage ui:temp temp.mods[0]
scoreboard players remove $cost_count ui_temp 1
execute if score $cost_count ui_temp matches 1.. run function ui:tmw/272/common/check_cost/cost_type/new/2/burn