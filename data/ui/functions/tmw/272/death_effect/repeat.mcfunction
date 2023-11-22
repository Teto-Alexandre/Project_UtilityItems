execute store result score $repeat ui_temp run data get storage ui:temp card.repeat
execute unless score $repeat ui_temp matches 0 store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.DeathEffects[0].repeat int 1 run scoreboard players remove $repeat ui_temp 1

execute unless score $repeat ui_temp matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.DeathEffects append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.DeathEffects[0]
scoreboard players reset $repeat ui_temp
