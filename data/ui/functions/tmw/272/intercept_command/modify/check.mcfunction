scoreboard players set $reactive_effect_success ui_temp 0

execute if score $reactive_effect_linear_type ui_temp matches 1 unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.from_self run scoreboard players set $reactive_effect_success ui_temp -1
execute if score $reactive_effect_linear_type ui_temp matches 2 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.no_self if entity @s[tag=ui_temp_player] run scoreboard players set $reactive_effect_success ui_temp -1
execute if score $reactive_effect_linear_type ui_temp matches 2 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.no_other unless entity @s[tag=ui_temp_player] run scoreboard players set $reactive_effect_success ui_temp -1
execute if score $reactive_effect_linear_type ui_temp matches 2 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.from_self run scoreboard players set $reactive_effect_success ui_temp -1

data modify storage ui:temp temp.reactive_effect set from storage ui:temp temp.effect
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checker unless score $reactive_effect_success ui_temp matches -1 store success score $reactive_effect_success ui_temp run data modify storage ui:temp temp.reactive_effect merge from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.merge_checker

execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].reactive_effect.invert if score $reactive_effect_success ui_temp matches 1 run scoreboard players set $reactive_effect_success ui_temp -1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].reactive_effect.invert if score $reactive_effect_success ui_temp matches 0 run scoreboard players set $reactive_effect_success ui_temp -1

execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0].reactive_effect.var_checker unless score $reactive_effect_success ui_temp matches -1 run function ui:tmw/272/intercept_command/modify/var_checker

scoreboard players remove $reactive_effect_num ui_temp 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[0]

execute if score $var_temp ui_temp matches 1.. unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].reactive_effect.invert if score $reactive_effect_success ui_temp matches 0 run function ui:tmw/272/intercept_command/modify/checked
execute if score $var_temp ui_temp matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].reactive_effect.invert if score $reactive_effect_success ui_temp matches 1 run function ui:tmw/272/intercept_command/modify/checked

execute if score $reactive_effect_num ui_temp matches 1.. run function ui:tmw/272/intercept_command/modify/check