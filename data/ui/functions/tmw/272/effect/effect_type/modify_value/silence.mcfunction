# 空腹を回復で解除する
data modify storage ui:temp temp.effect.effect_type set value "modify_value_silence"

data merge storage ui:tmw272 {temp:{input:"silence"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless entity @s[tag=tmw272_temp_card_effect_activated_silence] unless data storage ui:tmw272 temp.mute run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"している！"}]

tag @s add tmw272_temp_card_effect_activated_silence
