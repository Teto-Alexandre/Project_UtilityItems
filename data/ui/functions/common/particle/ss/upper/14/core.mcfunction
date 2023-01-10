# 貫通

# 放出方向
data merge storage ui:common {input:{Mode:"create",Var:12,Rand:{X:150,Y:0,Z:150,Rot:500}}}
execute positioned ~ ~ ~ rotated ~ 0 run function ui:common/particle

#
teleport @s ~ ~ ~ ~3 ~

#
execute if score $is ui_temp matches 20.. run kill @s