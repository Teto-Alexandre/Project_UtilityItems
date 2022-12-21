# 減量版

# 放出方向
execute if score $is ui_temp matches 20..79 run particle flash ~ ~ ~ 1 1 1 0 1 force
execute if score $is ui_temp matches 80..139 run particle flash ~ ~ ~ 2.5 2.5 2.5 0 1 force
execute if score $is ui_temp matches 140..199 run particle flash ~ ~ ~ 5 5 5 0 2 force
execute if score $is ui_temp matches 200..210 run particle flash ~ ~ ~ 10 10 10 0 2 force
execute if score $is ui_temp matches 200..250 run particle flash ~ ~ ~ 5 5 5 0 2 force
execute if score $is ui_temp matches 251..300 run particle flash ~ ~ ~ 3 3 3 0 1 force
#data merge storage ui:common {input:{Mode:"create",Var:5,Rand:{Pos:10000,Rot:900}}}
execute if score $is ui_temp matches 200..210 run data merge storage ui:common {input:{Mode:"create",Var:7,Rand:{X:8,Y:8}}}
execute if score $is ui_temp matches 211..220 run data merge storage ui:common {input:{Mode:"create",Var:9,Rand:{Rot:500}}}
execute positioned ~ ~ ~ run function ui:common/particle
execute if score $is ui_temp matches 200..210 run data merge storage ui:common {input:{Mode:"create",Var:7,Rand:{X:8,Y:8}}}
execute if score $is ui_temp matches 211..220 run data merge storage ui:common {input:{Mode:"create",Var:9,Rand:{Rot:500}}}
execute positioned ~ ~ ~ run function ui:common/particle
execute if score $is ui_temp matches 200..210 run data merge storage ui:common {input:{Mode:"create",Var:7,Rand:{X:8,Y:8}}}
execute if score $is ui_temp matches 211..220 run data merge storage ui:common {input:{Mode:"create",Var:9,Rand:{Rot:500}}}
execute positioned ~ ~ ~ run function ui:common/particle
execute if score $is ui_temp matches 200..210 run data merge storage ui:common {input:{Mode:"create",Var:7,Rand:{X:8,Y:8}}}
execute if score $is ui_temp matches 211..220 run data merge storage ui:common {input:{Mode:"create",Var:9,Rand:{Rot:500}}}
execute positioned ~ ~ ~ run function ui:common/particle
execute if score $is ui_temp matches 200..210 run data merge storage ui:common {input:{Mode:"create",Var:7,Rand:{X:8,Y:8}}}
execute if score $is ui_temp matches 211..220 run data merge storage ui:common {input:{Mode:"create",Var:9,Rand:{Rot:500}}}
execute positioned ~ ~ ~ run function ui:common/particle
execute if score $is ui_temp matches 200..210 run data merge storage ui:common {input:{Mode:"create",Var:7,Rand:{X:8,Y:8}}}
execute if score $is ui_temp matches 211..220 run data merge storage ui:common {input:{Mode:"create",Var:9,Rand:{Rot:500}}}
execute positioned ~ ~ ~ run function ui:common/particle
execute if score $is ui_temp matches 200..210 run data merge storage ui:common {input:{Mode:"create",Var:7,Rand:{X:8,Y:8}}}
execute if score $is ui_temp matches 211..220 run data merge storage ui:common {input:{Mode:"create",Var:9,Rand:{Rot:500}}}
execute positioned ~ ~ ~ run function ui:common/particle
execute if score $is ui_temp matches 200..210 run data merge storage ui:common {input:{Mode:"create",Var:7,Rand:{X:8,Y:8}}}
execute if score $is ui_temp matches 211..220 run data merge storage ui:common {input:{Mode:"create",Var:9,Rand:{Rot:500}}}
execute positioned ~ ~ ~ run function ui:common/particle
execute if score $is ui_temp matches 200..210 run data merge storage ui:common {input:{Mode:"create",Var:7,Rand:{X:8,Y:8}}}
execute if score $is ui_temp matches 211..220 run data merge storage ui:common {input:{Mode:"create",Var:9,Rand:{Rot:500}}}
execute positioned ~ ~ ~ run function ui:common/particle
execute if score $is ui_temp matches 200..210 run data merge storage ui:common {input:{Mode:"create",Var:7,Rand:{X:8,Y:8}}}
execute if score $is ui_temp matches 211..220 run data merge storage ui:common {input:{Mode:"create",Var:9,Rand:{Rot:500}}}
execute positioned ~ ~ ~ run function ui:common/particle

#
execute if score $is ui_temp matches 300.. run kill @s