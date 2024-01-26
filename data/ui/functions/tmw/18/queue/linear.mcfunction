# 軽量化のためストレージに書き出す
data modify storage ui:temp skill set from storage ui:temp linear[0]

function ui:tmw/18/queue/activate

# まだあるなら - 次のエフェクトに移動
data remove storage ui:temp linear[0]
scoreboard players remove $count_linear ui_temp 1
execute if score $count_linear ui_temp matches 1.. run function ui:tmw/18/queue/linear