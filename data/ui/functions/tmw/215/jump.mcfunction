#=======================================================================================================

tp @s @s
summon area_effect_cloud ^ ^ ^-0.35 {Particle:"cloud",Radius:1f,duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:40b,duration:2,show_particles:0b},{id:"minecraft:slow_falling",amplifier:0b,duration:10,show_particles:0b}],Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],Passengers:[{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable","ui_unaccessable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]}]}

scoreboard players set $motionslime ui_world 1

tag @s add ui_jumped

#=======================================================================================================
