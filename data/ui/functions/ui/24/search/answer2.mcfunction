say 検索開始
data remove storage ui:dimensional_search list
data modify storage ui:dimensional_search list set value []

scoreboard players set $ui:dimensional_search_list_max ui_temp 0

tag @e[tag=ui_24_1] add force_refresh

scoreboard players set $ui_23_searcher ui_temp 1
data modify storage ui:ui23_template_answer Name set string block ^ ^ ^1 Items[{Slot:10b}].tag.display.Name 1 -1
data modify storage ui:ui23_template_answer temp set from storage ui:dimensional_chest Items

tellraw @a [{"storage":"ui:ui23_template_answer","nbt":"Name"}]

function ui:ui/23/template/answer/page