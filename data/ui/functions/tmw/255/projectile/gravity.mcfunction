#重力加速度の疑似再現

# tickごとに重力加速
    scoreboard players operation @s ui_bcp += @s ui_bg
    scoreboard players operation $temp ui_bcp = @s ui_bcp

# 座標取得
    execute store result score $pos ui_bcp run data get entity @s Pos.[1] 1000
    scoreboard players operation $temp ui_bcp *= #2 ui_num
    execute store result entity @s Pos.[1] double 0.001 run scoreboard players operation $pos ui_bcp -= $temp ui_bcp

# 速度減衰
    scoreboard players operation @s ui_bm *= @s ui_autohit
    scoreboard players operation @s ui_bm /= #100 ui_num