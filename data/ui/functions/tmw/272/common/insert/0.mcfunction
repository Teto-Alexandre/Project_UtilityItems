function oh_my_dat:please

data modify storage ui:cg1 temp.list[0].Count set value 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match prepend from storage ui:cg1 temp.list[0]

data modify storage ui:temp temp.display set from storage ui:cg1 temp.list[0].tag.display
scoreboard players set $broadcast_type ui_temp 10
execute unless data storage ui:temp temp.effect.mute run function ui:tmw/272/effect/broadcast/
execute if score $cg1_common_draw_single ui_temp matches 0 run data remove storage ui:cg1 temp.list[0]

# カードプールがなくなったらボックスから補充を行う
execute store result score $cg1_list_count ui_temp run data get storage ui:cg1 temp.list
#execute if score $cg1_list_count ui_temp matches 0 run say エラー：特殊ボックスの内容が枯渇しました

scoreboard players remove $cg1_common_draw_num ui_temp 1
execute if score $cg1_common_draw_num ui_temp matches 1.. run function ui:tmw/272/common/insert/0