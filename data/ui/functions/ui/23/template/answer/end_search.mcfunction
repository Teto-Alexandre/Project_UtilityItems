scoreboard players reset $search_complete_stack ui_temp
scoreboard players reset $ui23_template_search_linear_count ui_temp
scoreboard players reset $ui23_template_search_linear1 ui_temp
scoreboard players reset $ui23_template_search_extra_code ui_temp
scoreboard players reset $ui23_template_answer_linear1 ui_temp
scoreboard players reset $ui23_template_answer_linear2 ui_temp
scoreboard players reset $ui23_template_answer_linear3 ui_temp
scoreboard players reset $ui23_template_answer_linear4 ui_temp

scoreboard players reset $name_condition_minus ui_temp
scoreboard players reset $name_condition_inv ui_temp
scoreboard players reset $name_condition_rows ui_temp
scoreboard players reset $name_condition_rows_origin ui_temp
scoreboard players reset $name_condition_check ui_temp
scoreboard players reset $name_condition_check_all ui_temp
scoreboard players reset $name_condition_check_count ui_temp
scoreboard players reset $name_condition_length ui_temp
scoreboard players reset $name_condition_length_temp ui_temp

data remove storage ui:temp name_condition
data remove storage ui:ui23_template_answer temp
data remove storage ui:ui23_template_answer Name
data remove storage ui:ui23_template_answer Name_temp

tag @a remove ui_23_searcher
scoreboard players reset $ui_23_searcher ui_temp
say 検索終了
execute store result score $count ui_temp run data get storage ui:dimensional_search list
tellraw @a [{"text":"該当数:"},{"score":{"name":"$count","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$ui:dimensional_search_list_max","objective":"ui_temp"}}]
