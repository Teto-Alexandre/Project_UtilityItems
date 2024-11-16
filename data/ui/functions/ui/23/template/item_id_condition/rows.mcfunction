scoreboard players set $item_id_condition_inv ui_temp 0
data modify storage ui:temp item_id_condition.name set from storage ui:ui23_template_answer temp[0][0][0][0].id
execute store result score $item_id_condition_length ui_temp run data get storage ui:temp item_id_condition.name
scoreboard players operation $item_id_condition_length ui_temp -= $item_id_condition_text_length ui_temp

function ui:ui/23/template/item_id_condition/name
