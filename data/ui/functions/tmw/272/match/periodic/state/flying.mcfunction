scoreboard players remove @s ui_tmw272_flying 1

data merge storage ui:tmw272 {temp:{input:"flying"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になった！"}]