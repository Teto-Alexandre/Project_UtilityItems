scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:1.00,DamageType:6,DeathMessage:4,WeaponName:'[{"text":"氷獄の陣","color":"white","italic":"false"}]',EPF:-1,BypassArmor:2000,BypassResistance:false}}
function tds:attack

particle minecraft:dust 0.4 0.8 1 1 ~ ~ ~ 0.5 0.5 0.5 0 20 force
playsound entity.player.hurt_freeze player @a ~ ~ ~ 1 1

scoreboard players add @s tds_cold 3