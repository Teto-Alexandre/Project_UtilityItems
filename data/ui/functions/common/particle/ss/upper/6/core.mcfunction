# 減量版

# 放出方向
#particle dust 1 1 0 4 ^ ^ ^ 0 0 0 0 1 force
#particle dust 1 1 0 3.5 ^ ^ ^0.5 0 0 0 0 1 force
#particle dust 1 1 0 3 ^ ^ ^1 0 0 0 0 1 force
#particle dust 1 1 0 2.5 ^ ^ ^1.5 0 0 0 0 1 force
#particle dust 1 1 0 2 ^ ^ ^2 0 0 0 0 1 force
#particle dust 1 1 0 1.75 ^ ^ ^2.4 0 0 0 0 1 force
#particle dust 1 1 0 1.5 ^ ^ ^2.7 0 0 0 0 1 force
#particle dust 1 1 0 1.25 ^ ^ ^2.9 0 0 0 0 1 force
#particle dust 1 1 0 1 ^ ^ ^3 0 0 0 0 1 force
#data merge storage ui:common {input:{Mode:"create",Var:5,Rand:{Pos:10000,Rot:900}}}
data merge storage ui:common {input:{Mode:"create",Var:7,Rand:{X:300,Y:100,Z:300,Rot:300}}}
execute positioned ~ ~ ~ run function ui:common/particle

#
execute if score $is ui_temp matches 200.. run kill @s