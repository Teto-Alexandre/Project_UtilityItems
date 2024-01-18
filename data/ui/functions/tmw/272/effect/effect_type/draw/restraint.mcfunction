# 束縛によるドロー効果への妨害
scoreboard players operation @s ui_tmw272_health = @s ui_tmw272_restraint
scoreboard players remove @s ui_tmw272_restraint 1

data merge storage ui:tmw272 {temp:{input:"restraint"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute if score $var_temp ui_temp matches ..0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text":"になった！"}]
execute if score $var_temp ui_temp matches 1.. run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"を解除した！"}]
