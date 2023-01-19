#凍結ダメージ

#ヒット音
    execute if score @s tds_cold matches 10.. run playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 1
    execute if score @s tds_cold matches 10.. run playsound minecraft:entity.player.hurt player @a ~ ~ ~ 1 1
    execute if score @s tds_cold matches 10.. run particle block ice ~ ~1 ~ 0.2 0.4 0.2 0 15
    
#ダメージ本体
    execute if score @s tds_cold matches 10.. run data merge storage tds: {temp:{Damage:1f,DamageType:6,DeathMessage:4,WeaponName:"",EPF:-1,BypassArmor:-1,BypassResistance:false,DisableParticle:true}}
    execute if score @s tds_cold matches 10.. run scoreboard players operation #temp tds_dmg = @s tds_cold
    execute if score @s tds_cold matches 10.. run scoreboard players operation #temp tds_dmg > $100 tds_dmg
    execute if score @s tds_cold matches 10.. store result storage tds: temp.Damage float 0.01 run scoreboard players get #temp tds_dmg
    execute if score @s tds_cold matches 10.. at @s run function tds:attack

#効果を設定（跳ぶな！）
    execute if score @s tds_cold matches 10.. run effect clear @s jump_boost
    #execute if score @s tds_cold matches 10.. run effect give @s jump_boost 2 129 true
    execute if score @s tds_cold matches 10.. run effect give @s slowness 2 5 true

#氷結カウント減少
    scoreboard players operation @s tds_cold *= $4 tds_dmg
    scoreboard players operation @s tds_cold /= $5 tds_dmg
    execute if score @s tds_cold > $max tds_cold run scoreboard players operation @s tds_cold = $max tds_cold
