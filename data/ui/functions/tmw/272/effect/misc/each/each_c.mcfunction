$data modify storage ui:temp temp.effect_macro_temp set from storage ui:temp temp.effect.each.$(name)
execute store result score $tmw272_misc_each_count2 ui_temp run data get storage ui:temp temp.effect_macro_temp
scoreboard players operation $tmw272_misc_each_count_temp ui_temp = $tmw272_misc_each_count ui_temp



#

data modify storage ui:temp temp.effect_macro.com set from storage ui:temp temp.effect_strings[0]

function ui:tmw/272/effect/misc/each/macro/string_combine with storage ui:temp temp.effect_macro

scoreboard players remove $tmw272_misc_each_count ui_temp 1
execute if score $tmw272_misc_each_count ui_temp matches 1.. run function ui:tmw/272/effect/misc/each/strings_c

#

# 2の数だけループする（中でtempの記録値を更新してループ）