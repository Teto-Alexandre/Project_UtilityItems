scoreboard players operation @s ui_tmw272_health += @s ui_tmw272_regeneration

data merge storage ui:tmw272 {temp:{input:"regeneration"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute unless entity @s[tag=mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "回復！"}]

scoreboard players remove @s ui_tmw272_regeneration 1

execute unless entity @s[tag=mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になった！"}]