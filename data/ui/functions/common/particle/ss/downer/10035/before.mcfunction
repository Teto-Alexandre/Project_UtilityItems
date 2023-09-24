execute if predicate ui:percentage/50 run particle minecraft:dust_color_transition 0 1 1 1.5 0 1 0 ~ ~ ~ 0 0 0 0 1 force
execute if predicate ui:percentage/50 run particle minecraft:dust_color_transition 0 1 1 1.5 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute if predicate ui:percentage/50 run particle minecraft:dust_color_transition 0 1 1 1.5 1 1 1 ~ ~ ~ 0 0 0 0 1 force

execute at @s run teleport @s ^ ^ ^0.5

execute at @s if predicate ui:percentage/50 run particle minecraft:dust_color_transition 0 1 1 1.5 0 1 0 ~ ~ ~ 0 0 0 0 1 force
execute at @s if predicate ui:percentage/50 run particle minecraft:dust_color_transition 0 1 1 1.5 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute at @s if predicate ui:percentage/50 run particle minecraft:dust_color_transition 0 1 1 1.5 1 1 1 ~ ~ ~ 0 0 0 0 1 force

execute at @s run teleport @s ^ ^ ^0.5

execute at @s if predicate ui:percentage/50 run particle minecraft:dust_color_transition 0 1 1 1.5 0 1 0 ~ ~ ~ 0 0 0 0 1 force
execute at @s if predicate ui:percentage/50 run particle minecraft:dust_color_transition 0 1 1 1.5 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute at @s if predicate ui:percentage/50 run particle minecraft:dust_color_transition 0 1 1 1.5 1 1 1 ~ ~ ~ 0 0 0 0 1 force

execute at @s run teleport @s ^ ^ ^0.5

execute if predicate ui:percentage/50 run scoreboard players add @s ui_is 1
execute if predicate ui:percentage/50 run scoreboard players add @s ui_is 2
execute if predicate ui:percentage/50 run scoreboard players add @s ui_is 4
execute if predicate ui:percentage/50 run scoreboard players add @s ui_is 8