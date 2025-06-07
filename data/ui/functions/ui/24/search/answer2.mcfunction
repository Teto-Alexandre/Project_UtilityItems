say 検索開始
data remove storage ui:dimensional_search list
data modify storage ui:dimensional_search list set value []

scoreboard players set $ui:dimensional_search_list_max ui_temp 0

tag @e[tag=ui_24_1] add force_refresh

scoreboard players set $ui_23_searcher ui_temp 1
data modify storage ui:ui23_template_answer temp set from storage dimensional_chest: Items

data modify storage ui:ui23_template_answer Name set value []
data modify storage ui:ui23_template_answer Name append value {text:"",minus:0b}
#data modify storage ui:ui23_template_answer Name set string block ^ ^ ^1 Items[{Slot:10b}].tag.display.Name 1 -1
data modify storage ui:ui23_template_answer Names set string block ^ ^ ^1 Items[{Slot:10b}].tag.display.Name 1 -1
execute store result score $ui23_template_search_linear1 ui_temp run data get storage ui:ui23_template_answer Names
execute if score $ui23_template_search_linear1 ui_temp matches 1.. run function ui:ui/24/search/key_processing
execute if score $ui_24_search_name_or_lore ui_temp matches 3 run data modify storage ui:ui23_template_answer Names set value {macro:0}
execute if score $ui_24_search_name_or_lore ui_temp matches 3 run data modify storage ui:ui23_template_answer Names.macro set string block ^ ^ ^1 Items[{Slot:10b}].tag.display.Name 1 -1
execute if score $ui_24_search_name_or_lore ui_temp matches 3 run function ui:ui/24/search/key_processing_int with storage ui:ui23_template_answer Names

tellraw @a [{"storage":"ui:ui23_template_answer","nbt":"Name"}]

execute store result score $ui23_template_search_linear_count ui_temp run data get storage ui:ui23_template_answer Name
execute unless score $ui_24_search_or_and ui_temp matches 1 run scoreboard players set $ui23_template_search_linear_count ui_temp 1

function ui:ui/23/template/answer/page