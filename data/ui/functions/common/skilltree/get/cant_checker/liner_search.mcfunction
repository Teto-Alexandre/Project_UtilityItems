# 条件ごとに実行する
    #execute if data storage ui:temp2 temp[0] run function ui:tmw/240/exo/needed_checker/list_master

# [1,2] → 1

# 同じ数字がコア内にあるか線形探索
    execute store result score $core ui_temp run data get storage ui:temp2 temp[0]
    execute store result score $skill ui_temp run data get storage ui:skill2 temp[0]
    execute if score $core ui_temp = $skill ui_temp run scoreboard players add $metcount ui_temp 1
    execute if score $core ui_temp = $skill ui_temp run tellraw @a ["",{"text":">> 要素が合致します"}]

# 参照した条件を削除
    data remove storage ui:temp2 temp[0]

# 条件が残っているなら、さらに条件ごとに実行する
    execute if data storage ui:temp2 temp[0] run function ui:common/skilltree/get/cant_checker/liner_search