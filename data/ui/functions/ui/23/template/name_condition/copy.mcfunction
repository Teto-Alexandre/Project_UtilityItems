# 一致すると
execute if score $name_condition_check ui_temp matches 0 run data modify storage ui:temp card set from storage ui:ui23_template_answer_temp _.tag.display
execute if score $name_condition_check ui_temp matches 0 run function ui:tmw/272/effect/broadcast/
