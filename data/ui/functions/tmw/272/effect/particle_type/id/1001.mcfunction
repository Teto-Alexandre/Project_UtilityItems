data merge storage ui:common {input:{Mode:"create",Var:34,Var2:-1,Rand:{RotY:1}}}
#execute store result storage ui:common input.Var2 int 1 run scoreboard players get $particle ui_temp

execute rotated as @s positioned ~ ~1 ~ rotated ~ 0 positioned ^ ^ ^2 rotated ~90 0 run function ui:common/particle