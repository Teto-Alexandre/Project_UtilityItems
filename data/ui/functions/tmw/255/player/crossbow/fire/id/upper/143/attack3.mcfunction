#
data merge storage ui:common {input:{Mode:"create",Var:-10033,Var2:1,Num:66,Rand:{X:100,Y:0,Z:100,Pos:1000,RotX:1,RotY:2}}}
function ui:common/particle
tag @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,sort=nearest,limit=1] add ui_temp_target