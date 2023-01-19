scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:7.00,DamageType:2,DeathMessage:3,WeaponName:'[{"text":"フレイムサークル","color":"white","italic":"false"}]',EPF:-1,BypassArmor:2000,BypassResistance:false}}
function tds:attack

particle explosion ~ ~ ~ 0 0 0 0 1 force
particle lava ~ ~ ~ 0.5 0.5 0.5 0 10 force
particle flame ~ ~ ~ 0.5 0.5 0.5 0 10 force
playsound entity.generic.explode player @a ~ ~ ~ 1 0.8