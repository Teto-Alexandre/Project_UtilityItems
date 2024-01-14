scoreboard players operation @s ui_tmw272_mana -= @s ui_tmw272_darkness
particle block sculk ~ ~2 ~ 0.4 0 0.4 0 30 force
playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 1 1 0

data merge storage ui:tmw272 {temp:{input:"darkness"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute unless entity @s[tag=tmw272_mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"のマナが"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "減少した！"}]

scoreboard players set @s ui_tmw272_darkness 0

execute unless entity @s[tag=tmw272_mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が元に戻った！"}]