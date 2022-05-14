#=======================================================================================================

scoreboard players add @s ui_tc 1

execute at @s[scores={ui_tc=20}] if entity @a[scores={ui_tmw_id=9,ui_st2=2..}] run tag @s add tmw_9_3_1
execute at @s[scores={ui_tc=20}] as @a[scores={ui_tmw_id=9,ui_st2=2..}] run teleport @s ^ ^ ^2 ~ ~

execute at @s[scores={ui_tc=41..64}] run teleport @s ^ ^ ^0.5
execute as @s[scores={ui_tc=41..64}] at @s run function ui:tmw/214/ref_common
execute at @s[scores={ui_tc=41..}] positioned ~ ~-1 ~ if entity @e[distance=..1,predicate=ui:load_unhurtable] run summon minecraft:armor_stand ~ ~1 ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_9_9"]}
execute at @s[scores={ui_tc=41..}] positioned ~ ~-1 ~ if entity @e[distance=..1,predicate=ui:load_unhurtable] run tag @s add tmw_9_3_2

execute at @s run particle dragon_breath ~ ~ ~ 0 0 0 0.1 1 force

kill @s[scores={ui_tc=65..}]
kill @s[tag=tmw_9_3_1]
kill @s[tag=tmw_9_3_2]

execute as @s[scores={ui_tc=41..64},tag=!tmw_9_3_2] at @s run function ui:tmw/9/9_3

#=======================================================================================================