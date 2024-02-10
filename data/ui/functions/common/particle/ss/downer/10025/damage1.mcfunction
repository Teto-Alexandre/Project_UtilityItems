scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:25.0,DamageType:1,DeathMessage:18,WeaponName:'[{"text":"天眼の識","color":"white","italic":false}]',EPF:-1,BypassArmor:5000,BypassResistance:false}}
function tds:attack

particle dust 3 0 3 2.5 ~ ~0.9 ~ 1.2 1.2 1.2 0 50 force
particle firework ~ ~0.9 ~ 0.5 0.5 0.5 0.5 20 force
particle totem_of_undying ~ ~0.9 ~ 0 0 0 0.5 20 force
particle flash ~ ~0.9 ~ 0 0 0 0.5 20 force
playsound item.trident.thunder player @a ~ ~ ~ 1.5 0.8
playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1.5 0.8

effect give @s slowness 1 127 true
effect give @s weakness 15 3 true
effect give @s slowness 15 3 true
effect give @s weakness 45 1 true
effect give @s slowness 45 1 true
effect give @s glowing 60 1 true
effect give @s blindness 5 0 true
effect give @s wither 10 0 true
