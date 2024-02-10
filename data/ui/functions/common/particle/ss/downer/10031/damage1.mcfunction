scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:32.0,DamageType:4,DeathMessage:8,WeaponName:'[{"text":"金線の迅","color":"white","italic":false}]',EPF:-1,BypassArmor:5000,BypassResistance:false}}
execute as @e[tag=ui_temp_damage,sort=nearest,limit=1] run function tds:attack

data merge storage ui:common {input:{Mode:"create",Var:25,Var2:1}}
execute positioned ~ ~1 ~ facing entity @e[tag=ui_temp_particle_10031_position] feet positioned ^ ^ ^1 run function ui:common/particle
data merge storage ui:common {input:{Mode:"create",Var:-10030,Num:4}}
function ui:common/particle
scoreboard players reset $id_temp ui_temp
particle firework ~ ~1 ~ 0.5 0.5 0.5 0.5 30 force
particle dust 1 0.8 0 2 ~ ~1 ~ 0.6 0.6 0.6 0 20 force
particle flash ~ ~1 ~ 0 0 0 0 1 force
playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 0.5 0
playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 1 1.2 0

effect give @e[tag=ui_temp_damage,sort=nearest,limit=1] weakness 10 1 true
