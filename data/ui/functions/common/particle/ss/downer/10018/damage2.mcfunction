scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:3.00,DamageType:2,DeathMessage:3,WeaponName:'[{"text":"メテオストライク","color":"white","italic":"false"}]',EPF:-1,BypassArmor:2000,BypassResistance:false}}
function tds:attack

particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0 40 force
playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1 0.8

scoreboard players add @s tds_fire 10