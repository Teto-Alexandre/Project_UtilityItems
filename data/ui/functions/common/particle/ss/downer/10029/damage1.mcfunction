scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:5.5,DamageType:4,DeathMessage:8,WeaponName:'[{"text":"金線の随","color":"white","italic":"false"}]',EPF:-1,BypassArmor:5000,BypassResistance:false}}
execute if entity @s[tag=ui_temp_boost] run data modify storage tds: temp.Damage set value 8
execute as @e[tag=ui_temp_target,sort=nearest,limit=1] run function tds:attack

data merge storage ui:common {input:{Mode:"create",Var:25,Var2:1}}
execute if predicate ui:percentage/40 positioned ~ ~1 ~ facing entity @e[tag=ui_temp_particle_10029_position] feet positioned ^ ^ ^1 run function ui:common/particle
particle firework ~ ~1 ~ 0.5 0.5 0.5 0.5 10 force
particle dust 1 0.8 0 2 ~ ~1 ~ 0.6 0.6 0.6 0 7 force
particle flash ~ ~1 ~ 0 0 0 0 1 force
execute if predicate ui:percentage/40 run playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 0.5 0
execute if predicate ui:percentage/40 run playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 1 1.2 0

effect give @s weakness 7 1 true
execute if entity @s[tag=ui_temp_boost] run effect give @s weakness 7 3 true
execute if entity @s[tag=ui_temp_boost] run effect give @s weakness 12 1 true
