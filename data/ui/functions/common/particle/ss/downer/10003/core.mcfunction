# 放出方向
execute if score $is ui_temp matches 1 run particle flash ~ ~ ~ 0 0 0 0 1 force
execute if score $is ui_temp matches 1 run particle firework ~ ~5 ~ 0 5 0 0.05 100 force
#data merge storage ui:common {input:{Mode:"create",Var:5,Rand:{Pos:10000,Rot:900}}}
scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #2 ui_num
execute if score $is_temp ui_temp matches 0 run data merge storage ui:common {input:{Mode:"create",Var:-10014,Rand:{RotX:1,X:300,Y:0,Z:300}}}
execute positioned ~ ~ ~ run function ui:common/particle

scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #6 ui_num
execute if score $is_temp ui_temp matches 0 positioned ~ ~0.5 ~ run function ui:common/particle/ss/downer/10003/particle

#
execute if score $is ui_temp matches 200.. run kill @s