# 鈍足によるドロー効果への妨害
scoreboard players operation $var_temp ui_temp -= @s ui_tmw272_slowness
execute if score $var_temp ui_temp matches ..0 run scoreboard players operation @s ui_tmw272_slowness = $var_temp ui_temp
execute if score $var_temp ui_temp matches ..0 run scoreboard players operation @s ui_tmw272_slowness *= #-1 ui_num
execute if score $var_temp ui_temp matches ..0 run scoreboard players set $var_temp ui_temp 0
execute if score $var_temp ui_temp matches 1.. run scoreboard players set @s ui_tmw272_slowness 0

data merge storage ui:tmw272 {temp:{input:"slowness"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute if score $var_temp ui_temp matches ..0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text":"になった！"}]
execute if score $var_temp ui_temp matches 1.. run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"を解除した！"}]
