data merge storage ui:tmw272 {temp:{input:"fairy"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

scoreboard players operation @s ui_tmw272_health -= @s ui_tmw272_fairy
tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"に"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "ダメージ！"}]

particle dust 1 0.9 0 1 ~ ~ ~ 0.5 0.5 0.5 1 10 force
particle dust 1 0.7 0 1 ~ ~ ~ 0.5 0.5 0.5 1 10 force
playsound minecraft:item.totem.use player @a ~ ~ ~ 2 1.8 0