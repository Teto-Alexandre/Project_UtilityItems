#酸ダメージ

#ヒット音
    execute if score @s tds_acid matches 20.. run playsound entity.player.hurt_drown player @a ~ ~ ~ 1 1.5
    execute if score @s tds_acid matches 20.. run playsound minecraft:entity.player.hurt player @a ~ ~ ~ 1 1
    execute if score @s tds_acid matches 20.. run particle block yellow_terracotta ~ ~1 ~ 0.5 0.5 0.5 0 10
    execute if score @s tds_acid matches 20.. run particle dust 1 1 0.5 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 10
    
#ダメージ本体
    execute if score @s tds_acid matches 20.. run data merge storage tds: {temp:{Damage:1.0f,DamageType:1,DeathMessage:2,WeaponName:"",EPF:-1,BypassArmor:-1,BypassResistance:false,DisableParticle:true}}
    execute if score @s tds_acid matches 20.. run scoreboard players operation #temp tds_dmg = @s tds_acid
    execute if score @s tds_acid matches 20.. run scoreboard players operation #temp tds_dmg > $25 tds_dmg
    execute if score @s tds_acid matches 20.. store result storage tds: temp.Damage float 0.02 run scoreboard players get #temp tds_dmg
    execute if score @s tds_acid matches 20.. at @s run function tds:attack

# 耐久度ダメージ
    data merge storage ui:common {input:{Damage:1}}
    scoreboard players operation $armor_damage tds_acid = @s tds_acid
    scoreboard players operation $armor_damage tds_acid /= #50 ui_num
    scoreboard players operation $armor_damage tds_acid > #1 ui_num
    execute store result storage ui:common input.Damage int 1 run scoreboard players get $armor_damage tds_acid
    execute at @s run function ui:common/armor_damage/

#炎上カウント減少
    scoreboard players operation @s tds_acid *= $9 tds_dmg
    scoreboard players operation @s tds_acid /= $10 tds_dmg
    execute if score @s tds_acid > $max tds_acid run scoreboard players operation @s tds_acid = $max tds_acid
