#
data merge storage ui:common {input:{Mode:"create",Var:19,Var2:30}}
execute store result storage ui:common input.Var2 int 1 run scoreboard players get $temp ui_temp
execute rotated ~ 0 run function ui:common/particle
