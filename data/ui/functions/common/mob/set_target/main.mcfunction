# @s のターゲットをリセットしてから ui_common_mob_target の攻撃対象化 AEC を出す

#
function ui:common/mob/set_target/movepoint_kill

#
execute as @e[tag=ui_common_mob_target] unless score @s ui_obj_id matches -2147483648..2147483647 run function ui:misc/act/make_obj_id
scoreboard players operation @s ui_common_mob_target_obj = @e[tag=ui_common_mob_target] ui_obj_id

#
tp @s @s
tag @s add ui_common_mob_temp_antikb
attribute @s minecraft:generic.knockback_resistance modifier add 0-0-0-0-1 "NoKB_temp" 1 add
attribute @s minecraft:generic.follow_range modifier add 0-0-0-0-2 "NoFollow_temp" -1024 add

#
#tellraw @a [{"selector":"@s"},{"text":" → "},{"selector":"@e[tag=ui_common_mob_target]"}]

#
#execute at @s run summon area_effect_cloud ~ ~ ~ {Age:4,duration:6,effects:[{id:"minecraft:instant_health",amplifier:0,duration:1,show_icon:false,show_particles:false},{id:"minecraft:instant_damage",amplifier:0,duration:1,show_icon:false,show_particles:false}],Tags:["ui_temp_aec"]}
execute at @s run summon minecraft:snowball ~ ~-0.31 ~ {Tags:["ui_temp_snowball"],Motion:[0.0,10.0,0.0],Item:{id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{CustomModelData:120003}},Owner:[I;0,0,0,0]}
execute as @e[tag=ui_temp_snowball] run data modify entity @s Owner set from entity @e[tag=ui_common_mob_target,sort=random,limit=1] UUID
tag @e[tag=ui_temp_snowball] remove ui_temp_snowball
tag @e[tag=ui_common_mob_target] remove ui_common_mob_target

#
schedule function ui:common/mob/set_target/remove_anti_kb 2t append
