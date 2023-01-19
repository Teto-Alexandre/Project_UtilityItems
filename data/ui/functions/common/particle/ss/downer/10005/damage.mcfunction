scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:1.50,DamageType:2,DeathMessage:3,WeaponName:'[{"text":"フレイムサークル","color":"white","italic":"false"}]',EPF:-1,BypassArmor:2000,BypassResistance:false}}
function tds:attack

particle lava ~ ~ ~ 0.5 0.5 0.5 0 5 force
particle flame ~ ~ ~ 0.5 0.5 0.5 0 5 force
playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1 0.8