#
particle minecraft:dust 1 0.8 0 0.8 ~ ~ ~ 0.03 0.03 0.03 0 1 force
particle minecraft:dust 1 0.8 0 0.8 ^ ^ ^0.125 0.03 0.03 0.03 0 1 force
particle minecraft:dust 1 0.8 0 0.8 ^ ^ ^0.25 0.03 0.03 0.03 0 1 force
particle minecraft:dust 1 0.8 0 0.8 ^ ^ ^0.375 0.03 0.03 0.03 0 1 force
teleport @s ^ ^ ^0.5

scoreboard players remove $count ui_temp 1
execute at @s positioned ~-0.5 ~-0.2 ~-0.5 if entity @e[dx=0,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s positioned ~-0.5 ~-0.4 ~-0.5 if entity @e[dx=0,predicate=ui:load_unhurtable,tag=!ui_temp_team] run tag @s add ui_temp_hit
execute if score $count ui_temp matches 1.. unless entity @s[tag=ui_temp_hit] at @s run function ui:common/particle/ss/downer/10027/laser/move.lp
