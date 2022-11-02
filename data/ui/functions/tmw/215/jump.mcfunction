#=======================================================================================================

tp @s @s
summon area_effect_cloud ^ ^ ^-0.35 {Particle:"cloud",Radius:1f,Duration:6,Age:4,Effects:[{Id:25,Amplifier:40b,Duration:2,ShowParticles:0b},{Id:28,Amplifier:0b,Duration:10,ShowParticles:0b}],Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],Passengers:[{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:3,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:3,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:3,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:3,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:3,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:3,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:3,ShowParticles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:3,ShowParticles:0b}]}]}

scoreboard players set $motionslime ui_world 1

tag @s add ui_jumped

#=======================================================================================================
