#
data merge storage ui:common {input:{Mode:"create",Var:-10033,Var2:1,Num:5,Rand:{X:30,Y:30,Z:30,RotX:1,RotY:2}}}
function ui:common/particle
tag @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,sort=nearest,limit=1] add ui_temp_target