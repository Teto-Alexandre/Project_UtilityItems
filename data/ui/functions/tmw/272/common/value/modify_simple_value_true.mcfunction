# 数値を入れる
$scoreboard players reset $this_is_dummy_player ui_tmw272_$(input)

## 固定値モード
$execute if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_$(input) = $var ui_temp
## 加算モード
$execute unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_$(input) += $var ui_temp

## 下限0
$execute if data storage ui:temp temp.effect.limit_zero run scoreboard players operation @s ui_tmw272_$(input) > #0 ui_num

## ここでプリセットからtempに数値を持ってくるfunctionを作るべき、get_valueも同じのを使う
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
## 下は例外以外を全部共通化する
execute if score $success_modify_simple_value ui_temp matches 1 unless data storage ui:tmw272 temp.mute run tellraw @a[tag=ui_temp_players] ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}     },{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text":"になった！"}]
