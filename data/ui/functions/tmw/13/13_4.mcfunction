#=======================================================================================================

scoreboard players add @s ui_tc 1

teleport @s ^ ^ ^0.5
execute as @s at @s run function ui:tmw/214/ref_common
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run effect give @e[distance=..1,predicate=ui:load_unhurtable] slowness 3 2 true
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run effect give @e[distance=..1,predicate=ui:load_unhurtable] mining_fatigue 3 2 true
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run effect give @e[distance=..1,predicate=ui:load_unhurtable] weakness 3 1 true
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run effect give @e[distance=..1,predicate=ui:load_unhurtable] blindness 3 0 true

particle dust 1 1 0.5 1 ~ ~ ~ 0 0 0 0 1 force

kill @s[scores={ui_tc=100..}]

execute as @s[scores={ui_tc=..99}] at @s run function ui:tmw/13/13_4

#=======================================================================================================