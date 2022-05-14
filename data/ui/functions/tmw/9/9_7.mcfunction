#=======================================================================================================

scoreboard players add @s ui_calc2 1

tag @s remove tmw_9_7_3
execute as @s[scores={ui_calc2=..99}] at @s if block ^ ^ ^0.5 #ui:nocol if block ^ ^ ^1 #ui:nocol run tag @s add tmw_9_7_3

execute at @s[tag=tmw_9_7_3] run teleport @s ^ ^ ^0.5
execute at @s[scores={ui_calc2=5..}] as @e[predicate=ui:load_unhurtable,type=!#ui:undead] unless entity @s[scores={ui_tmw_id=9}] run effect give @s[distance=..1] instant_damage 1 0 true
execute at @s[scores={ui_calc2=5..}] as @e[type=#ui:undead] unless entity @s[scores={ui_tmw_id=9}] run effect give @s[distance=..1] instant_health 1 0 true

particle dust 1 1 0.5 1 ~ ~1 ~ 0 0 0 0 1 force

tag @s[scores={ui_calc2=100..}] remove tmw_9_7_3
effect give @s[scores={ui_calc2=100..}] blindness 1 0 true
effect give @s[scores={ui_calc2=100..}] slow_falling 1 0 true

tag @s[tag=!tmw_9_7_3] remove tmw_9_7
effect give @s[tag=!tmw_9_7_3,scores={ui_calc2=..99}] slow_falling 1 0 true
execute at @s[tag=!tmw_9_7_3] run particle minecraft:dust 1 1 0.2 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute at @s[tag=!tmw_9_7_3] run particle minecraft:dust 1 1 0.8 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute as @s[tag=!tmw_9_7_3,scores={ui_calc2=..99}] run tp @s @s

execute as @s[scores={ui_calc2=..99},tag=tmw_9_7_3] at @s run function ui:tmw/9/9_7

#=======================================================================================================