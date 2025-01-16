# 内部システム

execute if data storage ui:temp temp.effect{effect_mode:"create_value"} run function ui:tmw/272/effect/effect_type/system/create_value with storage ui:temp temp.effect.value
execute if data storage ui:temp temp.effect{effect_mode:"remove_value"} run function ui:tmw/272/effect/effect_type/system/remove_value with storage ui:temp temp.effect.value
