data merge storage ui:tmw272 {temp:{input:"shock"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

scoreboard players operation @s ui_tmw272_health -= @s ui_tmw272_shock
tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の体力が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "減少！"}]

scoreboard players operation @s ui_tmw272_mana -= @s ui_tmw272_shock
tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"のマナが"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "減少！"}]

scoreboard players set @s ui_tmw272_shock 0
tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が元に戻った！"}]

particle electric_spark ~ ~ ~ 0.3 0.3 0.3 1 16 force
particle dust 1 1 0 1 ~ ~ ~ 0.5 0.5 0.5 1 8 force
playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 2 0