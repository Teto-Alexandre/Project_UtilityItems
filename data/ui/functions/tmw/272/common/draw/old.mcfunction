# OMDを呼び出して自分のドロッパー（をコピーした一次リスト、リスト数は９から上下する）からランダムなアイテムを取り出す
# 空欄のスロットからは何も出ない

## $cg1_common_draw_type ui_temp : ドロータイプ
## $cg1_common_draw_num ui_temp : ドロー数

#
function oh_my_dat:please

#
data modify storage ui:temp temp.list set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match
execute store result score $cg1_list_count ui_temp run data get storage ui:temp temp.list

#
execute if score $cg1_common_draw_type ui_temp matches 0 run function ui:tmw/272/common/draw/0

#
data remove storage ui:temp temp

# IDをクリア
    scoreboard players reset $cg1_list_count ui_temp
    scoreboard players reset $cg1_common_draw_type ui_temp
    scoreboard players reset $cg1_common_draw_num ui_temp