# 視聴者の設定、使ってない
#tag @s add ui_temp_players
#execute as @a at @s if block ~ ~-1 ~ lapis_block run tag @s add ui_temp_players
#scoreboard players set $broadcast_type ui_temp 1

# 現在の検索タイプに応じて検索先のデータが存在しなければ処理をスキップする
scoreboard players set $name_condition_check_count ui_temp 0
scoreboard players set $name_condition_check ui_temp 1
scoreboard players set $name_condition_check_all ui_temp 1
execute unless score $ui_24_search_name_or_lore ui_temp matches 1.. store result score $name_condition_rows_origin ui_temp run data get storage ui:ui23_template_answer temp[0].tag.display.Lore
execute if score $ui_24_search_name_or_lore ui_temp matches 1 store result score $name_condition_rows_origin ui_temp run data get storage ui:ui23_template_answer temp[0].tag.display.Name
execute if score $ui_24_search_name_or_lore ui_temp matches 2..3 store result score $name_condition_rows_origin ui_temp run data get storage ui:ui23_template_answer temp[0].tag.tmw.cg

# カード総数を加算する
execute if score $name_condition_rows_origin ui_temp matches 1.. run scoreboard players add $ui:dimensional_search_list_max ui_temp 1

#
data modify storage ui:ui23_template_answer_temp _ set from storage ui:ui23_template_answer temp[0]

#
data modify storage ui:ui23_template_answer Name_temp set from storage ui:ui23_template_answer Name
execute if data storage ui:ui23_template_answer Name_temp[0] run function ui:ui/23/template/condition_hub/re_lp

#
execute if score $name_condition_check_count ui_temp >= $ui23_template_search_linear_count ui_temp run function ui:ui/23/template/condition_hub/correct_last

# 視聴者をクリア、使ってない
#tag @s remove ui_temp_players
