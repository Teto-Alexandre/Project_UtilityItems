#say c

data modify storage ui:temp temp.merge_checkers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checkers

execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checkers[0] run function ui:tmw/272/intercept_command/modify/check_list.lp

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checkers set from storage ui:temp temp.merge_checkers