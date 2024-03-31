execute store result score $repeat ui_temp run data get storage ui:temp card.repeat
execute unless score $repeat ui_temp matches -1..0 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].repeat int 1 run scoreboard players remove $repeat ui_temp 1

execute unless data storage ui:temp card.delay_base run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].delay set from storage ui:temp card.delay
execute if data storage ui:temp card.delay_base run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0].delay set from storage ui:temp card.delay_base

execute unless score $repeat ui_temp matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0]
scoreboard players reset $repeat ui_temp
