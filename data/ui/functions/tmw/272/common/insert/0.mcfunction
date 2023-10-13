function oh_my_dat:please

data modify storage ui:cg1 temp.list[0].Count set value 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match prepend from storage ui:cg1 temp.list[0]

data remove storage ui:cg1 temp.list[0]

# カードプールがなくなったらボックスから補充を行う
execute store result score $cg1_list_count ui_temp run data get storage ui:cg1 temp.list
#execute if score $cg1_list_count ui_temp matches 0 run say エラー：特殊ボックスの内容が枯渇しました

scoreboard players remove $cg1_common_draw_num ui_temp 1
execute if score $cg1_common_draw_num ui_temp matches 1.. run function ui:tmw/272/common/insert/0