# カスタムモーション値を参照してプレイヤーを相対TPする

#
    function oh_my_dat:please

# モーション値を取得
    execute store result score $x ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].temp.Motion[0] 1
    execute store result score $y ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].temp.Motion[1] 1
    execute store result score $z ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].temp.Motion[2] 1

# 動かす
    #effect give @s levitation 1 255 true
    #teleport @s @s
    scoreboard players operation $temp ui_temp = $x ui_temp
    execute unless score $x ui_temp matches 0 run function ui:common/motion/ss_pl/x
    scoreboard players operation $temp ui_temp = $y ui_temp
    execute unless score $y ui_temp matches 0 run function ui:common/motion/ss_pl/y
    scoreboard players operation $temp ui_temp = $z ui_temp
    execute unless score $z ui_temp matches 0 run function ui:common/motion/ss_pl/z

# 慣性を減らす　空気抵抗の数値は適当
    #tellraw @a [{"text":"tick_motion x:"},{"score":{"name": "$x","objective": "ui_temp"}},{"text":" y:"},{"score":{"name": "$y","objective": "ui_temp"}},{"text":" z:"},{"score":{"name": "$z","objective": "ui_temp"}}]
    scoreboard players operation $x ui_temp *= #9 ui_num
    scoreboard players operation $x ui_temp /= #10 ui_num
    scoreboard players operation $y ui_temp *= #9 ui_num
    scoreboard players operation $y ui_temp /= #10 ui_num
    scoreboard players operation $z ui_temp *= #9 ui_num
    scoreboard players operation $z ui_temp /= #10 ui_num
    execute if score $x ui_temp matches ..-1 run scoreboard players add $x ui_temp 1
    execute if score $y ui_temp matches ..-1 run scoreboard players add $y ui_temp 1
    execute if score $z ui_temp matches ..-1 run scoreboard players add $z ui_temp 1

# 数値を入力
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].temp.Motion[0] int 1 run scoreboard players get $x ui_temp
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].temp.Motion[1] int 1 run scoreboard players get $y ui_temp
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].temp.Motion[2] int 1 run scoreboard players get $z ui_temp

# 地形と接触したら実行前の座標に戻す
    scoreboard players set $success ui_temp 0
    execute at @s if block ~0.3 ~ ~0.3 #ui:nocol at @s if block ~-0.3 ~ ~0.3 #ui:nocol at @s if block ~0.3 ~ ~-0.3 #ui:nocol at @s if block ~-0.3 ~ ~-0.3 #ui:nocol at @s if block ~0.3 ~1.8 ~0.3 #ui:nocol at @s if block ~-0.3 ~1.8 ~0.3 #ui:nocol at @s if block ~0.3 ~1.8 ~-0.3 #ui:nocol at @s if block ~-0.3 ~1.8 ~-0.3 #ui:nocol run scoreboard players set $success ui_temp 1
    execute if score $success ui_temp matches 0 run teleport @s ~ ~ ~

# 慣性が0 または 地形と接触していたら 読み込みをoff
    #execute if score $success ui_temp matches 0 run say 地形に当たったよ
    execute if score $success ui_temp matches 0 run function ui:common/motion/ss_pl/reset
    #execute if score $x ui_temp matches ..10 if score $y ui_temp matches ..10 if score $z ui_temp matches ..10 run say もう動けないよ
    execute if score $x ui_temp matches ..10 if score $y ui_temp matches ..10 if score $z ui_temp matches ..10 run function ui:common/motion/ss_pl/reset

# MOB特有のノックバック時1tick完全ノックバック抵抗を再現
    tag @s[tag=ui_common_motion_player_temp_resistance] remove ui_common_motion_player_temp_resistance