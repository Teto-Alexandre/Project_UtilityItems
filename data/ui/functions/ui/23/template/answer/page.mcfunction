execute store result score $ui23_template_answer_linear1 ui_temp run data get storage ui:ui23_template_answer temp

execute if score $ui23_template_answer_linear1 ui_temp matches 1.. run schedule function ui:ui/23/template/answer/chest 45t
