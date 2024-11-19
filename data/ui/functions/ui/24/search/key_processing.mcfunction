scoreboard players set $ui23_template_search_extra_code ui_temp 0

data modify storage ui:ui23_template_answer Name_temp.top set string storage ui:ui23_template_answer Names 0 1
#data modify storage ui:ui23_template_answer Name_temp.top2 set string storage ui:ui23_template_answer Names 0 2
#tellraw @a [{"storage":"ui:ui23_template_answer","nbt":"Name_temp.top","color":"gray"},{"text":" "},{"storage":"ui:ui23_template_answer","nbt":"Names","color":"yellow"}]

execute if data storage ui:ui23_template_answer Name_temp{top:" "} run data modify storage ui:ui23_template_answer Name append value {text:"",minus:0b}
execute if data storage ui:ui23_template_answer Name_temp{top:" "} run scoreboard players set $ui23_template_search_extra_code ui_temp 1

execute if data storage ui:ui23_template_answer Name_temp{top:"-"} run data modify storage ui:ui23_template_answer Name[-1].minus set value 1b
execute if data storage ui:ui23_template_answer Name_temp{top:"-"} run scoreboard players set $ui23_template_search_extra_code ui_temp 1

execute if data storage ui:ui23_template_answer Name_temp{top:"/"} run data modify storage ui:ui23_template_answer Names set string storage ui:ui23_template_answer Names 1
execute if data storage ui:ui23_template_answer Name_temp{top:"/"} run scoreboard players remove $ui23_template_search_linear1 ui_temp 1
#execute if data storage ui:ui23_template_answer Name_temp{top:"/"} run scoreboard players set $ui23_template_search_extra_code ui_temp 1
execute if data storage ui:ui23_template_answer Name_temp{top:"/"} run data modify storage ui:ui23_template_answer Name_temp.top set string storage ui:ui23_template_answer Names 0 1

#tellraw @a [{"storage":"ui:ui23_template_answer","nbt":"Name_temp.top","color":"dark_gray"},{"text":" "},{"storage":"ui:ui23_template_answer","nbt":"Names","color":"#999900"}]

execute if score $ui23_template_search_extra_code ui_temp matches 0 run data modify storage ui:ui23_template_answer Name_temp.now set from storage ui:ui23_template_answer Name[-1].text
execute if score $ui23_template_search_extra_code ui_temp matches 0 run function ui:ui/24/search/string_combine with storage ui:ui23_template_answer Name_temp
execute if score $ui23_template_search_extra_code ui_temp matches 0 run data modify storage ui:ui23_template_answer Name[-1].text set from storage ui:ui23_template_answer Name_temp.now

data modify storage ui:ui23_template_answer Names set string storage ui:ui23_template_answer Names 1
scoreboard players remove $ui23_template_search_linear1 ui_temp 1
execute if score $ui23_template_search_linear1 ui_temp matches 1.. run function ui:ui/24/search/key_processing
