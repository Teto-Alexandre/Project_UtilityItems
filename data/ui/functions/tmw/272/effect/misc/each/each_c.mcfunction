$data modify storage ui:temp temp.effect_macro_temp set from storage ui:temp temp.effect.each.macro_name_$(name)
execute store result score $tmw272_misc_each_count2 ui_temp run data get storage ui:temp temp.effect_macro_temp
#scoreboard players operation $tmw272_misc_each_count_temp ui_temp = $tmw272_misc_each_count ui_temp

#$tellraw @a [{"text":"each_c: $(name), ","color":"yellow"},{"score":{"name":"$tmw272_misc_each_count","objective":"ui_temp"},"color":"gold"},{"text":", ","color":"gray"},{"score":{"name":"$tmw272_misc_each_count2","objective":"ui_temp"},"color":"red"}]

#
data modify storage ui:temp temp.effect_strings_temp set value []
data modify storage ui:temp temp.effect_strings_temp append from storage ui:temp temp.effect_strings[]

execute if score $tmw272_misc_each_count2 ui_temp matches 2.. run function ui:tmw/272/effect/misc/each/each_c_copy

#tellraw @a [{"nbt":"temp.effect_strings_temp","storage":"ui:temp","color":"dark_red"}]

#
execute store result score $tmw272_misc_each_count2 ui_temp run data get storage ui:temp temp.effect_macro_temp
execute if score $tmw272_misc_each_count2 ui_temp matches 1.. run function ui:tmw/272/effect/misc/each/each_c.lp