# @s のターゲットをリセットしてから ui_common_mob_target の攻撃対象化 AEC を出す (複数版)

#
function ui:common/mob/set_target/movepoint_kill

#
function ui:misc/act/return_obj_id

#
summon minecraft:skeleton ~ ~ ~ {Tags:["ui_unhurtable","ui_common_mob_movepoint","ui_temp_target"],NoAI:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:false}],Silent:1b}
scoreboard players operation @e[tag=ui_temp_target] ui_obj_id = $obj_id ui_temp
scoreboard players operation @s ui_common_mob_target_obj = $obj_id ui_temp

#
tp @s @s
#effect give @s glowing
tag @s add ui_common_mob_temp_antikb
attribute @s minecraft:generic.knockback_resistance modifier add 0-0-0-0-1 "NoKB_temp" 1 add
attribute @s minecraft:generic.follow_range modifier add 0-0-0-0-2 "NoFollow_temp" -1024 add

#
#execute at @e[tag=ui_common_mob_crowd] run summon area_effect_cloud ~ ~ ~ {Age:4,Duration:6,Effects:[{Id:6,Amplifier:0,Duration:1,ShowIcon:false,ShowParticles:false},{Id:7,Amplifier:0,Duration:1,ShowIcon:false,ShowParticles:false}],Tags:["ui_temp_snowball"]}
execute at @s run summon minecraft:snowball ~ ~-0.31 ~ {Tags:["ui_temp_snowball"],Motion:[0.0,10.0,0.0],Item:{id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120003}},Owner:[I;0,0,0,0]}

execute as @e[tag=ui_temp_snowball] run data modify entity @s Owner set from entity @e[tag=ui_temp_target,limit=1] UUID
tag @e[tag=ui_temp_snowball] remove ui_temp_snowball
tag @s remove ui_common_mob_crowd
tag @e[tag=ui_temp_target] remove ui_temp_target
