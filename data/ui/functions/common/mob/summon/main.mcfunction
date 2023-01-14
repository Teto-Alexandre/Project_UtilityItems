# @s のターゲットをリセットしてから ui_common_mob_target の攻撃対象化 AEC を出す

#
summon zombie ~ ~ ~ {Tags:["ui_temp_summoned","ui_common_particle_-10006_knockback"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false},{Id:20,Amplifier:1,Duration:2147483647,ShowParticles:false}],ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],ArmorDropChances:[0.0f,0.0f,0.0f,-10.0f],DeathLootTable:"ui:empty",Attributes:[{Name:"generic.follow_range",Base:256d},{Name:"generic.knockback_resistance",Base:256d}]}
scoreboard players operation @e[tag=ui_temp_summoned] ui_team = $team ui_temp
summon area_effect_cloud ~ ~ ~ {Age:4,Duration:6,Effects:[{Id:6,Amplifier:0,Duration:1,ShowIcon:false,ShowParticles:false},{Id:7,Amplifier:0,Duration:1,ShowIcon:false,ShowParticles:false}],Tags:["ui_temp_pot"]}
execute as @e[tag=ui_temp_pot] run data modify entity @s Owner set from entity @a[predicate=ui:load_unhurtable,tag=!ui_temp_team,tag=!ui_temp_summoned,sort=nearest,limit=1] UUID
tag @e[tag=ui_temp_summoned] remove ui_temp_summoned
tag @e[tag=ui_temp_pot] remove ui_temp_pot
