#
data merge storage ui:common {input:{Mode:"create",Var:-10033,Var2:2,Num:1}}
function ui:common/particle
tag @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,sort=nearest,limit=1] add ui_temp_target