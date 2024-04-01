data modify storage ui:temp temp.reactive_effect set from storage ui:temp temp.effect
execute store success score $reactive_effect_success ui_temp run data modify storage ui:temp temp.reactive_effect merge from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect_merge_checker

scoreboard players remove $reactive_effect_num ui_temp 1
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0]

execute if score $var_temp ui_temp matches 1.. unless data storage ui:temp temp.effect.invert if score $reactive_effect_success ui_temp matches 0 run function ui:tmw/272/reactive_effect/modify/checked
execute if score $var_temp ui_temp matches 1.. if data storage ui:temp temp.effect.invert if score $reactive_effect_success ui_temp matches 1 run function ui:tmw/272/reactive_effect/modify/checked

execute if score $reactive_effect_num ui_temp matches 1.. run function ui:tmw/272/reactive_effect/modify/check