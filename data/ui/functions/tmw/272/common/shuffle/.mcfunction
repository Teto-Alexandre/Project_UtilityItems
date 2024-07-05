# OMDを呼び出して配列の内容をシャッフルする

#
function oh_my_dat:please

#
data modify storage ui:temp temp.temp.shuffle.list set value []
execute store result score $cg1_list_count ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match

#
function ui:tmw/272/common/shuffle/1.randget

#
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match set from storage ui:temp temp.temp.shuffle.list

#
data remove storage ui:temp temp.temp.shuffle

# IDをクリア
    scoreboard players reset $cg1_list_count ui_temp
