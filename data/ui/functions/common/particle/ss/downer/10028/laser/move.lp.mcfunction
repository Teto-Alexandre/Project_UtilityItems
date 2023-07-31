#
particle minecraft:dust 1 0.8 0 0.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
teleport @s ^ ^ ^0.5

scoreboard players remove $count ui_temp 1
execute at @s positioned ~-0.5 ~-0.2 ~-0.5 if entity @e[dx=0,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s positioned ~-0.5 ~-0.4 ~-0.5 if entity @e[dx=0,predicate=ui:load_unhurtable,tag=!ui_temp_team] run tag @s add ui_temp_hit
execute at @s positioned ~-0.5 ~-0.2 ~-0.5 if entity @e[dx=0,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s positioned ~-0.5 ~-0.4 ~-0.5 if entity @e[dx=0,predicate=ui:load_unhurtable,tag=!ui_temp_team] run tag @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,sort=nearest,limit=1] add ui_temp_damage
execute if score $count ui_temp matches 1.. at @s run function ui:common/particle/ss/downer/10028/laser/move.lp
