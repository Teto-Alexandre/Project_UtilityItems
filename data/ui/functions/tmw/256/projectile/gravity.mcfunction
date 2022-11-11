#重力加速度の疑似再現

# tickごと
    scoreboard players add @s ui_bcp 5
    execute if score @s ui_bpart matches 112 run scoreboard players remove @s ui_bcp 6
    execute if score @s ui_bpart matches 7 run scoreboard players remove @s ui_bcp 2
    execute if score @s ui_bpart matches 104 run scoreboard players remove @s ui_bcp 3
    execute if score @s ui_bpart matches 105 if score @s ui_is matches ..20 run scoreboard players remove @s ui_bcp 5
    scoreboard players operation $temp ui_bcp = @s ui_bcp

# 座標取得
    execute store result score $pos ui_bcp run data get entity @s Pos.[1] 100
    scoreboard players operation $temp ui_bcp *= #2 ui_num
    execute store result entity @s Pos.[1] double 0.01 run scoreboard players operation $pos ui_bcp -= $temp ui_bcp