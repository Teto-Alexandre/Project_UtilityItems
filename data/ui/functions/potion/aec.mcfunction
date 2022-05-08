#> ui:potion/aec
#
# AECの「幸運の値」を参照して「出現0.5秒後」実行する
#
# 原則killして下さい
#
# @public

execute store result score @s ui_calc1 run data get entity @s Effects.[{Id:26b}].Amplifier 1

# ===== 以下 残留ポーションの追加効果 =====

execute at @e[scores={ui_calc1=2}] run summon minecraft:lightning_bolt ~ ~ ~

execute at @e[scores={ui_calc1=12}] run summon minecraft:tnt ~ ~ ~
execute at @e[scores={ui_calc1=12}] run summon minecraft:tnt ~ ~ ~

execute at @e[scores={ui_calc1=13}] store result score $temp ui_temp run gamerule mobGriefing
execute at @e[scores={ui_calc1=13}] run effect give @a[distance=..4] minecraft:slowness 10 5 true
execute at @e[scores={ui_calc1=13}] run effect give @a[distance=..4] minecraft:jump_boost 10 129 true
execute at @e[scores={ui_calc1=13}] if score $temp ui_temp matches 1 run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:packed_ice hollow
execute at @e[scores={ui_calc1=13}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.5 0
execute at @e[scores={ui_calc1=13}] run particle minecraft:falling_dust snow ~ ~1 ~ 2 1 2 1 50 force
execute at @e[scores={ui_calc1=13}] run particle minecraft:falling_dust ice ~ ~1 ~ 2 1 2 1 50 force

execute at @e[scores={ui_calc1=14}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_luck14"]}
execute at @e[scores={ui_calc1=14}] run tag @e[distance=..5,type=!#ui:notmob,tag=!ui_unaccessable] add ui_kb
execute at @e[scores={ui_calc1=14}] as @e[tag=ui_kb] at @s run tp @s @s
execute at @e[scores={ui_calc1=14}] as @e[tag=ui_kb] at @s facing entity @e[scores={ui_calc1=14}] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^0.35 {Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],Passengers:[{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]}]}
execute at @e[scores={ui_calc1=14}] run effect give @e[tag=ui_kb] slow_falling 1 0 true
execute at @e[scores={ui_calc1=14}] run effect give @e[tag=ui_kb] levitation 1 60 true
execute at @e[scores={ui_calc1=14}] run kill @e[tag=ui_luck14]
execute at @e[scores={ui_calc1=14}] run scoreboard players set $motionslime ui_world 1

execute at @e[scores={ui_calc1=25}] run summon minecraft:experience_orb ~ ~ ~ {Value:-5s}
execute at @e[scores={ui_calc1=25}] run summon minecraft:experience_orb ~1 ~ ~ {Value:-5s}
execute at @e[scores={ui_calc1=25}] run summon minecraft:experience_orb ~-1 ~ ~ {Value:-5s}
execute at @e[scores={ui_calc1=25}] run summon minecraft:experience_orb ~ ~ ~1 {Value:-5s}
execute at @e[scores={ui_calc1=25}] run summon minecraft:experience_orb ~ ~ ~-1 {Value:-5s}
execute at @e[scores={ui_calc1=25}] run summon minecraft:experience_orb ~1 ~ ~1 {Value:-5s}
execute at @e[scores={ui_calc1=25}] run summon minecraft:experience_orb ~-1 ~ ~-1 {Value:-5s}
execute at @e[scores={ui_calc1=25}] run summon minecraft:experience_orb ~1 ~ ~-1 {Value:-5s}
execute at @e[scores={ui_calc1=25}] run summon minecraft:experience_orb ~-1 ~ ~1 {Value:-5s}
execute at @e[scores={ui_calc1=25}] run summon minecraft:experience_orb ~2 ~ ~ {Value:-5s}
execute at @e[scores={ui_calc1=25}] run summon minecraft:experience_orb ~-2 ~ ~ {Value:-5s}
execute at @e[scores={ui_calc1=25}] run summon minecraft:experience_orb ~ ~ ~2 {Value:-5s}
execute at @e[scores={ui_calc1=25}] run summon minecraft:experience_orb ~ ~ ~-2 {Value:-5s}


kill @s[scores={ui_calc1=2}]
kill @s[scores={ui_calc1=12..14}]
kill @s[scores={ui_calc1=25}]

#テスト用
#say 残留ポーションエフェクト発動！