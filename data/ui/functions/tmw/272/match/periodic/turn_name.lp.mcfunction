scoreboard players set $cg1_turn_name_check ui_temp 0
data modify storage ui:temp temp.temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.turn_name[0]
execute unless data storage ui:temp temp.temp.turn run scoreboard players set $cg1_turn_name_check ui_temp 1
execute store result score $cg1_turn_name_turn ui_temp run data get storage ui:temp temp.temp.turn
execute if score $cg1_turn_name_turn ui_temp matches 0..1 run scoreboard players set $cg1_turn_name_check ui_temp 1

execute if score $cg1_turn_name_check ui_temp matches 0 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.turn_name[0].turn int 1 run scoreboard players remove $cg1_turn_name_turn ui_temp 1
execute if score $cg1_turn_name_check ui_temp matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.turn_name append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.turn_name[0]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.turn_name[0]

scoreboard players remove $cg1_turn_name_num ui_temp 1
execute if score $cg1_turn_name_num ui_temp matches 1.. run function ui:tmw/272/match/periodic/turn_name.lp