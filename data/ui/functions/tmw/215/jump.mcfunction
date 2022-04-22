#=======================================================================================================

tp @s @s
summon area_effect_cloud ^ ^ ^-0.35 {Particle:"cloud",Radius:1f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:40b,Duration:2,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:10,ShowParticles:0b}],Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],Passengers:[{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Amplifier:1b,Duration:3,Id:14b,ShowParticles:0b}]}]}

scoreboard players set $motionslime ui_world 1

tag @s add ui_jumped

#=======================================================================================================
