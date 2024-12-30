scoreboard players set $tmw272_misc_each_count ui_temp 0
execute store result score $tmw272_misc_each_count ui_temp run data get storage ui:temp temp.effect_strings

data modify storage ui:temp temp.effect_string set string storage ui:temp temp.effect.each.list[0] 0 11
data modify storage ui:temp temp.effect_macro.bine set from storage ui:temp temp.effect.each.list[0]
execute unless data storage ui:temp temp{effect_string:"macro_name_"} run function ui:tmw/272/effect/misc/each/strings_c
execute if data storage ui:temp temp{effect_string:"macro_name_"} run data modify storage ui:temp temp.effect_macro_meta.name set string storage ui:temp temp.effect.each.list[0] 11
execute if data storage ui:temp temp{effect_string:"macro_name_"} run function ui:tmw/272/effect/misc/each/each_c with storage ui:temp temp.effect_macro_meta
data remove storage ui:temp temp.effect.each.list[0]











#data modify storage ui:temp temp.top2 set string storage ui:ui23_template_answer Names 0 2
#tellraw @a [{"storage":"ui:ui23_template_answer","nbt":"Name_temp.top","color":"gray"},{"text":" "},{"storage":"ui:ui23_template_answer","nbt":"Names","color":"yellow"}]

execute if data storage ui:temp temp{top:" "} run data modify storage ui:ui23_template_answer Name append value {text:"",minus:0b}
execute if data storage ui:temp temp{top:" "} run scoreboard players set $tmw272_misc_each_count ui_temp 1

execute if data storage ui:temp temp{top:"-"} run data modify storage ui:ui23_template_answer Name[-1].minus set value 1b
execute if data storage ui:temp temp{top:"-"} run scoreboard players set $tmw272_misc_each_count ui_temp 1

execute if data storage ui:temp temp{top:"/"} run data modify storage ui:ui23_template_answer Names set string storage ui:ui23_template_answer Names 1
execute if data storage ui:temp temp{top:"/"} run scoreboard players remove $ui23_template_search_linear1 ui_temp 1
#execute if data storage ui:temp temp{top:"/"} run scoreboard players set $tmw272_misc_each_count ui_temp 1
execute if data storage ui:temp temp{top:"/"} run data modify storage ui:temp temp.top set string storage ui:ui23_template_answer Names 0 1

#tellraw @a [{"storage":"ui:ui23_template_answer","nbt":"Name_temp.top","color":"dark_gray"},{"text":" "},{"storage":"ui:ui23_template_answer","nbt":"Names","color":"#999900"}]

execute if score $tmw272_misc_each_count ui_temp matches 0 run data modify storage ui:temp temp.now set from storage ui:ui23_template_answer Name[-1].text
execute if score $tmw272_misc_each_count ui_temp matches 0 run function ui:ui/24/search/string_combine with storage ui:temp temp
execute if score $tmw272_misc_each_count ui_temp matches 0 run data modify storage ui:ui23_template_answer Name[-1].text set from storage ui:temp temp.now

data modify storage ui:ui23_template_answer Names set string storage ui:ui23_template_answer Names 1
scoreboard players remove $ui23_template_search_linear1 ui_temp 1
execute if score $ui23_template_search_linear1 ui_temp matches 1.. run function ui:ui/24/search/key_processing
