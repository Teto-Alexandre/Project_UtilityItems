# 数値を入れる
$scoreboard players reset $this_is_dummy_player ui_tmw272_$(input)

$scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_$(input)

## ここでプリセットからtempに数値を持ってくるfunctionを作るべき、modify_valueも同じのを使う
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
## 下は例外以外を全部共通化する
execute if score $success_modify_simple_value ui_temp matches 1 unless data storage ui:tmw272 temp.mute run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}     },{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
