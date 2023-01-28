# 軌道配置

# 前の実行結果を削除
    execute if entity @e[tag=ui_temp_common_formation_marker] run kill @e[tag=ui_temp_common_formation_marker]

# スコア化
    execute store result score $num ui_temp run data get storage ui:common input.Num
    execute store result score $offset ui_temp run data get storage ui:common input.Offset 100

# 角度計算
    scoreboard players set $round ui_temp 36000
    scoreboard players operation $round ui_temp /= $num ui_temp
    scoreboard players operation $round ui_temp /= #2 ui_num
    scoreboard players operation $offset ui_temp /= #2 ui_num
    scoreboard players set $rotator ui_temp 0

# 触媒エンティティを召喚
    #回転軌道を設定
    execute at @s run summon marker ^ ^ ^5 {Tags:["ui_temp_common_formation","ui_temp_common_formation_p"]}
    execute at @s run summon marker ^ ^ ^-5 {Tags:["ui_temp_common_formation","ui_temp_common_formation_q"]}
    #回転子をオフセット基準で配置
    execute at @s run summon marker ~ ~ ~ {Tags:["ui_temp_common_formation","ui_temp_common_formation_x"]}
    execute store result entity @e[tag=ui_temp_common_formation_x,limit=1] Rotation[0] float 0.01 run scoreboard players operation $rotator ui_temp = $offset ui_temp

#
    function ui:common/formation/orbit/loop

# 回転軌道を削除
    kill @e[tag=ui_temp_common_formation]
