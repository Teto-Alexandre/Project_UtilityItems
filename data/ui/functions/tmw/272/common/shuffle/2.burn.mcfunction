data remove storage ui:temp temp.list2[0]

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[0]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[0]

scoreboard players remove $rand ui_calc1 1
execute if score $rand ui_calc1 matches 1.. run function ui:tmw/272/common/shuffle/2.burn