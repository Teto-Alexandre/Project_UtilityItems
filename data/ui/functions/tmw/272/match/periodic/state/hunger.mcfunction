scoreboard players operation @s ui_tmw272_health -= @s ui_tmw272_hunger
particle block sand ~ ~2 ~ 0.4 0 0.4 0 30 force
playsound block.sand.break player @a ~ ~ ~ 1 0.8 0

data merge storage ui:tmw272 {temp:{input:"hunger"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute unless entity @s[tag=tmw272_mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"に"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "ダメージ！"}]