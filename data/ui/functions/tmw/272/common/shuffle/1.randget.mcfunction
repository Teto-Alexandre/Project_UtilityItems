data modify storage ui:temp temp.temp.shuffle.list2 set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match

scoreboard players operation $mod ui_calc1 = $cg1_list_count ui_temp
function ui:common/rand

execute if score $rand ui_calc1 matches 1.. run function ui:tmw/272/common/shuffle/2.burn

data modify storage ui:temp temp.temp.shuffle.list append from storage ui:temp temp.temp.shuffle.list2[0]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[0]

scoreboard players remove $cg1_list_count ui_temp 1
execute if score $cg1_list_count ui_temp matches 1.. run function ui:tmw/272/common/shuffle/1.randget