scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:12.00,DamageType:1,DeathMessage:9,WeaponName:'[{"text":"風塵","color":"white","italic":"false"}]',EPF:-1,BypassArmor:2000,BypassResistance:false}}
function tds:attack

effect give @s blindness 1 0 true
effect give @s slowness 1 3 true