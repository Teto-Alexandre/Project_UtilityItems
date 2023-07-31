#
execute if score $is ui_temp matches 1 run function ui:common/particle/ss/downer/10027/first
execute if score $is ui_temp matches 1 run data merge storage ui:common {input:{Mode:"create",Var:25,Var2:5}}
execute if score $is ui_temp matches 1 run execute at @s run function ui:common/particle
execute if score $is ui_temp matches 11 run function ui:common/particle/ss/downer/10027/flash

#
execute if score $is ui_temp matches 11.. run kill @s
