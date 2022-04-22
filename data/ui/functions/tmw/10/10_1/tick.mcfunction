#=======================================================================================================

execute as @e[tag=tmw_10_3_1,scores={ui_calc1=1..}] run scoreboard players operation @s ui_calc2 = @s ui_calc1
scoreboard players operation @e[tag=tmw_10_3_1,scores={ui_calc1=1..}] ui_calc2 -= @s ui_calc1

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","tmw_10_1_2"]}
execute at @s facing entity @e[tag=tmw_10_2,scores={ui_calc2=0}] feet run teleport @e[tag=tmw_10_1_2,sort=nearest,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s ui_st 1
scoreboard players set @s[scores={ui_st=6..}] ui_st 1
execute at @s[scores={ui_st=1}] as @e[tag=tmw_10_1_2] at @s run teleport @s ^ ^ ^0.1
execute at @s[scores={ui_st=2}] as @e[tag=tmw_10_1_2] at @s run teleport @s ^ ^ ^0.2
execute at @s[scores={ui_st=3}] as @e[tag=tmw_10_1_2] at @s run teleport @s ^ ^ ^0.3
execute at @s[scores={ui_st=4}] as @e[tag=tmw_10_1_2] at @s run teleport @s ^ ^ ^0.4
execute as @e[tag=tmw_10_1_2] at @s run function ui:tmw/10/10_1/loop
execute at @s run particle minecraft:enchant ~ ~0.5 ~ 0 0 0 0.5 5 force
execute at @e[tag=tmw_10_3_1] run particle minecraft:dust 1 1 0.5 0.8 ~ ~ ~ 0.3 0.3 0.3 0 5 force

execute at @s as @e[type=!#ui:notmob,tag=!ui_unaccessable,distance=..1] run tag @s add tmw_10_p
execute at @s as @e[type=!#ui:notmob,tag=!ui_unaccessable,distance=..1] run tag @s add ui_kb
execute at @e[tag=tmw_10_p] as @s run scoreboard players add @s ui_tc 100
execute at @s as @e[tag=tmw_10_p] run teleport @s @e[tag=tmw_10_2,scores={ui_calc2=0},limit=1]
execute at @s facing entity @e[tag=tmw_10_2,scores={ui_calc2=0}] feet as @e[tag=tmw_10_p] positioned as @s run teleport @s ~ ~ ~ ~ ~
effect give @e[tag=tmw_10_p] slow_falling 1 0 true
effect give @e[tag=tmw_10_p] levitation 1 50 true
tag @e[tag=tmw_10_p] remove tmw_10_p
execute as @e[tag=tmw_10_p] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.8 2 0

scoreboard players add @s ui_tc 1
execute at @s[scores={ui_tc=1200..}] run kill @e[tag=tmw_10_2,scores={ui_calc2=0}]
kill @s[scores={ui_tc=1200..}]

#=======================================================================================================