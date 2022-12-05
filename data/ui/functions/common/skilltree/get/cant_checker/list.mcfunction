# 条件ごとに実行する
    #execute if data storage ui:temp2 temp[0] run function ui:tmw/240/exo/needed_checker/list_master

# [1,2] → 1

# 同じ数字がコア内にあるか線形探索
    # 条件リストを隔離
        data modify storage ui:temp2 temp set from storage ui:temp temp.skills
    # 条件ごとに実行する
        function ui:common/skilltree/get/cant_checker/liner_search
    # 条件リストを削除
        data remove storage ui:temp2 temp

# 参照した条件を削除
    data remove storage ui:skill2 temp[0]

# 条件が残っているなら、さらに条件ごとに実行する
    execute if data storage ui:skill2 temp[0] run function ui:common/skilltree/get/cant_checker/list