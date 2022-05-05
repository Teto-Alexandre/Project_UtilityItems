#ローラーで轢かれた

#ダメージ本体
    data merge storage tds: {Damage:3.50,DamageType:1,DeathMessage:9,WeaponName:"",EPF:-1,BypassArmor:false,BypassResistance:false}
    data modify storage tds: WeaponName set from storage ui:temp Name
    execute at @s run function tds:attack