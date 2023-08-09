scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:22.00,DamageType:11,DeathMessage:18,WeaponName:'[{"text":"失楽園","color":"white","italic":"false"}]',EPF:-1,BypassArmor:0,BypassResistance:false}}
execute if score $boost ui_temp matches 1 run data modify storage tds: temp.BypassArmor set value -1
function tds:attack

effect give @a[tag=ui_temp_player] regeneration 8 3 true

particle dust 0.6 0 0 1.5 ~ ~0.9 ~ 0.5 0.5 0.5 0 15 force
particle block nether_wart ~ ~0.9 ~ 0.5 0.5 0.5 0 15 force