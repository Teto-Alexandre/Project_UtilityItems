# 名前分解テスト
tag @s add ui_temp_players
execute as @a at @s if block ~ ~-1 ~ lapis_block run tag @s add ui_temp_players



data modify storage ui:ui23_template_answer_temp _ set from storage ui:ui23_template_answer temp[0][0][0][0]
data modify storage ui:temp temp.effect.text set from storage ui:ui23_template_answer Name
execute store result score $item_id_condition_text_length ui_temp run data get storage ui:temp temp.effect.text
scoreboard players set $broadcast_type ui_temp 1




function ui:ui/23/template/item_id_condition/each




scoreboard players reset $item_id_condition_inv ui_temp
scoreboard players reset $item_id_condition_rows ui_temp
scoreboard players reset $item_id_condition_check ui_temp
scoreboard players reset $item_id_condition_length ui_temp
scoreboard players reset $item_id_condition_length_temp ui_temp
data remove storage ui:temp item_id_condition



tag @s remove ui_temp_players