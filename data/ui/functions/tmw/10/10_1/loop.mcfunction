#=======================================================================================================

scoreboard players add @s ui_tc 1

teleport @s ^ ^ ^0.5

particle dust 1 1 0.5 0.5 ~ ~ ~ 0 0 0 0 1 force @a

tag @s add tmw_10_1_1
execute if entity @e[tag=tmw_10_2,scores={ui_calc2=0},distance=..1] run tag @s remove tmw_10_1_1

kill @s[tag=!tmw_10_1_1]

execute as @s[scores={ui_tc=..149},tag=tmw_10_1_1] at @s run function ui:tmw/10/10_1/loop
kill @s[scores={ui_tc=150..}]

#=======================================================================================================