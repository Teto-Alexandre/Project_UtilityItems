#
teleport @s ~ ~ ~ ~ 0

#
data merge storage ui:common {input:{Mode:"create",Var:28,Var2:3}}
execute at @s positioned ^ ^ ^1 rotated ~90 ~-90 run function ui:common/particle
data merge storage ui:common {input:{Mode:"create",Var:28,Var2:4}}
execute at @s positioned ^ ^ ^2 rotated ~90 ~-90 run function ui:common/particle
data merge storage ui:common {input:{Mode:"create",Var:28,Var2:5}}
execute at @s positioned ^ ^ ^3 rotated ~90 ~-90 run function ui:common/particle
data merge storage ui:common {input:{Mode:"create",Var:28,Var2:3}}
execute at @s positioned ^ ^ ^4 rotated ~90 ~-90 run function ui:common/particle

#
execute as @e[tag=ui_temp_target,limit=1] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^10 run teleport @e[tag=ui_temp_this] ~ ~ ~ facing entity @e[tag=ui_temp_target,limit=1] eyes
execute at @s run teleport @s ~ ~ ~ ~ 0

#
execute run data merge storage ui:common {input:{Mode:"create",Var:28,Var2:3}}
execute at @s positioned ^ ^ ^1 rotated ~90 ~-90 run function ui:common/particle
execute run data merge storage ui:common {input:{Mode:"create",Var:28,Var2:4}}
execute at @s positioned ^ ^ ^2 rotated ~90 ~-90 run function ui:common/particle