scoreboard players operation @s ui_tmw272_health += @s ui_tmw272_blessing

data merge storage ui:tmw272 {temp:{input:"blessing"}}
function ui:tmw/272/common/inport_text

tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "回復！"}]