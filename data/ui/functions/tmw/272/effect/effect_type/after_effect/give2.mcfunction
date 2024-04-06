function oh_my_dat:please

execute if score $after_effect ui_temp matches 1 if data storage ui:temp temp.effect.id_overwrite run function ui:tmw/272/effect/effect_type/after_effect/give.macro.ae with storage ui:temp temp.effect.cg
execute if score $after_effect ui_temp matches 2 if data storage ui:temp temp.effect.id_overwrite run function ui:tmw/272/effect/effect_type/after_effect/give.macro.de with storage ui:temp temp.effect.cg
execute if score $after_effect ui_temp matches 3 if data storage ui:temp temp.effect.id_overwrite run function ui:tmw/272/effect/effect_type/after_effect/give.macro.re with storage ui:temp temp.effect.cg

execute unless data storage ui:temp temp.effect.cg.delay_base run data modify storage ui:temp temp.effect.cg.delay_base set from storage ui:temp temp.effect.cg.delay
data modify storage ui:temp temp.effect.cg.target_ids set value []
data modify storage ui:temp temp.effect.cg.target_ids append from storage ui:temp temp.target_ids_temp

execute if score $after_effect ui_temp matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage ui:temp temp.effect.cg
execute if score $after_effect ui_temp matches 2 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.DeathEffects append from storage ui:temp temp.effect.cg
execute if score $after_effect ui_temp matches 3 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects append from storage ui:temp temp.effect.cg
