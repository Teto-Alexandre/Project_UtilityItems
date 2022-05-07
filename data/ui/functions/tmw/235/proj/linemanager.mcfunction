# 最大射程
    scoreboard players operation $temp ui_temp = @s ui_br

# 描画
    execute if score $temp ui_temp matches 1.. run function ui:tmw/235/proj/line.lp

# タグ
    tag @s add ui_lined