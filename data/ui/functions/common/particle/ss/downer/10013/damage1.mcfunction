scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:12.00,DamageType:2,DeathMessage:3,WeaponName:'[{"text":"ヴォルカニックファイア","color":"white","italic":"false"}]',EPF:-1,BypassArmor:2000,BypassResistance:false}}
function tds:attack

particle lava ~ ~ ~ 0.5 0.5 0.5 0 10 force
particle explosion ~ ~ ~ 0 0 0 0 1 force
playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1 0.8

effect give @s blindness 1 0 true
effect give @s weakness 5 0 true

scoreboard players add @s tds_fire 25
