#
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"---","color":"gray"}'
execute if score $rot ui_temp matches 0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"text":" S ","color":"aqua"}'
execute if score $rot ui_temp matches 9 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"text":" W ","color":"aqua"}'
execute if score $rot ui_temp matches 18 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"text":" N ","color":"aqua"}'
execute if score $rot ui_temp matches 27 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"text":" E ","color":"aqua"}'
#execute if predicate ui:percentage/80 if score $rot ui_temp matches 0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"text":" ● ","color":"dark_red"}'
#execute if predicate ui:percentage/80 if score $rot ui_temp matches 9 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"text":" ● ","color":"dark_red"}'
#execute if predicate ui:percentage/80 if score $rot ui_temp matches 18 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"text":" ● ","color":"dark_red"}'
#execute if predicate ui:percentage/80 if score $rot ui_temp matches 27 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"text":" ● ","color":"dark_red"}'
#execute if predicate ui:percentage/50 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore[-1] set value '{"text":"---","color":"red","obfuscated":true}'

scoreboard players add $rot ui_temp 1
execute if score $rot ui_temp matches 36 run scoreboard players set $rot ui_temp 0

scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. run function ui:tmw/501/19/battle/hud/id/2/actionbar