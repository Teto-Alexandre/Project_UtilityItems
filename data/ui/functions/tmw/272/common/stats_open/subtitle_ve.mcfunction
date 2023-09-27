function ui:template/text_board/open

data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"VE Stats: ","color":"white"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"HP:","color":"red"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@e[tag=tmw272_visual_input,limit=1]","objective": "ui_tmw272_health"},"color":"red"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":", "}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"MP:","color":"aqua"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@e[tag=tmw272_visual_input,limit=1]","objective": "ui_tmw272_mana"},"color":"aqua"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"/","color":"aqua"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name": "@e[tag=tmw272_visual_input,limit=1]","objective": "ui_tmw272_mana_max"},"color":"aqua"}'

function ui:template/text_board/bro_subtitle
title @s times 0 10 0
title @s title {"text":""}

function ui:template/text_board/close