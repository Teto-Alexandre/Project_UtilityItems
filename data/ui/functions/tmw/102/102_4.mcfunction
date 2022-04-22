#=======================================================================================

scoreboard players add @s ui_tc 1

tag @s add ui_temp_this
execute if score @s ui_tc matches 20.. run teleport @s[tag=tmw_102_3_2] ^ ^ ^1
execute at @s[scores={ui_tc=20..69}] run scoreboard players operation @e[type=!#ui:notmob,distance=..2] ui_tmw102_id = @s ui_tmw102_id
execute as @e[type=!#ui:notmob] at @e[tag=ui_temp_this,limit=1] if score @s ui_tmw102_id = @e[tag=ui_temp_this,limit=1] ui_tmw102_id run teleport @s ~ ~ ~
tag @s remove ui_temp_this

execute if score @s ui_tc matches 20 run playsound minecraft:entity.squid.squirt player @a ~ ~ ~ 3 0.6
particle dust 0.5 1 1 1 ^ ^1 ^-1 0.3 0.3 0.3 0 3 force
particle dust 0.5 1 1 1 ^ ^1 ^ 0.3 0.3 0.3 0 3 force
particle dust 0.5 1 1 1 ^ ^1 ^1 0.3 0.3 0.3 0 3 force
particle block packed_ice ^ ^1 ^-1 0.3 0.3 0.3 0 3 force
particle block packed_ice ^ ^1 ^ 0.3 0.3 0.3 0 3 force
particle block packed_ice ^ ^1 ^1 0.3 0.3 0.3 0 3 force

tag @s remove tmw_102_3_2
execute as @s[scores={ui_tc=..49}] at @s if block ^ ^ ^1 #ui:nocol run tag @s add tmw_102_3_2
execute at @s[scores={ui_tc=50}] run playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 3 0.6
execute at @s[scores={ui_tc=50}] run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.5
execute at @s[scores={ui_tc=50}] run particle dust 0.5 1 1 1 ^ ^1 ^-1 0.5 0.5 0.5 0 20 force
execute at @s[scores={ui_tc=50}] run particle block packed_ice ^ ^1 ^-1 0.5 0.5 0.5 0 20 force
execute at @s[scores={ui_tc=50}] as @e[type=!#ui:notmob,distance=..1] at @s run function ui:tmw/102/102_5

kill @s[scores={ui_tc=50..}]
#kill @s[tag=!tmw_102_3_2]

#=======================================================================================