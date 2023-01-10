# 貫通

# 放出方向
data merge storage ui:common {input:{Mode:"create",Var:10,Rand:{Pos:5000,X:50,Y:50,Z:50,Rot:2000}}}
execute positioned ~ ~ ~ run function ui:common/particle

#
execute if score $is ui_temp matches 20.. run kill @s