scoreboard players set $check_cost ui_temp 1

# cost_mod を計上して条件をすべて満たしていないと発動できない
data modify storage ui:temp temp.mods set from storage ui:temp card.cost_mods
execute store result score $cost_count ui_temp run data get storage ui:temp card.cost_mods

# cost_countの数だけ走査処理をする
execute if score $cost_count ui_temp matches 1.. run function ui:tmw/272/common/check_cost/cost_type/2/burn

# キャッシュを削除
scoreboard players reset $cost_count ui_temp
data remove storage ui:temp temp.mods

#
execute if score $check_cost ui_temp matches 1 run function ui:tmw/272/common/check_cost/cost_type/2/next