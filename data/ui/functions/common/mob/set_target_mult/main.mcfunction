# @s のターゲットをリセットしてから ui_common_mob_target の攻撃対象化 AEC を出す (複数版)

#
execute as @e[tag=ui_common_mob_crowd] run function ui:common/mob/set_target/movepoint_kill
execute unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id
scoreboard players operation @e[tag=ui_common_mob_crowd] ui_common_mob_target_obj = @s ui_obj_id

#
tag @s add ui_temp_target

#
execute as @e[tag=ui_common_mob_crowd] run tp @s @s
#execute as @e[tag=ui_common_mob_crowd] run effect give @s glowing
tag @e[tag=ui_common_mob_crowd] add ui_common_mob_temp_antikb
execute as @e[tag=ui_common_mob_crowd] run attribute @s minecraft:generic.knockback_resistance modifier add 0-0-0-0-1 "NoKB_temp" 1 add
execute as @e[tag=ui_common_mob_crowd] run attribute @s minecraft:generic.follow_range modifier add 0-0-0-0-2 "NoFollow_temp" -1024 add

#
#execute at @e[tag=ui_common_mob_crowd] run summon area_effect_cloud ~ ~ ~ {Age:4,Duration:6,Effects:[{Id:6,Amplifier:0,Duration:1,ShowIcon:false,ShowParticles:false},{Id:7,Amplifier:0,Duration:1,ShowIcon:false,ShowParticles:false}],Tags:["ui_temp_snowball"]}
execute at @e[tag=ui_common_mob_crowd] run summon minecraft:snowball ~ ~-0.31 ~ {Tags:["ui_temp_snowball"],Motion:[0.0,10.0,0.0],Item:{id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120003}},Owner:[I;0,0,0,0]}

execute as @e[tag=ui_temp_snowball] run data modify entity @s Owner set from entity @e[tag=ui_temp_target,limit=1] UUID
tag @e[tag=ui_temp_snowball] remove ui_temp_snowball
tag @e[tag=ui_common_mob_crowd] remove ui_common_mob_crowd
tag @s remove ui_temp_target

#
schedule function ui:common/mob/set_target/remove_anti_kb 2t append
