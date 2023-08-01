#
particle minecraft:dust 1 0.8 0 1.5 ~ ~ ~ 0.05 0.05 0.05 0 1 force
particle minecraft:dust 1 0.8 0 1.5 ^ ^ ^0.25 0.05 0.05 0.05 0 1 force
teleport @s ^ ^ ^0.5

scoreboard players remove $count ui_temp 1
execute at @s positioned ~-0.5 ~-0.2 ~-0.5 if entity @e[dx=0,tag=ui_temp_target] at @s positioned ~-0.5 ~-0.4 ~-0.5 if entity @e[dx=0,tag=ui_temp_target] run tag @s add ui_temp_hit
execute if entity @s[tag=ui_temp_boost] at @s unless block ~ ~ ~ #ui:nocol run function ui:common/particle/ss/downer/10026/laser/boost_reflect
execute if score $count ui_temp matches 1.. unless entity @s[tag=ui_temp_hit] at @s if block ~ ~ ~ #ui:nocol run function ui:common/particle/ss/downer/10026/laser/move.lp
