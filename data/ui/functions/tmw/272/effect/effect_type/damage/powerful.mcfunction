# 無防備
data merge storage ui:tmw272 {temp:{input:"powerful"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
scoreboard players operation $temp_powerful ui_temp = #10 ui_num
scoreboard players operation $temp_powerful ui_temp += @s ui_tmw272_powerful
scoreboard players operation $var ui_temp *= $temp_powerful ui_temp
scoreboard players operation $var ui_temp /= #10 ui_num
execute unless data storage ui:temp temp.effect.mute2 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text":"！"}]

scoreboard players reset $temp_powerful ui_temp