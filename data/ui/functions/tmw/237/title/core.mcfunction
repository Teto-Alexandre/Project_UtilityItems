# 状態をタイトルに表示

# インク残量
scoreboard players operation $ink.temp ui_temp = $ink ui_temp
scoreboard players operation $ink.temp ui_temp *= #100 ui_num
scoreboard players operation $ink.temp ui_temp /= $ink.max ui_temp
scoreboard players operation $sp.temp ui_temp = @s ui_paint
scoreboard players operation $sp.temp ui_temp *= #100 ui_num
scoreboard players operation $sp.temp ui_temp /= $spneed ui_temp

# タイトル表示

# 時間設定
title @s times 0 5 0

# サブタイトル
execute if score $ink.temp ui_temp matches 100 run function ui:tmw/237/title/10
execute if score $ink.temp ui_temp matches 90..99 run function ui:tmw/237/title/9
execute if score $ink.temp ui_temp matches 80..89 run function ui:tmw/237/title/8
execute if score $ink.temp ui_temp matches 70..79 run function ui:tmw/237/title/7
execute if score $ink.temp ui_temp matches 60..69 run function ui:tmw/237/title/6
execute if score $ink.temp ui_temp matches 50..59 run function ui:tmw/237/title/5
execute if score $ink.temp ui_temp matches 40..49 run function ui:tmw/237/title/4
execute if score $ink.temp ui_temp matches 30..39 run function ui:tmw/237/title/3
execute if score $ink.temp ui_temp matches 20..29 run function ui:tmw/237/title/2
execute if score $ink.temp ui_temp matches 10..19 run function ui:tmw/237/title/1
execute if score $ink.temp ui_temp matches 0..9 run function ui:tmw/237/title/0