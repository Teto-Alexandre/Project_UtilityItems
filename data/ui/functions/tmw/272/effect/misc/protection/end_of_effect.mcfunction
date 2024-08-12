data merge storage ui:tmw272 {temp:{input:"protection"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

scoreboard players remove @s ui_tmw272_protection 1
execute if score @s ui_tmw272_protection matches 1.. run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text":"になった！"}]
execute if score @s ui_tmw272_protection matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が砕けた！"}]

particle crit ~ ~ ~ 0.5 0.5 0.5 1 20 force
playsound item.shield.block player @a ~ ~ ~ 1 1.5 0

tag @s remove tmw272_temp_card_effect_activated_protection