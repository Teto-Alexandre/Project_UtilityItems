# 射程計算
    scoreboard players remove $temp ui_temp 1

# 弾道表示
    particle dust 1 0 0 0.4 ~ ~ ~ 0 0 0 0 1 force @a[distance=..10]

# 実行位置を元に壁判定
    execute unless block ~ ~ ~ #ui:nocol run scoreboard players set $temp ui_temp 0
    execute if block ~ ~ ~ #ui:liq run scoreboard players set $temp ui_temp 0

#移動値が無くなるまで繰り返す
    execute if score $temp ui_temp matches 1.. positioned ^ ^ ^0.5 run function ui:tmw/235/proj/line.lp