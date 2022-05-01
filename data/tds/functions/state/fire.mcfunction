#炎上ダメージ

#ヒット音
    playsound minecraft:entity.generic.burn player @a ~ ~ ~ 1 1
    playsound minecraft:entity.player.hurt player @a ~ ~ ~ 1 1
    particle flame ~ ~1 ~ 0.5 0.5 0.5 0.05 10
    
#ダメージ本体
    data merge storage tds: {Damage:1.0f,DamageType:2,DeathMessage:1,EPF:-1,BypassArmor:true,BypassResistance:false,DisableParticle:true}
    scoreboard players operation #temp tds_dmg = @s tds_fire
    execute store result storage tds: Damage float 1 run scoreboard players get #temp tds_dmg
    execute at @s run function tds:attack

#炎上カウント減少
    scoreboard players operation @s tds_fire *= $2 tds_dmg
    scoreboard players operation @s tds_fire /= $3 tds_dmg
    execute if score @s tds_fire > $max tds_fire run scoreboard players operation @s tds_fire = $max tds_fire
