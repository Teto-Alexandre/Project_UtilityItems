#凍結ダメージ

#ヒット音
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 1
    playsound minecraft:entity.player.hurt player @a ~ ~ ~ 1 1
    particle block ice ~ ~1 ~ 0.2 0.4 0.2 0 15
    
#ダメージ本体
    data merge storage tds: {Damage:1.0f,DamageType:6,DeathMessage:4,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false,DisableParticle:true}
    scoreboard players operation #temp tds_dmg = @s tds_cold
    scoreboard players operation #temp tds_dmg > $10 tds_dmg
    execute store result storage tds: Damage float 0.1 run scoreboard players get #temp tds_dmg
    execute at @s run function tds:attack

#効果を設定（跳ぶな！）
    effect clear @s jump_boost
    effect give @s jump_boost 2 129 true
    effect give @s slowness 2 5 true

#氷結カウント減少
    scoreboard players operation @s tds_cold *= $9 tds_dmg
    scoreboard players operation @s tds_cold /= $10 tds_dmg
    execute if score @s tds_cold > $max tds_cold run scoreboard players operation @s tds_cold = $max tds_cold
