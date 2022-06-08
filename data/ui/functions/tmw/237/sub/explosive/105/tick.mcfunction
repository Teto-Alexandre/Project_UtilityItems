# レンバクボム

# 常時実行
    
# 処理終了
    execute if score @s ui_uses matches 20 run function ui:tmw/237/sub/explosive/105/explode
    execute if score @s ui_uses matches 40 run function ui:tmw/237/sub/explosive/105/explode
    execute if score @s ui_uses matches 80.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/105/end