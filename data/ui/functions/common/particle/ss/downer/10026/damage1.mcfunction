scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:24.0,DamageType:4,DeathMessage:8,WeaponName:'[{"text":"金線の軌","color":"white","italic":"false"}]',EPF:-1,BypassArmor:5000,BypassResistance:false}}
function tds:attack

data merge storage ui:common {input:{Mode:"create",Var:25,Var2:1}}
execute positioned ~ ~1 ~ facing entity @e[tag=ui_temp_particle_10026_position] feet positioned ^ ^ ^1 run function ui:common/particle
particle firework ~ ~1 ~ 0.5 0.5 0.5 0.5 30 force
particle dust 1 0.8 0 2 ~ ~1 ~ 0.6 0.6 0.6 0 20 force
particle flash ~ ~1 ~ 0 0 0 0 2 force
playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 0.5 0
playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 1 1.2 0

effect give @s weakness 10 1 true
