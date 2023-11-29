#汎用火器

#ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1 1

#ダメージ本体
    data merge storage tds: {temp:{Damage:1.00,DamageType:4,DeathMessage:8,WeaponName:"",EPF:-1,BypassArmor:0,BypassResistance:false}}
    execute store result storage tds: temp.Damage float 0.1 run scoreboard players get #temp tds_dmg
    data modify storage tds: temp.WeaponName set from storage ui:temp Name
    execute at @s run function tds:attack

#ノックバック
    #tp @s @s
    #execute facing entity @e[tag=ui_temp_target,sort=nearest,limit=1] feet run summon area_effect_cloud ^ ^ ^0.35 {Particle:"cloud",Radius:1f,duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:40b,duration:2,show_particles:0b},{id:"minecraft:slow_falling",amplifier:0b,duration:3,show_particles:0b}],Tags:["ui_motionslime","ui_unhurtable"],Passengers:[{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]},{id:"minecraft:slime",Tags:["ui_motionslime","ui_unhurtable"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:3,show_particles:0b}]}]}
    #scoreboard players set $motionslime ui_world 1
