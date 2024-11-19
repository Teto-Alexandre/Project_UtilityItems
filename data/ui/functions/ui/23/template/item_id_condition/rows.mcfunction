scoreboard players set $name_condition_inv ui_temp 0
data modify storage ui:temp name_condition.name set from storage ui:ui23_template_answer temp[0][0][0][0].id
execute store result score $name_condition_length ui_temp run data get storage ui:temp name_condition.name
scoreboard players operation $name_condition_length ui_temp -= $name_condition_text_length ui_temp

function ui:ui/23/template/condition_hub/name

scoreboard players set $name_condition_rows ui_temp 0