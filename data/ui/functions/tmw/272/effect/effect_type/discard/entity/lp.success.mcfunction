data remove storage ui:temp temp.effect.temp2
data modify storage ui:temp temp.effect.temp2 set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand[0]

execute if data storage ui:temp temp.effect.temp2.tag.display run data modify storage ui:temp temp.display set from storage ui:temp temp.effect.temp2.tag.display

execute if data storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage ui:temp temp.effect.temp2.tag.tmw.cg.discard_effect
scoreboard players add $condition_checker_temp ui_temp 1
scoreboard players remove $var_temp ui_temp 1
