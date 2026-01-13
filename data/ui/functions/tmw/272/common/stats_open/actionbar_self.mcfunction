function oh_my_dat:please

data remove storage ui:tmw272_text temp_1
data remove storage ui:tmw272_text temp_2

data merge storage ui:tmw272 {temp:{input:"null"}}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.actionbar_value_you run data modify storage ui:tmw272 temp.input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.actionbar_value_you
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless score $success_modify_simple_value ui_temp matches 0 run data modify storage ui:tmw272_text temp_1 set from storage ui:tmw272_text temp
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.actionbar_value_target run data modify storage ui:tmw272 temp.input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.actionbar_value_target
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless score $success_modify_simple_value ui_temp matches 0 run data modify storage ui:tmw272_text temp_2 set from storage ui:tmw272_text temp

function ui:template/text_board/open

data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"You: ","color":"white"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"HP:","color":"red"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@s","objective": "ui_tmw272_health"},"color":"red"}'

execute unless score @s ui_tmw272_health_limit matches 999 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"/","color":"red"}'
execute unless score @s ui_tmw272_health_limit matches 999 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@s","objective": "ui_tmw272_health_limit"},"color":"red"}'

execute unless score @s ui_tmw272_lethal_range matches 0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"☠","color":"dark_red"}'
execute unless score @s ui_tmw272_lethal_range matches 0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@s","objective": "ui_tmw272_lethal_range"},"color":"dark_red"}'

execute if score @s ui_tmw272_invulnerable matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"🛡","color":"yellow"}'
execute if score @s ui_tmw272_shield matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"🛡","color":"aqua"}'
execute if score @s ui_tmw272_shield matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@s","objective": "ui_tmw272_shield"},"color":"aqua"}'

execute if score @s ui_tmw272_undying matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"✢","color":"#99ff66"}'
execute if score @s ui_tmw272_determination matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"✦","color":"yellow"}'

data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":", ","color":"white"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"MP:","color":"aqua"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@s","objective": "ui_tmw272_mana"},"color":"aqua"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"/","color":"aqua"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@s","objective": "ui_tmw272_mana_max"},"color":"aqua"}'

execute if data storage ui:tmw272_text temp_1 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":", ","color":"gray"}'
#execute if data storage ui:tmw272_text temp_1 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"storage":"ui:tmw272_text","nbt":"temp_1.name","interpret":true}'
#execute if data storage ui:tmw272_text temp_1 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":":","color":"gray"}'
execute if data storage ui:tmw272_text temp_1 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"storage":"ui:tmw272_text","nbt":"temp_1.score_with_color","interpret":true}'

execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":" - Target: ","color":"white"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"HP:","color":"red"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@e[tag=tmw272_visual_input,limit=1]","objective": "ui_tmw272_health"},"color":"red"}'
execute unless score @e[tag=tmw272_visual_input,limit=1] ui_tmw272_health_limit matches 999 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"/","color":"red"}'
execute unless score @e[tag=tmw272_visual_input,limit=1] ui_tmw272_health_limit matches 999 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@e[tag=tmw272_visual_input,limit=1]","objective": "ui_tmw272_health_limit"},"color":"red"}'
execute unless score @e[tag=tmw272_visual_input,limit=1] ui_tmw272_lethal_range matches 0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"☠","color":"dark_red"}'
execute unless score @e[tag=tmw272_visual_input,limit=1] ui_tmw272_lethal_range matches 0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@e[tag=tmw272_visual_input,limit=1]","objective": "ui_tmw272_lethal_range"},"color":"dark_red"}'
execute if score @e[tag=tmw272_visual_input,limit=1] ui_tmw272_invulnerable matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"🛡","color":"yellow"}'
execute if score @e[tag=tmw272_visual_input,limit=1] ui_tmw272_shield matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"🛡","color":"aqua"}'
execute if score @e[tag=tmw272_visual_input,limit=1] ui_tmw272_shield matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@e[tag=tmw272_visual_input,limit=1]","objective": "ui_tmw272_shield"},"color":"aqua"}'
execute if score @e[tag=tmw272_visual_input,limit=1] ui_tmw272_undying matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"✢","color":"#99ff66"}'
execute if score @e[tag=tmw272_visual_input,limit=1] ui_tmw272_determination matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"✦","color":"yellow"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":", ","color":"white"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"MP:","color":"aqua"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@e[tag=tmw272_visual_input,limit=1]","objective": "ui_tmw272_mana"},"color":"aqua"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"/","color":"aqua"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@e[tag=tmw272_visual_input,limit=1]","objective": "ui_tmw272_mana_max"},"color":"aqua"}'

execute if entity @e[tag=tmw272_visual_input,limit=1] run execute if data storage ui:tmw272_text temp_2 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":", ","color":"gray"}'
#execute if entity @e[tag=tmw272_visual_input,limit=1] run execute if data storage ui:tmw272_text temp_2 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"storage":"ui:tmw272_text","nbt":"temp_2.name","interpret":true}'
#execute if entity @e[tag=tmw272_visual_input,limit=1] run execute if data storage ui:tmw272_text temp_2 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":":","color":"gray"}'
execute if entity @e[tag=tmw272_visual_input,limit=1] run execute if data storage ui:tmw272_text temp_2 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"storage":"ui:tmw272_text","nbt":"temp_2.target_score_with_color","interpret":true}'

function ui:template/text_board/bro_actionbar_cg

function ui:template/text_board/close