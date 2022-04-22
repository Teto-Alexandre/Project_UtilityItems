#=======================================================================================================

scoreboard players add @s ui_tc 1

teleport @s ^ ^ ^0.5
execute as @s at @s run function ui:tmw/214/ref_common
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run effect give @e[distance=..1,type=!#ui:notmob,type=!#ui:undead] instant_damage 1 1 true
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run effect give @e[distance=..1,type=#ui:undead] instant_health 1 1 true
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run effect give @e[distance=..1,type=!#ui:notmob] blindness 2 0 true

particle dust 1 1 0.5 1 ~ ~ ~ 0 0 0 0 1 force

kill @s[scores={ui_tc=200..}]

execute as @s[scores={ui_tc=..199}] at @s run function ui:tmw/5/5_1

#=======================================================================================================