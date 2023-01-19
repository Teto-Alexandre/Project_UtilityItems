scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:14.00,DamageType:1,DeathMessage:9,WeaponName:'[{"text":"猛烈な衝撃","color":"white","italic":"false"}]',EPF:-1,BypassArmor:0,BypassResistance:false}}
function tds:attack

particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.5 0.5 0.5 0 20 force
playsound entity.player.attack.knockback player @a ~ ~ ~ 1 0.8
