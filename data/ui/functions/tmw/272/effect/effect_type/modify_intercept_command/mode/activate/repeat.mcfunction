execute store result score $repeat ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].repeat
execute if score $repeat ui_temp matches 1.. store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].repeat int 1 run scoreboard players remove $repeat ui_temp 1

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].delay set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].delay_base

execute if score $repeat ui_temp matches 0 run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1]
scoreboard players reset $repeat ui_temp
