#炎上ダメージ

#ヒット音
    execute if score @s tds_fire matches 10.. run playsound minecraft:entity.generic.burn player @a ~ ~ ~ 1 1
    execute if score @s tds_fire matches 10.. run playsound minecraft:entity.player.hurt player @a ~ ~ ~ 1 1
    execute if score @s tds_fire matches 10.. run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.05 10
    
#ダメージ本体
    execute if score @s tds_fire matches 10.. run data merge storage tds: {temp:{Damage:1.0f,DamageType:2,DeathMessage:3,WeaponName:"",EPF:-1,BypassArmor:-1,BypassResistance:false,DisableParticle:true}}
    execute if score @s tds_fire matches 10.. run scoreboard players operation #temp tds_dmg = @s tds_fire
    execute if score @s tds_fire matches 10.. store result storage tds: temp.Damage float 0.1 run scoreboard players get #temp tds_dmg
    execute if score @s tds_fire matches 10.. at @s run function tds:attack

#炎上カウント減少
    scoreboard players operation @s tds_fire *= $2 tds_dmg
    scoreboard players operation @s tds_fire /= $3 tds_dmg
    execute if score @s tds_fire > $max tds_fire run scoreboard players operation @s tds_fire = $max tds_fire
