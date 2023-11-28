scoreboard players operation #poison ui_temp = @s ui_tmw272_health
scoreboard players operation #poison ui_temp /= #20 ui_num
scoreboard players add #poison ui_temp 1
scoreboard players operation @s ui_tmw272_health -= #poison ui_temp
particle block green_concrete ~ ~2 ~ 0.4 0 0.4 0 30 force
playsound block.brewing_stand.brew player @a ~ ~ ~ 1 0.5 0

data merge storage ui:tmw272 {temp:{input:"poison"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"に"},{"score":{"name": "#poison","objective": "ui_temp"}},{"text": "ダメージ！"}]

scoreboard players remove @s ui_tmw272_poison 1

tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になった！"}]

scoreboard players reset #poison ui_temp
