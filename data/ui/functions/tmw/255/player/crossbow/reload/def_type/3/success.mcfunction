scoreboard players operation $health ui_temp -= $reloadenergy ui_temp
data merge storage tds: {temp:{Damage:1.00,DamageType:1,DeathMessage:-1,EPF:0,BypassArmor:-1,BypassResistance:true}}
execute store result storage tds: temp.Damage int 1 run scoreboard players get $reloadenergy ui_temp
function tds:attack