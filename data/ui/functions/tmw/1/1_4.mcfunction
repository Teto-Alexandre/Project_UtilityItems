#=======================================================================================================

scoreboard players add @s ui_tc 1

teleport @s ^ ^ ^0.5
execute as @s at @s run function ui:tmw/214/ref_common
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run tag @e[distance=..2,type=!#ui:notmob,tag=!ui_unaccessable] add tmw_1_3
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ as @e[distance=..2,type=!#ui:notmob,tag=!ui_unaccessable] run tellraw @a[scores={ui_tmw_id=1}] ["",{"selector":"@s"},{"text":" を歪みに捉えた"}]

particle dust 1 0 1 1 ~ ~ ~ 0 0 0 0 1 force @a[scores={ui_tmw_id=1}]

tag @s remove tmw_1_3_3
execute as @s[scores={ui_tc=..99}] at @s if block ~ ~ ~ #ui:nocol run tag @s add tmw_1_3_3
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ if entity @e[distance=..2,type=!#ui:notmob] run tag @s remove tmw_1_3_3

kill @s[scores={ui_tc=100..}]
kill @s[tag=!tmw_1_3_3]

execute as @s[scores={ui_tc=..99},tag=tmw_1_3_3] at @s run function ui:tmw/1/1_4

#=======================================================================================================