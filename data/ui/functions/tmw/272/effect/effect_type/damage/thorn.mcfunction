data merge storage ui:tmw272 {temp:{input:"thorn"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text":"！"}]

scoreboard players operation @e[tag=ui_temp_player] ui_tmw272_health -= @s ui_tmw272_thorn

particle crit ~ ~0.9 ~ 0.3 0.3 0.3 1 10 force
playsound entity.player.hurt player @a ~ ~ ~ 1 1 0
playsound enchant.thorns.hit player @a ~ ~ ~ 1 1 0

data merge storage ui:tmw272 {temp:{input:"health"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@e[tag=ui_temp_player]"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"score":{"name":"@e[tag=ui_temp_player,limit=1]","objective":"ui_tmw272_thorn"}},{"text":"になった！"}]