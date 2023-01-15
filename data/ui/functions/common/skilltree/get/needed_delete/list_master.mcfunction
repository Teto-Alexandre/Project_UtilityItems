# 条件ごとに実行する
    #execute if data storage ui:temp2 temp[0] run function ui:tmw/240/exo/needed_checker/list_master

# [[1,2],[3]] → [1,2]

# 同じ数字がコア内にあるか線形探索
    #
        data modify storage ui:skill2 temp set from storage ui:skill temp.need
        scoreboard players set $metcount ui_temp 0
    # 条件内の各要素ごとに参照を行う
        function ui:common/skilltree/get/needed_delete/list
    #
        data remove storage ui:skill2 temp

#
    execute if score $metcount ui_temp matches 0 run data modify storage ui:temp temp.skills2 append from storage ui:temp temp.skills[0]
    #execute if score $metcount ui_temp matches 1.. run say 削除したよ

# 参照した条件を削除
    data remove storage ui:temp temp.skills[0]

# 条件が残っているなら、さらに条件ごとに実行する
    execute if data storage ui:temp temp.skills[0] run function ui:common/skilltree/get/needed_delete/list_master