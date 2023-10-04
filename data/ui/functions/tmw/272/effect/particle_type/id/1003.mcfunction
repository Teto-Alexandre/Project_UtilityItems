data merge storage ui:common {input:{Mode:"create",Var:32,Var2:3,Num:3,Rand:{X:20,Z:20,RotX:1,RotY:2}}}
#execute store result storage ui:common input.Var2 int 1 run scoreboard players get $particle ui_temp

execute positioned ~ ~-2 ~ run function ui:common/particle