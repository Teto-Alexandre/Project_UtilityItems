#汎用飛び道具コモン

#ダメージ本体
    data merge storage tds: {temp:{Damage:1.00,DamageType:1,DeathMessage:9,WeaponName:"",EPF:-1,BypassArmor:0,BypassResistance:false}}
    execute store result storage tds: temp.Damage float 0.1 run scoreboard players get #temp tds_dmg
    execute store result storage tds: temp.DamageType int 1 run scoreboard players get $temp ui_bdt
    data modify storage tds: temp.WeaponName set from storage ui:temp Name
    execute at @s run function tds:attack
    scoreboard players operation $Return tds_dmg /= #2000 ui_num
    execute if score $temp ui_bdt matches 2 run scoreboard players operation @s tds_fire += $Return tds_dmg
    execute if score $temp ui_bdt matches 6 run scoreboard players operation @s tds_cold += $Return tds_dmg
