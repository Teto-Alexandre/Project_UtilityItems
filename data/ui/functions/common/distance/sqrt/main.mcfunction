# スコア化
execute store result score $input ui_temp run data get storage ui:common input.Var

scoreboard players operation $result ui_temp = $input ui_temp
scoreboard players set $temp ui_temp 1

execute if score $result ui_temp > $temp ui_temp run function ui:common/distance/sqrt/lp

#tellraw @a {"score":{"name":"$result","objective":"ui_temp"}}