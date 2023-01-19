scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:3.00,DamageType:11,DeathMessage:18,WeaponName:'[{"text":"ライズゾンビ","color":"white","italic":"false"}]',EPF:-1,BypassArmor:2000,BypassResistance:false}}
function tds:attack

particle minecraft:dust 0 0.8 0 1 ~ ~ ~ 0.5 0.5 0.5 0 10 force
playsound entity.player.hurt player @a ~ ~ ~ 1 1