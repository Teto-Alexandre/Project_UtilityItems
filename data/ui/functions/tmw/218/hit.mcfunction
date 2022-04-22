#攻撃の種類を判別
    tag @s add tds_ui_proj

#ヒット音
    playsound entity.generic.explode player @a ~ ~ ~ 0.6 2

#ダメージ本体
    data merge storage tds: {Damage:1.0,EPF:-1,BypassArmor:true,BypassResistance:false}
    execute at @s run function tds:attack
