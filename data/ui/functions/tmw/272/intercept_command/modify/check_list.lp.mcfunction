#tellraw @s [{"score":{"name":"$reactive_effect_success","objective":"ui_temp"},"color":"red"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checkers[0]"}]

data modify storage ui:temp temp.reactive_effect set from storage ui:temp temp.effect
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checkers[0].merge_checker unless score $reactive_effect_success ui_temp matches -1 store success score $reactive_effect_success ui_temp run data modify storage ui:temp temp.reactive_effect merge from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checkers[0].merge_checker

execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checkers[0].invert if score $reactive_effect_success ui_temp matches 1 run scoreboard players set $reactive_effect_success ui_temp -1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checkers[0].invert if score $reactive_effect_success ui_temp matches 0 run scoreboard players set $reactive_effect_success ui_temp -1

execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checkers[0].var_checker unless score $reactive_effect_success ui_temp matches -1 run function ui:tmw/272/intercept_command/modify/var_checker

#tellraw @s [{"score":{"name":"$reactive_effect_success","objective":"ui_temp"},"color":"green"}]

execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checkers[0].invert if score $reactive_effect_success ui_temp matches 1 run scoreboard players set $reactive_effect_success ui_temp -1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checkers[0].invert if score $reactive_effect_success ui_temp matches 0 run scoreboard players set $reactive_effect_success ui_temp -1

#tellraw @s [{"score":{"name":"$reactive_effect_success","objective":"ui_temp"},"color":"yellow"}]

data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checkers[0]
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checkers[0] run function ui:tmw/272/intercept_command/modify/check_list.lp