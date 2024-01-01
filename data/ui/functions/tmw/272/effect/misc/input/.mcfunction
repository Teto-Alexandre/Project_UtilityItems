#compoundでtypeとnameを入れると取得

scoreboard players add $tmw272_stack_depth ui_temp 1

#
execute unless data storage ui:tmw272 temp.type run function ui:tmw/272/common/value/get_simple_value with storage ui:tmw272 temp
execute if data storage ui:tmw272 temp{type:"advance_value"} run function ui:tmw/272/common/value/get_advance_value with storage ui:tmw272 temp

# 得た値をセーブ
execute store result storage ui:tmw272 temp.get_value int 1 run scoreboard players get $tmw272_get_value ui_temp
scoreboard players reset $tmw272_get_value ui_temp


# 割り込み処理をかける ui:tmw272 temp を ui:tmw272 stack に移動する
data modify storage ui:tmw272 stack set from storage ui:tmw272 temp
execute if data storage ui:tmw272 stack.add.name run data modify storage ui:tmw272 stack.add.input set from storage ui:tmw272 stack.add.name
execute if data storage ui:tmw272 stack.add.input run data modify storage ui:tmw272 temp set from storage ui:tmw272 stack.add
execute if data storage ui:tmw272 stack.add.input run function ui:tmw/272/effect/misc/input/
execute if data storage ui:tmw272 stack.add.input store result storage ui:tmw272 temp.add int 1 run scoreboard players get $input_act ui_temp

#
data modify storage ui:tmw272 temp set from storage ui:tmw272 stack


# input_act
execute store result score $input_act ui_temp run data get storage ui:tmw272 temp.get_value 1

# mod
execute store result score $input_mod ui_temp run data get storage ui:tmw272 temp.mod 1
execute unless score $input_mod ui_temp matches 0 run scoreboard players operation $input_act ui_temp %= $input_mod ui_temp

# pow
execute store result score $input_pow ui_temp run data get storage ui:tmw272 temp.pow
execute if score $input_pow ui_temp matches 2.. run scoreboard players operation $input_act_temp ui_temp = $input_act ui_temp
execute if score $input_pow ui_temp matches 2.. run scoreboard players remove $input_pow ui_temp 1
execute if score $input_pow ui_temp matches 1.. run function ui:tmw/272/effect/misc/input/pow

# mult
execute store result score $input_mult ui_temp run data get storage ui:tmw272 temp.mult 100
execute unless score $input_mult ui_temp matches 0 run scoreboard players operation $input_act ui_temp *= $input_mult ui_temp
execute unless score $input_mult ui_temp matches 0 run scoreboard players operation $input_act ui_temp /= #100 ui_num

# add
execute store result score $input_add ui_temp run data get storage ui:tmw272 temp.add 1
execute unless score $input_add ui_temp matches 0 run scoreboard players operation $input_act ui_temp += $input_add ui_temp

# min max
execute if data storage ui:tmw272 temp.min store result score $input_min ui_temp run data get storage ui:tmw272 temp.min
execute if data storage ui:tmw272 temp.max store result score $input_max ui_temp run data get storage ui:tmw272 temp.max
execute if data storage ui:tmw272 temp.min run scoreboard players operation $input_act ui_temp > $input_min ui_temp
execute if data storage ui:tmw272 temp.max run scoreboard players operation $input_act ui_temp < $input_max ui_temp

tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":" cost: "},{"score":{"name": "$input","objective": "ui_temp"}},{"text":"  input_act: "},{"score":{"name": "$input_act","objective": "ui_temp"}}]


#scoreboard players reset $input_act ui_temp

#
scoreboard players remove $tmw272_stack_depth ui_temp 1
scoreboard players reset $tmw272_get_value ui_temp

#
scoreboard players reset $input_act_temp ui_temp
scoreboard players reset $input_mod ui_temp
scoreboard players reset $input_pow ui_temp
scoreboard players reset $input_mult ui_temp
scoreboard players reset $input_add ui_temp
scoreboard players reset $input_min ui_temp
scoreboard players reset $input_max ui_temp

data remove storage ui:tmw272 temp
execute if score $tmw272_stack_depth ui_temp matches 0 run data remove storage ui:tmw272 stack