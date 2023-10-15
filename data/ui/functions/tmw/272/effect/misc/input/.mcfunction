#compoundでtypeとnameを入れると取得

#
data modify storage ui:tmw272 temp.input set from storage ui:temp temp.effect.var_input.name
execute if data storage ui:temp temp.effect.var_input.mute run data modify storage ui:tmw272 temp.mute set value 1

#
execute unless data storage ui:temp temp.effect.var_input.type run function ui:tmw/272/common/get_simple_value
execute if data storage ui:temp temp.effect.var_input{type:"advance_value"} run function ui:tmw/272/common/get_advance_value

scoreboard players operation $input_act ui_temp = $tmw272_get_value ui_temp

#
scoreboard players reset $tmw272_get_value ui_temp



# mod
execute store result score $input_mod ui_temp run data get storage ui:temp temp.effect.var_input.mod 1
execute unless score $input_mod ui_temp matches 0 run scoreboard players operation $input_act ui_temp %= $input_mod ui_temp

# pow
execute store result score $input_pow ui_temp run data get storage ui:temp temp.effect.var_input.pow
execute if score $input_pow ui_temp matches 2.. run scoreboard players operation $input_act_temp ui_temp = $input_act ui_temp
execute if score $input_pow ui_temp matches 2.. run scoreboard players remove $input_pow ui_temp 1
execute if score $input_pow ui_temp matches 1.. run function ui:tmw/272/effect/misc/input/pow

# mult
execute store result score $input_mult ui_temp run data get storage ui:temp temp.effect.var_input.mult 100
execute unless score $input_mult ui_temp matches 0 run scoreboard players operation $input_act ui_temp *= $input_mult ui_temp
execute unless score $input_mult ui_temp matches 0 run scoreboard players operation $input_act ui_temp /= #100 ui_num

# add
execute store result score $input_add ui_temp run data get storage ui:temp temp.effect.var_input.add 1
execute unless score $input_add ui_temp matches 0 run scoreboard players operation $input_act ui_temp += $input_add ui_temp

tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":" cost: "},{"score":{"name": "$input","objective": "ui_temp"}},{"text":"  input_act: "},{"score":{"name": "$input_act","objective": "ui_temp"}}]



#
##execute if data storage ui:temp temp.effect.input.to_var run scoreboard players operation $var ui_temp = $input_act ui_temp
scoreboard players operation $var ui_temp = $input_act ui_temp
scoreboard players reset $input_act ui_temp

#
scoreboard players reset $tmw272_get_value ui_temp

#
scoreboard players reset $input_act_temp ui_temp
scoreboard players reset $input_mod ui_temp
scoreboard players reset $input_pow ui_temp
scoreboard players reset $input_mult ui_temp
scoreboard players reset $input_add ui_temp

# まだあるなら - 次のエフェクトに移動
data remove storage ui:temp temp.mod

#tellraw @a {"text":"d"}
