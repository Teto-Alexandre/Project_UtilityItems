#=======================================================================================================

scoreboard players add @s ui_calc2 1

tag @s remove tmw_7_2_3
execute as @s[scores={ui_calc2=..59}] at @s if block ^ ^ ^0.5 #ui:nocol if block ^ ^ ^1 #ui:nocol run tag @s add tmw_7_2_3

execute at @s[tag=tmw_7_2_3] run teleport @s ^ ^ ^0.5

particle dust 1 1 0.5 1 ~ ~1 ~ 0 0 0 0 1 force

tag @s[scores={ui_calc2=60..}] remove tmw_7_2_3
effect give @s[scores={ui_calc2=60..}] blindness 1 0 true
effect give @s[scores={ui_calc2=60..}] weakness 5 2 true
effect give @s[scores={ui_calc2=60..}] slowness 5 2 true

tag @s[tag=!tmw_7_2_3] remove tmw_7_2
effect give @s[tag=!tmw_7_2_3,scores={ui_calc2=..59}] slow_falling 1 0 true
execute at @s[tag=!tmw_7_2_3] run particle minecraft:dust 0.8 0.8 0.2 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute at @s[tag=!tmw_7_2_3] run particle minecraft:dust 0.8 0.8 0.8 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[tag=!tmw_7_2_3,scores={ui_calc2=..59}] run tp @s @s

execute as @s[scores={ui_calc2=..59},tag=tmw_7_2_3] at @s run function ui:tmw/7/7_2

#=======================================================================================================