scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:7.00,DamageType:1,DeathMessage:9,WeaponName:'[{"text":"狼牙工房","color":"white","italic":"false"}]',EPF:-1,BypassArmor:0,BypassResistance:false}}
#execute if score $boost ui_temp matches 1 run data modify storage tds: temp.BypassArmor set value -1
function tds:attack

playsound ui:sword player @a ~ ~ ~ 1 2
particle dust_color_transition 1 1 1 1 0 0 0 ~ ~0.9 ~ 0.5 0.5 0.5 0 20 force
particle block iron_block ~ ~0.9 ~ 0.5 0.5 0.5 0 20 force

tag @s add ui_common_particle_-10034_6_damage