#重力加速度の疑似再現

# 座標取得
    execute store result score $pos ui_bcp run data get entity @s Pos.[1] 100
    scoreboard players operation $temp ui_bcp *= #10 ui_num
    execute store result entity @s Pos.[1] double 0.01 run scoreboard players operation $pos ui_bcp -= $temp ui_bcp