execute store result score $ui23_template_answer_linear4 ui_temp run data get storage ui:ui23_template_answer temp[0][0][0]

execute if score $ui23_template_answer_linear4 ui_temp matches 1.. run function ui:ui/23/template/answer/single

data remove storage ui:ui23_template_answer temp[0][0][0]
scoreboard players remove $ui23_template_answer_linear3 ui_temp 1
execute if score $ui23_template_answer_linear3 ui_temp matches 1.. run function ui:ui/23/template/answer/item