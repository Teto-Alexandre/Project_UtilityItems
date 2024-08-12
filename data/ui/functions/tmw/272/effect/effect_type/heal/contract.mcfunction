# 命約
scoreboard players remove @s ui_tmw272_contract 1
execute if score @s ui_tmw272_contract matches ..0 run scoreboard players set @s ui_tmw272_contract 0

data modify storage ui:temp temp.effect.effect_type set value "heal_contract"

data merge storage ui:tmw272 {temp:{input:"contract"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:tmw272 temp.mute run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"によって回復ができない！"}]
execute unless data storage ui:tmw272 temp.mute run execute if score @s ui_tmw272_contract matches 1.. run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute run execute if score @s ui_tmw272_contract matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"を解除した！"}]
