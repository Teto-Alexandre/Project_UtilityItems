function oh_my_dat:please

execute if data storage ui:temp temp.effect.id_overwrite run function ui:tmw/272/effect/effect_type/after_effect/give.macro with storage ui:temp temp.effect.cg

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects append from storage ui:temp temp.effect.cg
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[-1].delay_base run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[-1].delay_base set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[-1].delay
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[-1].target_ids set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[-1].target_ids append from storage ui:temp temp.target_ids_temp
