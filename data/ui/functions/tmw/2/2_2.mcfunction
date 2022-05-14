#=======================================================================================================

scoreboard players add @s ui_tc 1

execute at @s run teleport @s ^ ^ ^0.5
function ui:tmw/214/ref_common
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ if entity @e[distance=..1,predicate=ui:load_unhurtable] run tag @s add tmw_2_2_4
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run effect give @e[distance=..1,predicate=ui:load_unhurtable,type=!#ui:undead] instant_damage 1 0 true
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run effect give @e[distance=..1,type=#ui:undead] instant_health 1 0 true
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run effect give @e[distance=..1,predicate=ui:load_unhurtable] wither 1 1 true
execute at @s[scores={ui_tc=5..}] positioned ~ ~-1 ~ run scoreboard players add @e[distance=..1,predicate=ui:load_unhurtable] ui_hp 1

execute at @s run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0 1 force

tag @s remove tmw_2_2_3
execute as @s[scores={ui_tc=..99}] at @s if block ~ ~ ~ #ui:nocol run tag @s add tmw_2_2_3

kill @s[scores={ui_tc=100..}]
kill @s[tag=!tmw_2_2_3]
kill @s[tag=tmw_2_2_4]

execute as @s[scores={ui_tc=..99},tag=tmw_2_2_3,tag=!tmw_2_2_4] at @s run function ui:tmw/2/2_2

#=======================================================================================================