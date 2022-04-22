#攻撃の種類を判別
    tag @s add tds_ui_proj
    execute if score @s ui_bdt matches 1 run tag @s add tds_e_fire
    execute if score @s ui_bdt matches 2 run tag @s add tds_e_cold
    scoreboard players reset @s ui_bdt

#ダメージ本体
    data merge storage tds: {Damage:1.00,EPF:-1,BypassArmor:false,BypassResistance:false}
    scoreboard players operation #temp tds_dmg = @e[tag=ui_proj_common,sort=nearest,limit=1] ui_dmg
    execute store result storage tds: Damage float 1 run scoreboard players get #temp tds_dmg
    execute at @s run function tds:attack

#ノックバック
    tp @s @s
    execute facing entity @e[tag=ui_temp_target,sort=nearest,limit=1] feet run summon area_effect_cloud ^ ^ ^0.35 {Particle:"block air",Radius:0.5f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:40b,Duration:2,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:3,ShowParticles:0b}],Tags:["ui_motionslime","ui_unhurtable"],Passengers:[{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]}]}
    scoreboard players set $motionslime ui_world 1
