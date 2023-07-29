scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:4.0,DamageType:1,DeathMessage:18,WeaponName:'[{"text":"天眼呪","color":"white","italic":"false"}]',EPF:-1,BypassArmor:5000,BypassResistance:false}}
function tds:attack

particle dust 3 0 0 2 ~ ~0.9 ~ 1 1 1 0 20 force
particle firework ~ ~0.9 ~ 0.5 0.5 0.5 0.5 10 force
particle totem_of_undying ~ ~0.9 ~ 0 0 0 0.5 10 force
playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1.5 0.8
playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1.2

effect give @s weakness 15 1 true
effect give @s slowness 15 1 true
effect give @s glowing 30 1 true
