data modify storage ui:temp temp.effect_macro.com set from storage ui:temp temp.effect_strings[0]

function ui:tmw/272/effect/misc/each/macro/string_combine with storage ui:temp temp.effect_macro

#say c
#tellraw @a [{"nbt":"temp.effect_strings","storage":"ui:temp","color":"gray"}]

scoreboard players remove $tmw272_misc_each_count_temp ui_temp 1
execute if score $tmw272_misc_each_count_temp ui_temp matches 1.. run function ui:tmw/272/effect/misc/each/strings_c