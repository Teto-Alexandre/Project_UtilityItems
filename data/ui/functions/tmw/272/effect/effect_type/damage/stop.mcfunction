# 停止
data merge storage ui:tmw272 {temp:{input:"stop"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute if score @s[tag=!ui_temp_player] ui_tmw272_stop matches 1.. run scoreboard players operation $var_temp ui_temp /= #10 ui_num
execute if score @s[tag=!ui_temp_player] ui_tmw272_stop matches 1.. run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が攻撃を"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"した！ 度数:"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute if score @s[tag=!ui_temp_player] ui_tmw272_stop matches 1.. run scoreboard players remove @s ui_tmw272_stop 1
