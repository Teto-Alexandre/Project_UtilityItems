#エレキショッカー・オート

#ヒット音
    playsound entity.generic.explode player @a ~ ~ ~ 0.6 2

#ダメージ本体
    data merge storage tds: {Damage:1.0,DamageType:10,DeathMessage:12,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    scoreboard players operation $Attacker tds_dmg = $id ui_temp
    data modify storage tds: WeaponName set value '{"text":"エレキショッカー・オート","color":"light_purple","italic":false}'
    execute at @s run function tds:attack
