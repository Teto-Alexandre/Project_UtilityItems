# 名前重複

#リスト[0]の名前を抽出
#リスト[]にそれぞれ代入してもしsuccessが0なら
# スコア+1
# 一個目はtemp_重複なし、二個目以降はtemp_重複済みに入れる
# その要素をリストから削除する（リスト末尾への追加を行わない）

#リスト[0]があるなら繰り返し

#引数次第でtempのどちらかをlistに入力する、またはlistとlist2にどちらも入力する

data modify storage ui:temp name_condition.list set from storage ui:temp card.list
execute if data storage ui:temp card.list2 run data modify storage ui:temp name_condition.list2 set from storage ui:temp card.list2
data modify storage ui:temp name_condition.temp_list_nop set value []
data modify storage ui:temp name_condition.temp_list_dup set value []
execute store result score $name_condition_count ui_temp run data get storage ui:temp name_condition.list
#execute store result score $name_condition_text_length ui_temp run data get storage ui:temp temp.effect.text

execute if data storage ui:temp temp.effect.list run function ui:tmw/272/effect/effect_type/name_duplication/list
execute if data storage ui:temp temp.effect.list2 run function ui:tmw/272/effect/effect_type/name_duplication/list2

execute unless data storage ui:temp temp.effect.subtract if score $name_condition_count ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/name_duplication/each
execute if data storage ui:temp temp.effect.subtract if score $name_condition_count ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/name_duplication/subtract

execute unless data storage ui:temp temp.effect.list unless data storage ui:temp temp.effect.list2 run data modify storage ui:temp card.list set from storage ui:temp name_condition.temp_list_nop
execute if data storage ui:temp temp.effect{list:"unique"} run data modify storage ui:temp card.list set from storage ui:temp name_condition.temp_list_nop
execute if data storage ui:temp temp.effect{list:"duplication"} run data modify storage ui:temp card.list set from storage ui:temp name_condition.temp_list_dup
execute if data storage ui:temp temp.effect{list2:"unique"} run data modify storage ui:temp card.list2 set from storage ui:temp name_condition.temp_list_nop
execute if data storage ui:temp temp.effect{list2:"duplication"} run data modify storage ui:temp card.list2 set from storage ui:temp name_condition.temp_list_dup

scoreboard players reset $name_condition_dup ui_temp
scoreboard players reset $name_condition_check ui_temp
scoreboard players reset $name_condition_count ui_temp
scoreboard players reset $name_condition_length ui_temp
scoreboard players reset $name_condition_length_temp ui_temp
data remove storage ui:temp name_condition
