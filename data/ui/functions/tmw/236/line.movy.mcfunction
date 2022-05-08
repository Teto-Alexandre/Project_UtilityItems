# 予測線ジェネレーター: swap

#埋まったら地上に出るまで0.1ずつ座標を上げていく

# 実践
    
# 座標軸移動
    execute store result entity @s Pos.[1] double 0.0001 run scoreboard players add $y2 ui_temp 1000
    execute at @s unless block ~ ~2 ~ #ui:nocol run scoreboard players set $x1 ui_temp 0
    execute at @s unless block ~ ~2 ~ #ui:nocol run scoreboard players set $z1 ui_temp 0

# 再帰
    execute at @s if block ~ ~ ~ #ui:nocol run function ui:tmw/236/line.g
    execute at @s if block ~ ~2 ~ #ui:nocol unless block ~ ~ ~ #ui:nocol run function ui:tmw/236/line.movy