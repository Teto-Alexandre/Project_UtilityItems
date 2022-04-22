#=======================================================================================================

scoreboard players remove @s ui_calc3 5

execute at @s run teleport @s ~ ~-5 ~

tag @s remove ui_9_3_1
execute as @s[scores={ui_calc3=60..}] at @s if block ~ ~ ~ minecraft:air run tag @s add ui_9_3_1

execute as @s[tag=!ui_9_3_1] at @s run function ui:ui/9/y_hit

execute as @s[scores={ui_calc3=60..},tag=ui_9_3_1] at @s run function ui:ui/9/y
kill @s[scores={ui_calc3=..59}]

#=======================================================================================================