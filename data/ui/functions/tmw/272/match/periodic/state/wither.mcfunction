scoreboard players operation #wither ui_temp = @s ui_tmw272_health
scoreboard players operation #wither ui_temp /= #20 ui_num
scoreboard players operation #wither ui_temp += @s ui_tmw272_wither
scoreboard players operation @s ui_tmw272_health -= #wither ui_temp
particle block black_concrete ~ ~2 ~ 0.4 0 0.4 0 30 force
playsound entity.wither.shoot player @a ~ ~ ~ 1 2 0

data merge storage ui:tmw272 {temp:{input:"wither"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute unless entity @s[tag=mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"に"},{"score":{"name": "#wither","objective": "ui_temp"}},{"text": "ダメージ！"}]

scoreboard players remove @s ui_tmw272_wither 1

execute unless entity @s[tag=mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になった！"}]

scoreboard players reset #wither ui_temp
