scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:100.00,DamageType:2,DeathMessage:16,WeaponName:'[{"text":"メテオストライク","color":"white","italic":"false"}]',EPF:-1,BypassArmor:2000,BypassResistance:false}}
function tds:attack

particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0 40 force
playsound entity.player.hurt player @a ~ ~ ~ 1 1
playsound entity.player.hurt player @a ~ ~ ~ 1 0.5
