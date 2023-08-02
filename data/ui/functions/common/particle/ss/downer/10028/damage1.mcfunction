scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:11.0,DamageType:4,DeathMessage:8,WeaponName:'[{"text":"金線の貫","color":"white","italic":"false"}]',EPF:-1,BypassArmor:5000,BypassResistance:false}}
execute if entity @s[tag=ui_temp_boost] run data modify storage tds: temp.Damage set value 48
execute as @e[tag=ui_temp_damage,sort=nearest,limit=1] run function tds:attack

data merge storage ui:common {input:{Mode:"create",Var:25,Var2:1}}
execute positioned ~ ~1 ~ facing entity @e[tag=ui_temp_particle_10028_position] feet positioned ^ ^ ^1 run function ui:common/particle
execute if entity @s[tag=ui_temp_boost] run data merge storage ui:common {input:{Mode:"create",Var:-10030,Num:5}}
execute if entity @s[tag=ui_temp_boost] run function ui:common/particle
particle dust 1 0.8 0 1.5 ~ ~1 ~ 0.6 0.6 0.6 0 20 force
playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 0.8 0.5 0
playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 0.5 1.2 0

effect give @s weakness 8 0 true
execute if entity @s[tag=ui_temp_boost] run effect give @s weakness 8 3 true
execute if entity @s[tag=ui_temp_boost] run effect give @s weakness 15 1 true
