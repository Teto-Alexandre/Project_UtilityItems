scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:12.00,DamageType:1,DeathMessage:9,WeaponName:'[{"text":"クリスタルアトリエ","color":"white","italic":"false"}]',EPF:-1,BypassArmor:0,BypassResistance:false}}
#execute if score $boost ui_temp matches 1 run data modify storage tds: temp.BypassArmor set value -1
function tds:attack

playsound ui:sword player @a ~ ~ ~ 1 1
particle dust 1 1 1 1 ~ ~0.9 ~ 0 1 0 0 20 force

tag @s add ui_common_particle_-10034_7_damage