#=======================================================================================================

scoreboard players add @s ui_tc 1

execute at @s run teleport @s ^ ^ ^0.5
execute as @s at @s run function ui:tmw/214/ref_common

execute at @s run particle dust 1 1 0.5 1 ~ ~ ~ 0 0 0 0 1 force @a[scores={ui_tmw_id=10}]

tag @s remove tmw_10_4_1
execute at @s if block ~ ~ ~ #ui:nocol run tag @s add tmw_10_4_1

execute as @s[tag=!tmw_10_4_1] at @s run summon minecraft:armor_stand ^ ^ ^-1.5 {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_10_3_1","tmw_10_3","tmw_10_2"]}
execute as @s[tag=!tmw_10_4_1] at @a[scores={ui_tmw_id=10}] run playsound entity.snow_golem.shoot master @p ~ ~ ~ 1 2 1
kill @s[tag=!tmw_10_4_1]

execute as @s[scores={ui_tc=..99},tag=tmw_10_4_1] at @s run function ui:tmw/10/10_4
kill @s[scores={ui_tc=100..}]

#=======================================================================================================