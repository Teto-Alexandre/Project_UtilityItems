data modify storage ui:temp temp.effect_strings append from storage ui:temp temp.effect_strings_temp[]

scoreboard players remove $tmw272_misc_each_count2 ui_temp 1
execute if score $tmw272_misc_each_count2 ui_temp matches 2.. run function ui:tmw/272/effect/misc/each/each_c_copy
