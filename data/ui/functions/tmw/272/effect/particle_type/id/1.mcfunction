data merge storage ui:common {input:{Mode:"create",Var:32,Var2:-1,Rand:{RotX:1,RotY:2}}}
execute store result storage ui:common input.Var2 int 1 run scoreboard players get $particle ui_temp

execute positioned ~ ~1 ~ run function ui:common/particle