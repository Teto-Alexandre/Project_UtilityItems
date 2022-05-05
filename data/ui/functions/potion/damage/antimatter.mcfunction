#抹消系攻撃を喰らったときに起動　防御無視50ダメージを受ける

#ヒット音
    playsound minecraft:entity.elder_guardian.death neutral @a ~ ~ ~ 1 2

#ダメージ本体
    data merge storage tds: {Damage:50.00,DamageType:-1,DeathMessage:7,WeaponName:"",EPF:0,BypassArmor:true,BypassResistance:false}
    execute at @s run function tds:attack
