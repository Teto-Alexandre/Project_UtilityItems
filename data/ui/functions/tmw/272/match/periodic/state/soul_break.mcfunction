scoreboard players operation #soul_break ui_temp = @s ui_tmw272_health_max
scoreboard players operation #soul_break ui_temp *= @s ui_tmw272_soul_break
scoreboard players operation #soul_break ui_temp /= #100 ui_num
scoreboard players operation @s ui_tmw272_health -= #soul_break ui_temp
particle soul ~ ~ ~ 0 0 0 0.1 15 force
playsound block.beacon.deactivate player @a ~ ~ ~ 1 2 0

data merge storage ui:tmw272 {temp:{input:"soul_break"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"に"},{"score":{"name": "#soul_break","objective": "ui_temp"}},{"text": "ダメージ！"}]

scoreboard players reset #soul_break ui_temp
