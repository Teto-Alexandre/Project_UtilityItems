scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:1.00,DamageType:1,DeathMessage:9,WeaponName:'[{"text":"狼牙工房","color":"white","italic":false}]',EPF:0,BypassArmor:-1,BypassResistance:true}}
function tds:attack

playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 1 2 0
particle dust 1 1 1 1 ~ ~0.9 ~ 1 0 0 0 5 force
particle dust 1 1 1 1 ~ ~0.9 ~ 0 1 0 0 5 force
particle dust 1 1 1 1 ~ ~0.9 ~ 0 0 1 0 5 force
particle squid_ink ~ ~0.9 ~ 1 1 1 0 15 force
