scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:40.00,DamageType:1,DeathMessage:16,WeaponName:'[{"text":"メテオストライク","color":"white","italic":"false"}]',EPF:-1,BypassArmor:0,BypassResistance:false}}
function tds:attack

particle minecraft:crit ~ ~ ~ 0.5 0.5 0.5 0 40 force
particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 5 force
playsound entity.player.hurt player @a ~ ~ ~ 1 1
playsound entity.player.hurt player @a ~ ~ ~ 1 0.5
playsound entity.generic.explode player @a ~ ~ ~ 1 0.5
