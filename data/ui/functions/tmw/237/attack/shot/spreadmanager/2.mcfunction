# 2.横列n-way拡散

# 全体弾速決定
    scoreboard players operation $mod ui_calc1 = $speed.plus ui_temp
    execute if score $mod ui_calc1 matches 1.. run function ui:common/rand
    execute if score $mod ui_calc1 matches 1.. run scoreboard players operation $speed.add ui_temp = $rand ui_calc1

# 発射数と拡散度から始動位置を逆算、一発ごとの間隔のデータはspreadを流用（*0.1°）
    summon minecraft:marker ^ ^ ^ {Tags:["ui","ui_marker"]}
    scoreboard players operation $temp ui_temp = $multishot ui_temp
    scoreboard players remove $temp ui_temp 1
    scoreboard players operation $spread ui_temp > #0 ui_num
    scoreboard players operation $temp ui_temp *= $spread ui_temp
    scoreboard players operation $temp ui_temp /= #2 ui_num
    execute store result score $rotation ui_temp run data get entity @s Rotation.[0] 10
    # -1800 ~ 1800 制限なし
    scoreboard players operation $rotation ui_temp -= $temp ui_temp
    scoreboard players add $rotation ui_temp 1800
    # 0 ~ 3600 制限なし
    scoreboard players operation $rotation ui_temp %= #3600 ui_num
    # -1800 ~ 1800 完全
    execute as @e[tag=ui_marker] store result entity @s Rotation[0] float 0.1 run scoreboard players remove $rotation ui_temp 1800
    execute as @e[tag=ui_marker] store result entity @s Rotation[1] float 1 run data get entity @p Rotation.[1]

# マーカーを対象にして展開
    execute at @e[tag=ui_marker] run function ui:tmw/237/attack/shot/spreadmanager/2.2

# マーカーを削除
    kill @e[tag=ui_marker]