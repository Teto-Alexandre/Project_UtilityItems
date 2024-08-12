scoreboard players operation @s ui_tmw272_health = @s ui_tmw272_lethal_range
scoreboard players add @s ui_tmw272_health 1

execute at @s run playsound item.totem.use player @a ~ ~ ~ 1 1 0
execute at @s run particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.2 20 force

data merge storage ui:tmw272 {temp:{input:"undying"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"は"},{"text": "死を回避した！ "},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true},{"text": ":"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]

scoreboard players add @s ui_tmw272_undying_count 1

data merge storage ui:tmw272 {temp:{input:"undying_count"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になった！"}]