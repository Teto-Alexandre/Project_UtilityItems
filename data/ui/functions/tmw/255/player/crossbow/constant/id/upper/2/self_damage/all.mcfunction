execute if score @s ui_tmw255_state_glitch matches 10001.. run data merge storage tds: {temp:{Damage:10.00,DamageType:1,DeathMessage:-1,WeaponName:'[{"text":"グリッチ","color":"white","italic":"false"}]',EPF:0,BypassArmor:-1,BypassResistance:true}}
execute if score @s ui_tmw255_state_glitch matches 20001.. run data merge storage tds: {temp:{Damage:100.00,DamageType:1,DeathMessage:-1,WeaponName:'[{"text":"グリッチ","color":"white","italic":"false"}]',EPF:0,BypassArmor:-1,BypassResistance:true}}
execute if score @s ui_tmw255_state_glitch matches 10001.. run function tds:attack
execute if score @s ui_tmw255_state_glitch matches 10001..30000 run particle dust 1 0 1 2 ~ ~0.9 ~ 0.5 0.5 0.5 0 5 force
execute if score @s ui_tmw255_state_glitch matches 10001..30000 run particle dust 0 0 0 2 ~ ~0.9 ~ 0.5 0.5 0.5 0 5 force
execute if score @s ui_tmw255_state_glitch matches 10001..30000 run playsound entity.player.hurt_sweet_berry_bush player @a ~ ~ ~ 1 0.8 0
execute if score @s ui_tmw255_state_glitch matches 10001..30000 run effect give @s regeneration 60 0 true
execute if score @s ui_tmw255_state_glitch matches 30001.. run particle dust 1 0 1 5 ~ ~ ~ 1 1 1 0 10 force
execute if score @s ui_tmw255_state_glitch matches 30001.. run particle dust 0 0 0 5 ~ ~ ~ 1 1 1 0 10 force
execute if score @s ui_tmw255_state_glitch matches 30001.. run playsound entity.player.splash.high_speed player @a ~ ~ ~ 5 0.8 0
execute if score @s ui_tmw255_state_glitch matches 30001.. run kill @s