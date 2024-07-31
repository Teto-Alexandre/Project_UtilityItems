data modify storage ui:temp temp.reactive_effect set from storage ui:temp temp.effect
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.merge_checkers[0].merge_checker unless score $reactive_effect_success ui_temp matches -1 store success score $reactive_effect_success ui_temp run data modify storage ui:temp temp.reactive_effect merge from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.merge_checkers[0].merge_checker

execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.merge_checkers[0].invert if score $reactive_effect_success ui_temp matches 1 run scoreboard players set $reactive_effect_success ui_temp -1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.merge_checkers[0].invert if score $reactive_effect_success ui_temp matches 0 run scoreboard players set $reactive_effect_success ui_temp -1

execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.merge_checkers[0].var_checker unless score $reactive_effect_success ui_temp matches -1 run function ui:tmw/272/reactive_effect/modify/var_checker

execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.merge_checkers[0].invert if score $reactive_effect_success ui_temp matches 1 run scoreboard players set $reactive_effect_success ui_temp -1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.merge_checkers[0].invert if score $reactive_effect_success ui_temp matches 0 run scoreboard players set $reactive_effect_success ui_temp -1

data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.merge_checkers[0]
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.merge_checkers[0] run function ui:tmw/272/reactive_effect/modify/check_list.lp