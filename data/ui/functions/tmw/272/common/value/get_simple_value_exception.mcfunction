# 汎用例外処理
execute if data storage ui:tmw272 temp{input:"var"} run scoreboard players operation $tmw272_get_value ui_temp = $var ui_temp
execute if data storage ui:tmw272 temp{input:"rand"} run scoreboard players operation $tmw272_get_value ui_temp = $rand ui_temp
execute if data storage ui:tmw272 temp{input:"hand_num"} run execute store result score $tmw272_get_value ui_temp run data get entity @s Inventory
execute if data storage ui:tmw272 temp{input:"turn_count"} run scoreboard players operation $tmw272_get_value ui_temp = @e[tag=tmw272_active_match] ui_tmw272_match_round
execute if data storage ui:tmw272 temp{input:"true_turn_count"} run scoreboard players operation $tmw272_get_value ui_temp = @e[tag=tmw272_active_match] ui_tmw272_true_match_round
execute if data storage ui:tmw272 temp{input:"repeat"} run execute store result score $tmw272_get_value ui_temp run data get storage ui:temp temp.card.repeat
execute if data storage ui:tmw272 temp{input:"condition"} run scoreboard players operation $tmw272_get_value ui_temp = $condition_checker ui_temp

## ここでプリセットからtempに数値を持ってくるfunctionを作るべき、modify_valueも同じのを使う
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
## 下は例外以外を全部共通化する
execute if score $success_modify_simple_value ui_temp matches 1 unless data storage ui:tmw272 temp.mute run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}     },{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
