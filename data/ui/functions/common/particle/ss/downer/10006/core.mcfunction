#
execute rotated ~ 0 run teleport @s ~ ~ ~ ~ ~

#
scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #6 ui_num

#
#say @e[predicate=ui:load_unhurtable,tag=!ui_temp_team]
execute if score $is ui_temp matches 1 at @s as @e[distance=..4,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10006/damage

execute if score $is_temp ui_temp matches 1 at @s run function ui:common/particle/ss/downer/10006/period

#
execute if score $is ui_temp matches 1 run summon zombie ~2 ~ ~ {Tags:["ui_temp_summoned","ui_common_particle_-10006_knockback","ui_common_mob_crowd"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false},{Id:20,Amplifier:1,Duration:2147483647,ShowParticles:false}],ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],ArmorDropChances:[0.0f,0.0f,0.0f,-10.0f],DeathLootTable:"ui:empty",Attributes:[{Name:"generic.follow_range",Base:256d},{Name:"generic.knockback_resistance",Base:256d}]}
execute if score $is ui_temp matches 1 run summon zombie ~-2 ~ ~ {Tags:["ui_temp_summoned","ui_common_particle_-10006_knockback","ui_common_mob_crowd"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false},{Id:20,Amplifier:1,Duration:2147483647,ShowParticles:false}],ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],ArmorDropChances:[0.0f,0.0f,0.0f,-10.0f],DeathLootTable:"ui:empty",Attributes:[{Name:"generic.follow_range",Base:256d},{Name:"generic.knockback_resistance",Base:256d}]}
execute if score $is ui_temp matches 1 run summon zombie ~ ~ ~2 {Tags:["ui_temp_summoned","ui_common_particle_-10006_knockback","ui_common_mob_crowd"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false},{Id:20,Amplifier:1,Duration:2147483647,ShowParticles:false}],ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],ArmorDropChances:[0.0f,0.0f,0.0f,-10.0f],DeathLootTable:"ui:empty",Attributes:[{Name:"generic.follow_range",Base:256d},{Name:"generic.knockback_resistance",Base:256d}]}
execute if score $is ui_temp matches 1 run summon zombie ~ ~ ~-2 {Tags:["ui_temp_summoned","ui_common_particle_-10006_knockback","ui_common_mob_crowd"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false},{Id:20,Amplifier:1,Duration:2147483647,ShowParticles:false}],ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],ArmorDropChances:[0.0f,0.0f,0.0f,-10.0f],DeathLootTable:"ui:empty",Attributes:[{Name:"generic.follow_range",Base:256d},{Name:"generic.knockback_resistance",Base:256d}]}
execute if score $is ui_temp matches 1 run summon zombie ~ ~ ~ {Tags:["ui_temp_summoned","ui_common_particle_-10006_knockback","ui_common_mob_crowd"],ActiveEffects:[{Id:11,Amplifier:6,Duration:2,ShowParticles:false},{Id:20,Amplifier:1,Duration:2147483647,ShowParticles:false}],ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],ArmorDropChances:[0.0f,0.0f,0.0f,-10.0f],DeathLootTable:"ui:empty",Attributes:[{Name:"generic.follow_range",Base:256d},{Name:"generic.knockback_resistance",Base:256d}]}
execute if score $is ui_temp matches 1 run scoreboard players operation @e[tag=ui_temp_summoned] ui_team = $team ui_temp
execute if score $is ui_temp matches 1 run data merge storage ui:common {input:{Mode:"set_target_mult"}}
execute if score $is ui_temp matches 1 run execute if entity @a[predicate=ui:load_unhurtable,tag=!ui_temp_team,tag=!ui_temp_summoned,sort=nearest,limit=1] as @a[predicate=ui:load_unhurtable,tag=!ui_temp_team,tag=!ui_temp_summoned,sort=nearest,limit=1] run function ui:common/mob
execute if score $is ui_temp matches 1 run execute unless entity @a[predicate=ui:load_unhurtable,tag=!ui_temp_team,tag=!ui_temp_summoned,sort=nearest,limit=1] as @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,tag=!ui_temp_summoned,sort=nearest,limit=1] run function ui:common/mob
execute if score $is ui_temp matches 1 run tag @e[tag=ui_temp_summoned] remove ui_temp_summoned
execute if score $is ui_temp matches 1 run tag @e[tag=ui_temp_pot] remove ui_temp_pot

execute if score $is ui_temp matches 2 as @e[type=zombie,tag=ui_common_particle_-10006_knockback] run attribute @s generic.knockback_resistance base set 0
execute if score $is ui_temp matches 2 run tag @e[tag=ui_common_particle_-10006_knockback] remove ui_common_particle_-10006_knockback

#
execute if score $is ui_temp matches 1 run particle block dirt ~ ~0.1 ~ 2 0.1 2 0 200 force
execute if score $is ui_temp matches 1 run playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 1

execute if score $is ui_temp matches 11 run effect give @e[type=zombie,tag=ui_temp_team,distance=..4] speed 10 1 true
execute if score $is ui_temp matches 11 run effect give @e[type=zombie,tag=ui_temp_team,distance=..4] jump_boost 10 1 true
execute if score $is ui_temp matches 11 run effect give @e[type=zombie,tag=ui_temp_team,distance=..4] strength 10 0 true
execute if score $is ui_temp matches 11 run effect give @e[type=zombie,tag=ui_temp_team,distance=..4] resistance 10 1 true
execute if score $is ui_temp matches 11 run particle witch ~ ~ ~ 1 0 1 0 40 force
execute if score $is ui_temp matches 11 run particle witch ~ ~ ~ 2 0 2 0 50 force
execute if score $is ui_temp matches 11 run playsound entity.evoker.cast_spell player @a ~ ~ ~ 1 1.5

#
execute if score $is ui_temp matches 13.. run kill @s
