# 状態をタイトルに表示

# MP残量
scoreboard players operation #calc1 ui_temp = @s ui_tmw601_4600_mp

# MP最大
scoreboard players operation #calc2 ui_temp = @s ui_tmw601_4600_mpmax
scoreboard players operation #calc2 ui_temp /= #100 ui_num
scoreboard players operation #calc2 ui_temp > #0 ui_num

scoreboard players operation #calc3 ui_temp = #calc1 ui_temp
scoreboard players operation #calc3 ui_temp /= #calc2 ui_temp

scoreboard players operation #calc1 ui_temp /= #100 ui_num
scoreboard players operation #calc1 ui_temp > #0 ui_num


# 時間設定
title @s times 0 5t 0

function ui:template/text_board/open

data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"MP:","color":"gray","bold":true,"italic":false}'
execute if score #calc3 ui_temp matches ..9 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"#calc1","objective":"ui_temp"},"color":"red"}'
execute if score #calc3 ui_temp matches 10..39 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"#calc1","objective":"ui_temp"},"color":"gold"}'
execute if score #calc3 ui_temp matches 40..69 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"#calc1","objective":"ui_temp"},"color":"yellow"}'
execute if score #calc3 ui_temp matches 70..99 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"#calc1","objective":"ui_temp"},"color":"green"}'
execute if score #calc3 ui_temp matches 100.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"#calc1","objective":"ui_temp"},"color":"aqua"}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"/","color":"gray","italic":false}'
data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"#calc2","objective":"ui_temp"},"color":"white"}'


function ui:template/text_board/bro_actionbar

function ui:template/text_board/close
