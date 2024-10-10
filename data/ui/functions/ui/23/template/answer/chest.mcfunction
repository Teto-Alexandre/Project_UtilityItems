execute store result score $ui23_template_answer_linear2 ui_temp run data get storage ui:ui23_template_answer temp[0]

execute if score $ui23_template_answer_linear2 ui_temp matches 1.. run function ui:ui/23/template/answer/twin

data remove storage ui:ui23_template_answer temp[0]
scoreboard players remove $ui23_template_answer_linear1 ui_temp 1
execute if score $ui23_template_answer_linear1 ui_temp matches 0 run schedule function ui:ui/23/template/answer/end_search 50t
execute if score $ui23_template_answer_linear1 ui_temp matches 1.. run schedule function ui:ui/23/template/answer/chest 45t