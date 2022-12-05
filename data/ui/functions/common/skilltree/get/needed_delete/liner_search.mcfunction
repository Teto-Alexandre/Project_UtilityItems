# 条件ごとに実行する
    #execute if data storage ui:temp2 temp[0] run function ui:tmw/240/exo/needed_checker/list_master

# [1,2] → 1

# 同じ数字がコア内にあるか線形探索
    execute store result score $core ui_temp run data get storage ui:temp temp.skills[0]
    execute store result score $skill ui_temp run data get storage ui:skill2 temp[0][0]
    execute if score $core ui_temp = $skill ui_temp run scoreboard players set $metcount ui_temp 1

#
    #tellraw @s [{"score":{"name":"$core","objective":"ui_temp"}},{"text":","},{"score":{"name":"$skill","objective":"ui_temp"}}]

# 参照した条件を削除
    data remove storage ui:skill2 temp[0][0]

# 条件が残っているなら、さらに条件ごとに実行する
    execute if data storage ui:skill2 temp[0][0] run function ui:common/skilltree/get/needed_delete/liner_search