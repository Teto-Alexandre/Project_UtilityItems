#=======================================================================================================

scoreboard players add @s ui_tc 1

execute at @s run teleport @s ^ ^ ^0.5
execute as @s at @s run function ui:tmw/214/ref_common
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run effect give @e[distance=..1,type=!#ui:notmob] blindness 1 0 true
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run tp @e[distance=..1,type=!#ui:notmob] @a[scores={ui_tmw_id=9},sort=nearest,limit=1]

execute at @s run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force

kill @s[scores={ui_tc=100..}]

execute as @s[scores={ui_tc=..99}] at @s run function ui:tmw/9/9_5

#=======================================================================================================