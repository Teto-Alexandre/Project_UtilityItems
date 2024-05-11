#

#
execute if score $is ui_temp matches 1.. run data merge storage ui:common {input:{Mode:"create",Var:-10034,Var2:4,Rand:{RotX:1,RotY:1}}}
execute if score $is ui_temp matches 1 run function ui:common/particle
execute if score $is ui_temp matches 3 run function ui:common/particle
execute if score $is ui_temp matches 5 run function ui:common/particle
execute if score $is ui_temp matches 7 run function ui:common/particle
execute if score $is ui_temp matches 9 run function ui:common/particle
execute if score $is ui_temp matches 11 run function ui:common/particle
execute if score $is ui_temp matches 13 run function ui:common/particle
execute if score $is ui_temp matches 15 run function ui:common/particle
execute if score $is ui_temp matches 17 run function ui:common/particle
execute if score $is ui_temp matches 19 run function ui:common/particle
execute if score $is ui_temp matches 21 run function ui:common/particle
execute if score $is ui_temp matches 23 run function ui:common/particle
execute if score $is ui_temp matches 25 run function ui:common/particle

#
execute if score $is ui_temp matches 25.. run kill @s