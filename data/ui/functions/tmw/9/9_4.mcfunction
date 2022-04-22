#=======================================================================================================

scoreboard players add @s ui_tc 1

execute at @s run teleport @s ^ ^ ^0.5
execute at @s[scores={ui_tc=30..}] run teleport @s ^ ^ ^0.5
execute as @s at @s run function ui:tmw/214/ref_common
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run effect give @e[distance=..1,type=!#ui:notmob,type=!#ui:undead] instant_damage 1 1 true
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run effect give @e[distance=..1,type=#ui:undead] instant_health 1 1 true

execute at @s run particle dust 1 0.6 0 1 ~ ~ ~ 0.3 0.3 0.3 0 1 force
execute at @s[scores={ui_tc=30..}] run particle flame ~ ~ ~ 0.1 0.1 0.1 0 1 force

tag @s remove tmw_2_2_3
execute as @s[scores={ui_tc=..99}] at @s if block ^ ^ ^1 #ui:nocol run tag @s add tmw_2_2_3

execute at @s[scores={ui_tc=100..}] run summon tnt ~ ~ ~
kill @s[scores={ui_tc=100..}]
execute at @s[tag=!tmw_2_2_3] run summon tnt ~ ~ ~
kill @s[tag=!tmw_2_2_3]

#=======================================================================================================