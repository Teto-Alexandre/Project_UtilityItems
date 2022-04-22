#=======================================================================================================

scoreboard players add @s ui_tc 1

execute at @s run teleport @s ^ ^ ^0.5
execute as @s at @s run function ui:tmw/214/ref_common
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run tag @e[distance=..2,type=!#ui:notmob] add tmw_9_2
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ as @e[distance=..2,type=!#ui:notmob] at @s run particle dust 1 0 1 2 ~ ~3 ~ 0 0 0 0 1 force @a[scores={ui_tmw_id=9}]

execute at @s run particle dust 1 0 1 0.8 ~ ~ ~ 0 0 0 0 1 force @a[scores={ui_tmw_id=9}]

tag @s remove tmw_9_2_3
execute as @s[scores={ui_tc=..99}] at @s if block ~ ~ ~ #ui:nocol run tag @s add tmw_9_2_3
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ if entity @e[distance=..2,type=!#ui:notmob] run tag @s remove tmw_9_2_3

kill @s[scores={ui_tc=100..}]
kill @s[tag=!tmw_9_2_3]

execute as @s[scores={ui_tc=..99},tag=tmw_9_2_3] at @s run function ui:tmw/9/9_1

#=======================================================================================================