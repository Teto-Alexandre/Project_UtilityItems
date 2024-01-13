scoreboard players operation @s ui_tmw272_shield_next += @s ui_tmw272_resistance
particle block iron_bars ~ ~2 ~ 0.4 0 0.4 0 30 force
playsound item.armor.equip_chain player @a ~ ~ ~ 1 1 0
playsound item.armor.equip_chain player @a ~ ~ ~ 1 0.5 0

data merge storage ui:tmw272 {temp:{input:"resistance"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute unless entity @s[tag=mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"のシールドが"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "増加した！"}]

scoreboard players remove @s ui_tmw272_resistance 1

execute unless entity @s[tag=mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になった！"}]