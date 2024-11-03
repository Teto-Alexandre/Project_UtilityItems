# 指定のエンティティ以外をターゲットから外す
data modify storage ui:temp temp.temp.target_selector set from storage ui:temp temp.effect.target_selector.list[0]

function ui:tmw/272/effect/target_selector/macro with storage ui:temp temp.temp

data remove storage ui:temp temp.temp
data remove storage ui:temp temp.effect.target_selector.list[0]

scoreboard players remove $target_list ui_temp 1
execute if score $target_list ui_temp matches 1.. run function ui:tmw/272/effect/target_selector/list.lp