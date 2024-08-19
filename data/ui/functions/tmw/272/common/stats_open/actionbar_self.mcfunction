function oh_its_dat:please

function ui:template/text_board/open

data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"You: ","color":"white"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"HP:","color":"red"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@s","objective": "ui_tmw272_health"},"color":"red"}'

execute if score @s ui_tmw272_shield matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"🛡","color":"aqua"}'
execute if score @s ui_tmw272_shield matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@s","objective": "ui_tmw272_shield"},"color":"aqua"}'

data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":", "}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"MP:","color":"aqua"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@s","objective": "ui_tmw272_mana"},"color":"aqua"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"/","color":"aqua"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@s","objective": "ui_tmw272_mana_max"},"color":"aqua"}'

data merge storage ui:tmw272 {temp:{input:"health"}}
data modify storage ui:tmw272 temp.input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.actionbar_value_self
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
data modify storage ui:tmw272_text temp_1 set from storage ui:tmw272_text temp
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":", ","color":"gray"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":":","color":"gray"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}'

execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":" - Target: ","color":"white"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"HP:","color":"red"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@e[tag=tmw272_visual_input,limit=1]","objective": "ui_tmw272_health"},"color":"red"}'
execute if score @e[tag=tmw272_visual_input,limit=1] ui_tmw272_shield matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"🛡","color":"aqua"}'
execute if score @e[tag=tmw272_visual_input,limit=1] ui_tmw272_shield matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@e[tag=tmw272_visual_input,limit=1]","objective": "ui_tmw272_shield"},"color":"aqua"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":", "}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"MP:","color":"aqua"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@e[tag=tmw272_visual_input,limit=1]","objective": "ui_tmw272_mana"},"color":"aqua"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"/","color":"aqua"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@e[tag=tmw272_visual_input,limit=1]","objective": "ui_tmw272_mana_max"},"color":"aqua"}'

function ui:template/text_board/bro_actionbar

function ui:template/text_board/close