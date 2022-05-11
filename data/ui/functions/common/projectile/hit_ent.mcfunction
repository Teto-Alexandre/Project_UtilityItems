#汎用飛び道具コモン

#ダメージ本体
    data merge storage tds: {Damage:1.00,DamageType:1,DeathMessage:9,WeaponName:"",EPF:-1,BypassArmor:false,BypassResistance:false}
    execute store result storage tds: Damage float 0.1 run scoreboard players get #temp tds_dmg
    execute store result storage tds: DamageType int 1 run scoreboard players get $temp ui_bdt
    data modify storage tds: WeaponName set from storage ui:temp Name
    execute at @s run function tds:attack
    scoreboard players operation $Return tds_dmg /= #20000 ui_num
    execute if score $temp ui_bdt matches 2 run scoreboard players operation @s tds_fire += $Return tds_dmg
    execute if score $temp ui_bdt matches 6 run scoreboard players operation @s tds_cold += $Return tds_dmg

#ノックバック
    tp @s @s
    execute facing entity @e[tag=ui_temp_target,sort=nearest,limit=1] feet run summon area_effect_cloud ^ ^ ^0.35 {Particle:"block air",Radius:0.5f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:40b,Duration:2,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:3,ShowParticles:0b}],Tags:["ui_motionslime","ui_unhurtable"],Passengers:[{id:"minecraft:slime",Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]}]}
    scoreboard players set $motionslime ui_world 1
