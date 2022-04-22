#=======================================================================================================

scoreboard players add @s ui_tc 1

execute at @s run teleport @s ^ ^ ^0.5

execute at @s run particle dust 1 1 0.5 0.6 ~ ~ ~ 0 0 0 0 1 force

execute if entity @e[tag=tmw_13_2,distance=..1] run tag @s add tmw_13_3_2

execute as @s[scores={ui_tc=..99},tag=!tmw_13_3_2] at @s if entity @e[tag=tmw_13_2] run function ui:tmw/13/13_3
kill @s[scores={ui_tc=100..}]
kill @s[tag=tmw_13_3_2]
execute unless entity @e[tag=tmw_13_2] run kill @s

#=======================================================================================================