data merge storage ui:tmw272 {temp:{input:"bleed"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

scoreboard players operation @s ui_tmw272_health -= @s ui_tmw272_bleed
tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"に"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "ダメージ！"}]

scoreboard players operation @s ui_tmw272_bleed *= #2 ui_num
scoreboard players operation @s ui_tmw272_bleed /= #3 ui_num
tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になった！"}]

particle block redstone_block ~ ~2 ~ 0.4 0 0.4 0 30 force
playsound entity.player.hurt player @a ~ ~ ~ 1 0.8 0