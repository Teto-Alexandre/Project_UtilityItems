data modify storage ui:temp temp.effect_macro.string set from storage ui:temp temp.effect_strings[0]
data remove storage ui:temp temp.effect_strings[0]

function ui:tmw/272/effect/misc/each/macro/effects_append with storage ui:temp temp.effect_macro

execute if data storage ui:temp temp.effect_strings[0] run function ui:tmw/272/effect/misc/each/e_a
