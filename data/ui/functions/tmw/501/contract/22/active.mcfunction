data merge storage tds: {temp:{Damage:1024.0f,DamageType:1,DeathMessage:-1,WeaponName:"",EPF:0,BypassArmor:-1,BypassResistance:true,DisableParticle:true}}
function tds:attack
particle totem_of_undying ~ ~0.9 ~ 0 0 0 0.5 30 force
playsound item.totem.use player @a ~ ~ ~ 1 1.5 0
tag @s remove tmw_501_22_falling
tag @s remove tmw_501_22
scoreboard players remove $tmw_501_22 ui_world 1
effect clear @s resistance
effect give @s blindness 1 0 true

tellraw @s [{"text":"Contract_User","color":"yellow"},{"text":"> ","color":"gray"},{"text":"[天地の契約書]","color":"gold"},{"text":"が発動しました","color":"gray"}]
