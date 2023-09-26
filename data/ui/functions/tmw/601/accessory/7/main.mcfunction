# 金線の欠片

# 装着時演出
execute if entity @s[tag=tmw601_changed] run particle dust 0 0 0 2 ~ ~0.9 ~ 0.5 0.5 0.5 0 20
execute if entity @s[tag=tmw601_changed] run particle firework ~ ~0.9 ~ 0 0 0 0.1 20
execute if entity @s[tag=tmw601_changed] run playsound block.respawn_anchor.charge player @a ~ ~ ~ 0.5 0.5

#
#execute if score @s ui_st matches 1.. unless score @s ui_ct matches 1.. run function ui:tmw/601/head/1/act
execute if predicate ui:percentage/50 run particle dust 0 0 0 1 ~ ~0.9 ~ 0.5 0.5 0.5 0 1
data merge storage ui:common {input:{Mode:"create",Var:31,Rand:{Pos:1000,X:20,Z:20}}}
execute if predicate ui:percentage/5 positioned ~ ~0.5 ~ run function ui:common/particle