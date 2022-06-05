# クイックボム

# 常時実行
    
# 処理終了
    execute unless block ~ ~-0.1 ~ #ui:nocol run function ui:tmw/237/sub/explosive/103/end
    execute unless block ~0.3 ~ ~ #ui:nocol run function ui:tmw/237/sub/explosive/103/end
    execute unless block ~-0.3 ~ ~ #ui:nocol run function ui:tmw/237/sub/explosive/103/end
    execute unless block ~ ~ ~0.3 #ui:nocol run function ui:tmw/237/sub/explosive/103/end
    execute unless block ~ ~ ~-0.3 #ui:nocol run function ui:tmw/237/sub/explosive/103/end
    execute unless block ~ ~0.5 ~ #ui:nocol run function ui:tmw/237/sub/explosive/103/end
    execute if score @s ui_uses matches 5.. if entity @e[predicate=ui:load_unhurtable,dx=0,dy=0,dz=0] run function ui:tmw/237/sub/explosive/103/end
    execute if score @s ui_uses matches 10.. run function ui:tmw/237/sub/explosive/103/end