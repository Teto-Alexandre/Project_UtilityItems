scoreboard players operation @s ui_tmw272_health -= #1 ui_num
particle block blue_ice ~ ~ ~ 0.5 0.5 0.5 1 10 force
particle dust 0 1 1 1 ~ ~ ~ 0.5 0.5 0.5 1 10 force
playsound block.glass.break player @a ~ ~ ~ 1 2 0

data merge storage ui:tmw272 {temp:{input:"freeze"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"に"},{"score":{"name": "#1","objective": "ui_num"}},{"text": "ダメージ！"}]

scoreboard players remove @s ui_tmw272_freeze 1

tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になった！"}]
