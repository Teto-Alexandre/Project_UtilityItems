# 貫通

# 放出方向
data merge storage ui:common {input:{Mode:"create",Var:14,Rand:{X:200,Y:0,Z:200,Rot:500}}}
execute if predicate ui:percentage/75 run data merge storage ui:common {input:{Mode:"create",Var:13,Rand:{X:300,Y:0,Z:300,Rot:500}}}
execute if predicate ui:percentage/50 positioned ~ ~ ~ rotated ~ 0 run function ui:common/particle

#
teleport @s ~ ~ ~ ~3 ~

#
execute if score $is ui_temp matches 60.. run kill @s