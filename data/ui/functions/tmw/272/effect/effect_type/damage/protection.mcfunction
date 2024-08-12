data merge storage ui:tmw272 {temp:{input:"protection"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute if score @s ui_tmw272_protection >= $var ui_temp unless data storage ui:temp temp.effect.mute2 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"されている！"}]
execute if score @s ui_tmw272_protection >= $var ui_temp run tag @s add tmw272_temp_card_effect_protection
execute if score @s ui_tmw272_protection >= $var ui_temp run tag @s remove tmw272_temp_card_effect_target