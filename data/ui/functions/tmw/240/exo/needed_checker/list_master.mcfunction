# 条件ごとに実行する
    #execute if data storage ui:temp2 temp[0] run function ui:tmw/240/exo/needed_checker/list_master

# [[1,2],[3]] → [1,2]

# 条件内の各要素ごとに参照を行う
    scoreboard players set $metcount ui_temp 0
    scoreboard players set $needcount ui_temp 0
    function ui:tmw/240/exo/needed_checker/list
    execute if score $metcount ui_temp = $needcount ui_temp run scoreboard players add $mettotal ui_temp 1
    execute if score $metcount ui_temp < $needcount ui_temp run tellraw @a ["",{"text":">> 合致する要素数が不足しています"},{"score":{"name":"$metcount","objective":"ui_temp"},"color":"red"},{"text":" < "},{"score":{"name":"$needcount","objective":"ui_temp"},"color":"red"}]

# 参照した条件を削除
    data remove storage ui:skill2 temp[0]

# 条件が残っているなら、さらに条件ごとに実行する
    execute if data storage ui:skill2 temp[0] run function ui:tmw/240/exo/needed_checker/list_master