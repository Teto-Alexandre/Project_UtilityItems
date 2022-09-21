# 2.横列n-way拡散

# 加速係数をリセット
    scoreboard players set $speed.add ui_temp 0

# 発射数と拡散度から始動位置を逆算、一発ごとの間隔のデータはspreadを流用（*0.1°）
    summon minecraft:marker ^ ^ ^ {Tags:["ui","ui_marker"]}
    scoreboard players operation $temp ui_temp = $multishot ui_temp
    scoreboard players operation $spread ui_temp > #0 ui_num
    scoreboard players operation $temp ui_temp *= $spread ui_temp
    scoreboard players operation $temp ui_temp /= #3 ui_num
    execute store result score $rotation ui_temp run data get entity @s Rotation.[1] 10
    scoreboard players operation $rotation ui_temp += $temp ui_temp
    execute if score $rotation ui_temp matches ..-991 run scoreboard players set $rotation ui_temp -900
    execute if score $rotation ui_temp matches 901.. run scoreboard players set $rotation ui_temp 900
    # -900 ~ 900 完全
    execute as @e[tag=ui_marker] store result entity @s Rotation[0] float 1 run data get entity @p Rotation.[0]
    execute as @e[tag=ui_marker] store result entity @s Rotation[1] float 0.1 run scoreboard players get $rotation ui_temp

# マーカーを対象にして展開
    execute at @e[tag=ui_marker] run function ui:tmw/237/attack/shot/spreadmanager/3.2

# マーカーを削除
    kill @e[tag=ui_marker]