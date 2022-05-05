#エレキショッカー・オート

#ヒット音
    playsound entity.generic.explode player @a ~ ~ ~ 0.6 2

#ダメージ本体
    scoreboard players set $mod ui_calc1 13
    function ui:common/rand
    execute if score $rand ui_calc1 matches 0 run data merge storage tds: {Damage:5.0,DamageType:10,DeathMessage:1,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    execute if score $rand ui_calc1 matches 1 run data merge storage tds: {Damage:5.0,DamageType:10,DeathMessage:2,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    execute if score $rand ui_calc1 matches 2 run data merge storage tds: {Damage:5.0,DamageType:10,DeathMessage:3,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    execute if score $rand ui_calc1 matches 3 run data merge storage tds: {Damage:5.0,DamageType:10,DeathMessage:4,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    execute if score $rand ui_calc1 matches 4 run data merge storage tds: {Damage:5.0,DamageType:10,DeathMessage:5,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    execute if score $rand ui_calc1 matches 5 run data merge storage tds: {Damage:5.0,DamageType:10,DeathMessage:6,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    execute if score $rand ui_calc1 matches 6 run data merge storage tds: {Damage:5.0,DamageType:10,DeathMessage:7,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    execute if score $rand ui_calc1 matches 7 run data merge storage tds: {Damage:5.0,DamageType:10,DeathMessage:8,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    execute if score $rand ui_calc1 matches 8 run data merge storage tds: {Damage:5.0,DamageType:10,DeathMessage:9,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    execute if score $rand ui_calc1 matches 9 run data merge storage tds: {Damage:5.0,DamageType:10,DeathMessage:10,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    execute if score $rand ui_calc1 matches 10 run data merge storage tds: {Damage:5.0,DamageType:10,DeathMessage:11,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    execute if score $rand ui_calc1 matches 11 run data merge storage tds: {Damage:5.0,DamageType:10,DeathMessage:12,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    execute if score $rand ui_calc1 matches 12 run data merge storage tds: {Damage:5.0,DamageType:10,DeathMessage:13,WeaponName:"",EPF:-1,BypassArmor:true,BypassResistance:false}
    scoreboard players operation $Attacker tds_dmg = $id ui_temp
    data modify storage tds: WeaponName set value '{"text":"エレキショッカー・オート","color":"light_purple","italic":false}'
    execute at @s run function tds:attack
