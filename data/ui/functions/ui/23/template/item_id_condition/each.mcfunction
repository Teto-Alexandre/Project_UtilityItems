scoreboard players set $item_id_condition_check ui_temp 1

execute store result score $item_id_condition_rows ui_temp run data get storage ui:ui23_template_answer temp[0][0][0][0].tag.tmw.cg

execute if score $item_id_condition_rows ui_temp matches 1.. run scoreboard players add $ui:dimensional_search_list_max ui_temp 1

#tellraw @a [{"nbt":"temp[0][0][0][0].tag.display.Lore","storage":"ui:ui23_template_answer"}]
execute if score $item_id_condition_rows ui_temp matches 1.. run function ui:ui/23/template/item_id_condition/rows
