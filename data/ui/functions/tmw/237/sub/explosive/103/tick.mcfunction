# クイックボム

# 常時実行
    
# 処理終了
    execute unless block ~ ~-0.1 ~ #ui:nocol run tag @s add ui_237_sub_explode
    execute unless block ~0.3 ~ ~ #ui:nocol run tag @s add ui_237_sub_explode
    execute unless block ~-0.3 ~ ~ #ui:nocol run tag @s add ui_237_sub_explode
    execute unless block ~ ~ ~0.3 #ui:nocol run tag @s add ui_237_sub_explode
    execute unless block ~ ~ ~-0.3 #ui:nocol run tag @s add ui_237_sub_explode
    execute unless block ~ ~0.5 ~ #ui:nocol run tag @s add ui_237_sub_explode
    execute if entity @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,dx=0,dy=0,dz=0] run tag @s add ui_237_sub_explode
    execute if score @s ui_uses matches 10.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/103/end