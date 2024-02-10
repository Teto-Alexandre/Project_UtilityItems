tag @s remove ui_common_particle_-10034_3_damage

scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:15.00,DamageType:1,DeathMessage:9,WeaponName:'[{"text":"ムク工房","color":"white","italic":false}]',EPF:-1,BypassArmor:0,BypassResistance:false}}
#execute if score $boost ui_temp matches 1 run data modify storage tds: temp.BypassArmor set value -1
function tds:attack
data merge storage tds: {temp:{Damage:3.00,DamageType:1,DeathMessage:9,WeaponName:'[{"text":"ムク工房","color":"white","italic":false}]',EPF:0,BypassArmor:-1,BypassResistance:true}}
function tds:attack

playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 1.5 1.8 0
particle dust 1 1 1 1 ~ ~0.9 ~ 1 0 0 0 20 force
particle dust 1 1 1 1 ~ ~0.9 ~ 0 1 0 0 20 force
particle dust 1 1 1 1 ~ ~0.9 ~ 0 0 1 0 20 force
particle squid_ink ~ ~0.9 ~ 1 1 1 0 80 force
