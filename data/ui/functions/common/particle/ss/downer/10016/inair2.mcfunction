# 空中にあるなら
execute unless block ~ ~-0.2 ~ #ui:nocol run teleport @s ~ ~ ~
execute if block ~ ~-0.2 ~ #ui:nocol positioned ~ ~-0.1 ~ run function ui:common/particle/ss/downer/10016/inair2