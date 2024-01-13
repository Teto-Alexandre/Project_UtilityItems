scoreboard players set $mod ui_calc1 100
function ui:common/rand
execute if score $rand ui_calc1 < @s ui_tmw272_soul run particle dust 0 1 1 2 ~ ~0.9 ~ 0.5 0.5 0.5 0 10 force
execute if score $rand ui_calc1 < @s ui_tmw272_soul run playsound entity.chicken.egg player @a ~ ~ ~ 1.5 0.5 0
execute if score $rand ui_calc1 < @s ui_tmw272_soul run scoreboard players add @s ui_tmw272_mana_max 1

data merge storage ui:tmw272 {temp:{input:"soul"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute unless entity @s[tag=mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "！"}]
execute unless entity @s[tag=mute_value] run execute if score $rand ui_calc1 < @s ui_tmw272_soul run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"のマナが増加した！"}]
