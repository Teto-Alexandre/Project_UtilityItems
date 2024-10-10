scoreboard players set $name_condition_check ui_temp 1

execute store result score $name_condition_rows ui_temp run data get storage ui:ui23_template_answer temp[0][0][0][0].tag.display.Lore

#tellraw @a [{"nbt":"temp[0][0][0][0].tag.display.Lore","storage":"ui:ui23_template_answer"}]
execute if score $name_condition_rows ui_temp matches 1.. run function ui:ui/23/template/lore_condition/rows
