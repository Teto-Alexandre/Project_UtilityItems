data modify storage ui:temp temp.effect set value {}
execute if data storage cg_custom_temp: advanced_value[0].command run data modify storage ui:temp temp.effect.command set from storage cg_custom_temp: advanced_value[0].command
execute if data storage cg_custom_temp: advanced_value[0].list run data modify storage ui:temp temp.effect.list set from storage cg_custom_temp: advanced_value[0].list
execute if data storage ui:temp temp.effect.command run function ui:tmw/272/effect/effect_type/command/simple with storage ui:temp temp.effect
execute if data storage ui:temp temp.effect.list run function ui:tmw/272/effect/effect_type/command/list