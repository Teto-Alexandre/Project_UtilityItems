# 内部システム

# 初期値の分
execute if data storage ui:temp temp.effect{effect_mode:"create_value"} if data storage ui:temp temp.effect.value.init run data modify storage ui:temp temp.effect.value.initial set from storage ui:temp temp.effect.value.init
execute if data storage ui:temp temp.effect{effect_mode:"create_value"} if data storage ui:temp temp.effect.value.init run data remove storage ui:temp temp.effect.value.init

execute if data storage ui:temp temp.effect{effect_mode:"create_value"} if data storage ui:temp temp.effect.value.initial run function ui:tmw/272/effect/effect_type/system/create_value_init with storage ui:temp temp.effect.value
execute if data storage ui:temp temp.effect{effect_mode:"create_value"} unless data storage ui:temp temp.effect.value.initial run function ui:tmw/272/effect/effect_type/system/create_value with storage ui:temp temp.effect.value
execute if data storage ui:temp temp.effect{effect_mode:"remove_value"} run function ui:tmw/272/effect/effect_type/system/remove_value with storage ui:temp temp.effect.value
