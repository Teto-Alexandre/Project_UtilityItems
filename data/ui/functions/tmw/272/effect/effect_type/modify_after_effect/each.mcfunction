function oh_my_dat:please

execute store result score $after_effect_num ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects
execute if score $after_effect_num ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/modify_after_effect/check

