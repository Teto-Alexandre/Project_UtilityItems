#data modify storage ui:temp card set from storage ui:ui23_template_answer_temp _.tag.display
#function ui:tmw/272/effect/broadcast/
data modify storage ui:dimensional_search list append from storage ui:ui23_template_answer_temp _
data remove storage ui:dimensional_search list[-1].Slot
execute at @a run tag @e[tag=ui_24_1,distance=..5] add force_refresh