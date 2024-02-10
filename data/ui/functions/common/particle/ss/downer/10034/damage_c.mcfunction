tag @s remove ui_common_particle_-10034_7_damage

scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:8.00,DamageType:1,DeathMessage:9,WeaponName:'[{"text":"クリスタルアトリエ","color":"white","italic":false}]',EPF:0,BypassArmor:-1,BypassResistance:true}}
function tds:attack

playsound entity.zombie.break_wooden_door player @a ~ ~ ~ 1 0.8 0
