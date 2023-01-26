#
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$Return","objective":"ui_temp"},"color":"yellow"}'
#execute if predicate ui:percentage/80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"score":{"name":"$en","objective":"ui_temp"},"color":"yellow","obfuscated":true}'
#execute if predicate ui:percentage/80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"score":{"name":"$en","objective":"ui_temp"},"color":"dark_red","obfuscated":true}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"               ","color":"white"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$s2","objective":"ui_temp"},"color":"aqua"}'
#execute if predicate ui:percentage/80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"score":{"name":"$s2","objective":"ui_temp"},"color":"aqua","obfuscated":true}'
#execute if predicate ui:percentage/80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"score":{"name":"$s2","objective":"ui_temp"},"color":"dark_red","obfuscated":true}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":":","color":"white"}'
#execute if predicate ui:percentage/80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"text":":","color":"white","obfuscated":true}'
#execute if predicate ui:percentage/80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"text":":","color":"dark_red","obfuscated":true}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$s1","objective":"ui_temp"},"color":"green"}'
#execute if predicate ui:percentage/80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"score":{"name":"$s1","objective":"ui_temp"},"color":"green","obfuscated":true}'
#execute if predicate ui:percentage/80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"score":{"name":"$s1","objective":"ui_temp"},"color":"dark_red","obfuscated":true}'
#execute if predicate ui:percentage/30 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore set value ['{"text":"- ERROR -","color":"dark_red"}']

#scoreboard players add $count ui_temp 1
#execute if score $count ui_temp matches 1.. run function ui:tmw/501/19/battle/hud/id/2/title
