#抹消系攻撃を喰らったときに起動　防御無視50ダメージを受ける

#攻撃の種類を判別
    tag @s add tds_antimatter

#ヒット音
    playsound minecraft:entity.elder_guardian.death neutral @a ~ ~ ~ 1 2

#ダメージ本体
    data merge storage tds: {Damage:50.00,EPF:0,BypassArmor:true,BypassResistance:false}
    execute at @s run function tds:attack
