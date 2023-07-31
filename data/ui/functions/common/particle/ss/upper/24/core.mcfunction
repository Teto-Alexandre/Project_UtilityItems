#
execute if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10012/period1
execute if score $is ui_temp matches 6 run function ui:common/particle/ss/downer/10012/period2

#
#execute if score $is ui_temp >= @s ui_is2 run kill @s
execute if score $is ui_temp matches 6.. run kill @s