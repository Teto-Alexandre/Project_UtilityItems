# 状態をタイトルに表示

# インク残量
scoreboard players operation #calc1 temp = @s CT1
scoreboard players operation #calc1 temp /= #20 ui_num
scoreboard players operation #calc1 temp > #0 ui_num

scoreboard players operation #calc2 temp = @s CT2
scoreboard players operation #calc2 temp /= #20 ui_num
scoreboard players operation #calc2 temp > #0 ui_num

scoreboard players operation #calc3 temp = @s CT3
scoreboard players operation #calc3 temp /= #20 ui_num
scoreboard players operation #calc3 temp > #0 ui_num

# 時間設定
title @s times 0 5 0

function ui:template/text_board/open

data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"CT1:","color":"gray","bold":true,"italic":false}'
execute if score @s CT1 matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"#calc1","objective":"temp"},"color":"red"}'
execute if score @s CT1 matches ..0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"#calc1","objective":"temp"},"color":"aqua"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"秒","color":"gray","italic":false}'

data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":", CT2:","color":"gray","bold":true,"italic":false}'
execute if score @s CT2 matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"#calc2","objective":"temp"},"color":"red"}'
execute if score @s CT2 matches ..0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"#calc2","objective":"temp"},"color":"aqua"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"秒","color":"gray","italic":false}'

data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":", CT3:","color":"gray","bold":true,"italic":false}'
execute if score @s CT3 matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"#calc3","objective":"temp"},"color":"red"}'
execute if score @s CT3 matches ..0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"#calc3","objective":"temp"},"color":"aqua"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"秒","color":"gray","italic":false}'


function ui:template/text_board/bro_actionbar

function ui:template/text_board/close
