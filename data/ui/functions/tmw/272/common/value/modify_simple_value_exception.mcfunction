# 数値を入れる
## 固定値モード
execute if data storage ui:tmw272 temp{input:"var"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation $var ui_temp = $var ui_temp
execute if data storage ui:tmw272 temp{input:"rand"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation $rand ui_temp = $var ui_temp
execute if data storage ui:tmw272 temp{input:"turn_count"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @e[tag=tmw272_active_match] ui_tmw272_match_round = $var ui_temp
execute if data storage ui:tmw272 temp{input:"condition"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation $condition_checker ui_temp = $var ui_temp

## 加算モード
execute if data storage ui:tmw272 temp{input:"var"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation $var ui_temp += $var ui_temp
execute if data storage ui:tmw272 temp{input:"rand"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation $rand ui_temp += $var ui_temp
execute if data storage ui:tmw272 temp{input:"turn_count"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @e[tag=tmw272_active_match] ui_tmw272_match_round += $var ui_temp
execute if data storage ui:tmw272 temp{input:"condition"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation $condition_checker ui_temp += $var ui_temp

## ここでプリセットからtempに数値を持ってくるfunctionを作るべき、modify_valueも同じのを使う
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
## 下は例外以外を全部共通化する
execute if score $success_modify_simple_value ui_temp matches 1 unless data storage ui:tmw272 temp.mute run tellraw @a[tag=ui_temp_players] ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}     },{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text":"になった！"}]

# フィードバック
# execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"health"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"体力","color":"red"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_health"}},{"text":"になった！"}]