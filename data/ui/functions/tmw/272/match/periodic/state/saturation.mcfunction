execute if score @s ui_tmw272_saturation matches 2..3 run scoreboard players add @s ui_tmw272_health 1
execute if score @s ui_tmw272_saturation matches 4.. run scoreboard players add @s ui_tmw272_health 2

function oh_my_dat:please
execute if score @s ui_tmw272_saturation matches 2..3 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems append value {tag:{tmw:{cg:{cost:{amount:0,bypass:1},not_consume:1b,effects:[{effect_type:"heal",var:1}]},enableQ:1,id:272,type:1}}}
execute if score @s ui_tmw272_saturation matches 4 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems append value {tag:{tmw:{cg:{cost:{amount:0,bypass:1},not_consume:1b,effects:[{effect_type:"heal",var:2}]},enableQ:1,id:272,type:1}}}

data merge storage ui:tmw272 {temp:{input:"saturation"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

scoreboard players remove @s ui_tmw272_saturation 4
execute if score @s ui_tmw272_saturation matches ..-1 run scoreboard players set @s ui_tmw272_saturation 0

execute unless entity @s[tag=tmw272_mute_value] run tellraw @a[tag=ui_temp_players] ["",{"storage":"ui:tmw272_text","nbt":"temp.title","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":": ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になった！"}]