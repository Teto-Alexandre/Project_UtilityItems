scoreboard players operation @s ui_tmw272_karma < #100 ui_num

data merge storage ui:tmw272 {temp:{input:"karma"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute unless entity @s[tag=tmw272_mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "！"}]

scoreboard players set $mod ui_calc1 100
function ui:common/rand
execute if score $rand ui_calc1 < @s ui_tmw272_karma run particle dust 1 0 1 2 ~ ~0.9 ~ 0.5 0.5 0.5 0 10 force
execute if score $rand ui_calc1 < @s ui_tmw272_karma run playsound entity.generic.explode player @a ~ ~ ~ 1 2 0
execute unless entity @s[tag=tmw272_mute_value] run execute if score $rand ui_calc1 < @s ui_tmw272_karma run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"は業を積みすぎた！"}]
execute if score $rand ui_calc1 < @s ui_tmw272_karma run function ui:tmw/272/match/player/death
