# 条件ごとに実行する
    #execute if data storage ui:temp2 temp[0] run function ui:tmw/240/exo/needed_checker/list_master

# [1,2] → 1

# 同じ数字がコア内にあるか線形探索
    execute store result score $core ui_temp run data get storage ui:temp2 temp[0]
    execute if score $core ui_temp = $id ui_temp run scoreboard players set $cancel ui_temp 1
    execute if score $core ui_temp = $id ui_temp run tellraw @s ["",{"text":"> 同じスキルを既に習得しています"}]
    execute unless score $core ui_temp = $id ui_temp run tellraw @s ["",{"text":">. 同じスキルではありません","color":"gray"}]

# 参照した条件を削除
    data remove storage ui:temp2 temp[0]

# 条件が残っているなら、さらに条件ごとに実行する
    execute if data storage ui:temp2 temp[0] run function ui:tmw/240/exo/double_checker/liner_search