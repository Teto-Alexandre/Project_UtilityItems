data modify storage ui:temp temp.after_effect set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0]
execute store success score $after_effect_success ui_temp run data modify storage ui:temp temp.after_effect merge from storage ui:temp temp.effect.merge_checker

scoreboard players remove $after_effect_num ui_temp 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[0]

execute if score $after_effect_success ui_temp matches 0 run function ui:tmw/272/effect/effect_type/modify_after_effect/execute

execute if score $after_effect_num ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/modify_after_effect/check