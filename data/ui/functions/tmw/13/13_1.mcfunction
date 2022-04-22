#=======================================================================================================

scoreboard players add @s ui_tc 1

execute at @s run teleport @s ^ ^ ^0.5
execute as @s at @s run function ui:tmw/214/ref_common

execute at @s run particle dust 1 1 0.5 1 ~ ~ ~ 0 0 0 0 1 force

tag @s remove tmw_13_1_1
execute at @s if entity @e[type=!#ui:notmob,distance=..1] run tag @s add tmw_13_1_1
execute at @s positioned ~ ~ ~ if entity @e[type=!#ui:notmob,dx=0,dy=0,dz=0] run tag @s add tmw_13_1_2
execute at @s if block ~ ~ ~ #ui:nocol run tag @s add tmw_13_1_1

#非ブロックに衝突時
execute as @s[tag=tmw_13_1_2] at @s run function ui:tmw/13/13_1_2
#ブロックに衝突時
execute as @s[tag=!tmw_13_1_1] at @s run function ui:tmw/13/13_1_1

execute as @s[scores={ui_tc=..99},tag=tmw_13_1_1,tag=!tmw_13_1_2] at @s run function ui:tmw/13/13_1
kill @s[scores={ui_tc=100..}]

#=======================================================================================================