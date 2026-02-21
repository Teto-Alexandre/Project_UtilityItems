execute if data storage ui:ui23_template_answer temp[0].tag.tmw.cg run function ui:ui/23/template/answer/re_each

data remove storage ui:ui23_template_answer temp[0]
scoreboard players remove $ui23_template_answer_linear2 ui_temp 1
execute if score $ui23_template_answer_linear2 ui_temp matches 1.. run function ui:ui/23/template/answer/re_single