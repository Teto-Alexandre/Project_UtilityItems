# 配列の内容をシャッフルする

#
execute store result score $cg1_list_count ui_temp run data get storage ui:cg1 temp.list

#
function ui:tmw/272/common/create/shuffle/1.randget

#
data modify storage ui:cg1 temp.list set from storage ui:temp temp.list

#
data remove storage ui:temp temp

# IDをクリア
    scoreboard players reset $cg1_list_count ui_temp