scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:8.00,DamageType:1,DeathMessage:9,WeaponName:'[{"text":"微風","color":"white","italic":"false"}]',EPF:-1,BypassArmor:2000,BypassResistance:false}}
function tds:attack

effect give @s slowness 1 2 true