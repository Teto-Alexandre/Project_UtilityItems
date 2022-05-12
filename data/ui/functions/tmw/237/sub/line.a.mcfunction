# 予測線ジェネレーター: 空中用

#加速度 m/tick^2        0.0392
#抵抗力 m/tick          0.02
#最終到達速度 m/tick    1.96

#投げられた物体や矢をシミュレートすると、抵抗力は加速のあとではなく前に適用されることに注意してほしい。これが他のものが小数点以下の数字があるのに、最終到達速度がちょうど整数値になる理由である。
    #scoreboard players operation $x3 ui_temp /= $x2 ui_temp
    #scoreboard players operation $y3 ui_temp += #num ui_temp
    #scoreboard players operation $y3 ui_temp /= $y2 ui_temp
    #scoreboard players operation $z3 ui_temp /= $z2 ui_temp
#↑の計算結果が全て98になるように

# 軌道
    execute if score $visible ui_temp matches 1 run particle dust 1 0 0 0.7 ~ ~ ~ 0 0 0 0 1 force @a[tag=ui_temp]
    execute if score $visible ui_temp matches 2 run particle dust 1 0.5 0 0.7 ~ ~ ~ 0 0 0 0 1 force @a[nbt={Inventory:[{tag:{tmw:{id:10,type:6}}}]}]

# 実践
    scoreboard players operation $x1 ui_temp *= #98 ui_num
    scoreboard players operation $x1 ui_temp /= #100 ui_num
    scoreboard players operation $y1 ui_temp -= #392 ui_num
    scoreboard players operation $y1 ui_temp *= #98 ui_num
    scoreboard players operation $y1 ui_temp /= #100 ui_num
    scoreboard players operation $z1 ui_temp *= #98 ui_num
    scoreboard players operation $z1 ui_temp /= #100 ui_num
    
# 座標軸移動
    execute store result entity @s Pos.[0] double 0.0001 run scoreboard players operation $x2 ui_temp += $x1 ui_temp
    execute store result entity @s Pos.[1] double 0.0001 run scoreboard players operation $y2 ui_temp += $y1 ui_temp
    execute store result entity @s Pos.[2] double 0.0001 run scoreboard players operation $z2 ui_temp += $z1 ui_temp

# 再帰
    scoreboard players remove $temp ui_temp 1
    #tellraw @a [{"text":"[Snowball]","color":"aqua"},{"text":": x1","color":"gray"},{"score":{"name":"$x1","objective":"temp"}},{"text":", y1","color":"gray"},{"score":{"name":"$y1","objective":"temp"}},{"text":", z1","color":"gray"},{"score":{"name":"$z1","objective":"temp"}}]
    execute at @s if score $temp ui_temp matches 1.. if block ~ ~-0.1 ~ #ui:nocol run function ui:tmw/236/line.a
    execute at @s if score $temp ui_temp matches 1.. unless block ~ ~-0.1 ~ #ui:nocol run function ui:tmw/236/line.movy
    execute at @s if score $temp ui_temp matches 0 run function ui:tmw/236/rotmanager
    execute at @s if score $visible ui_temp matches 1 if score $temp ui_temp matches 0 if score $temp2 ui_temp matches 1 run function ui:tmw/236/rad6
    execute at @s if score $visible ui_temp matches 1 if score $temp ui_temp matches 0 if score $temp2 ui_temp matches 2 run function ui:tmw/236/rad10
    execute at @s if score $visible ui_temp matches 1 if score $temp ui_temp matches 0 if score $temp2 ui_temp matches 3 run function ui:tmw/236/rad8
    execute at @s if score $visible ui_temp matches 1 if score $temp ui_temp matches 0 if score $temp2 ui_temp matches 5 run function ui:tmw/236/rad5
    execute at @s if score $visible ui_temp matches 1 if score $temp ui_temp matches 0 if score $temp2 ui_temp matches 6 run function ui:tmw/236/rad6
    execute at @s if score $visible ui_temp matches 2 if score $temp ui_temp matches 0 if score $temp2 ui_temp matches 1 run function ui:tmw/236/rad6.2
    execute at @s if score $visible ui_temp matches 2 if score $temp ui_temp matches 0 if score $temp2 ui_temp matches 2 run function ui:tmw/236/rad10.2
    execute at @s if score $visible ui_temp matches 2 if score $temp ui_temp matches 0 if score $temp2 ui_temp matches 3 run function ui:tmw/236/rad8.2
    execute at @s if score $visible ui_temp matches 2 if score $temp ui_temp matches 0 if score $temp2 ui_temp matches 5 run function ui:tmw/236/rad5.2
    execute at @s if score $visible ui_temp matches 2 if score $temp ui_temp matches 0 if score $temp2 ui_temp matches 6 run function ui:tmw/236/rad6.2