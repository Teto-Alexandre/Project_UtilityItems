execute store result score $cg1_turn_name_num ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects
scoreboard players set $cg1_turn_name_check ui_temp 0

execute if score $cg1_turn_name_num ui_temp matches 1.. run function ui:tmw/272/match/periodic/ae_turn.lp

scoreboard players reset $cg1_turn_name_num ui_temp
scoreboard players reset $cg1_turn_name_check ui_temp