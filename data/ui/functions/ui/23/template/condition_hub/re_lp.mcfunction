#
execute if score $name_condition_check_count ui_temp < $ui23_template_search_linear_count ui_temp run scoreboard players set $name_condition_check ui_temp 1
execute if score $name_condition_check_count ui_temp < $ui23_template_search_linear_count ui_temp run scoreboard players set $name_condition_check_all ui_temp 1

#
data modify storage ui:ui23_template_answer temp[0] set from storage ui:ui23_template_answer_temp _

# 一時変数の設定
execute store result score $name_condition_minus ui_temp run data get storage ui:ui23_template_answer Name_temp[0].minus

# 一時比較バックアップ + 検索データ
scoreboard players operation $name_condition_rows ui_temp = $name_condition_rows_origin ui_temp
data modify storage ui:temp temp.effect.text set from storage ui:ui23_template_answer Name_temp[0].text
execute store result score $name_condition_text_length ui_temp run data get storage ui:temp temp.effect.text

# 分岐
execute unless score $ui_24_search_name_or_lore ui_temp matches 1.. if score $name_condition_rows ui_temp matches 1.. run function ui:ui/23/template/lore_condition/re_rows
execute if score $ui_24_search_name_or_lore ui_temp matches 1 if score $name_condition_rows ui_temp matches 1.. run function ui:ui/23/template/name_condition/re_rows
execute if score $ui_24_search_name_or_lore ui_temp matches 2 if score $name_condition_rows ui_temp matches 1.. run function ui:ui/23/template/item_id_condition/re_rows
execute if score $ui_24_search_name_or_lore ui_temp matches 3 if score $name_condition_rows ui_temp matches 1.. run function ui:ui/23/template/cost_condition/re_rows

# 最後まで一致しなかったら
execute if score $name_condition_minus ui_temp matches 1 if score $name_condition_check_all ui_temp matches 1 if score $name_condition_rows ui_temp matches 0 run function ui:ui/23/template/condition_hub/correct

#
data remove storage ui:ui23_template_answer Name_temp[0]
execute if data storage ui:ui23_template_answer Name_temp[0] run function ui:ui/23/template/condition_hub/re_lp
