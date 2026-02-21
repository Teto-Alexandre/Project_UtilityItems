#execute store result score $ui23_template_answer_linear2 ui_temp run data get storage ui:ui23_template_answer temp

scoreboard players set $ui23_template_answer_linear2 ui_temp 30
execute if score $ui23_template_answer_linear1 ui_temp matches 1.. run schedule function ui:ui/23/template/answer/re_single 1t

schedule function ui:ui/23/template/answer/re_all3 1t