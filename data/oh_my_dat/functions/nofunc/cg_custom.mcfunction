data modify storage ui:tmw272 temp set from storage cg_custom_nofunc: advanced_value[0]
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}     },{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text":"になった！"}]

data remove storage cg_custom_nofunc: advanced_value[0]
execute if data storage cg_custom_nofunc: advanced_value[0] run function oh_my_dat:nofunc/cg_custom