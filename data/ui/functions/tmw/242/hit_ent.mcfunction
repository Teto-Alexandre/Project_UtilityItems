# 汎用飛び道具コモン

# ダメージ本体
    data merge storage tds: {Damage:1.00,DamageType:1,DeathMessage:9,WeaponName:"",EPF:-1,BypassArmor:false,BypassResistance:false}
    execute store result storage tds: Damage float 0.1 run scoreboard players get $damage ui_temp
    execute store result storage tds: DamageType int 1 run scoreboard players get $damage_type ui_temp
    data modify storage tds: WeaponName set from storage ui:temp Name
    execute at @s run function tds:attack
    scoreboard players operation $Return tds_dmg /= #20000 ui_num
    execute if score $temp ui_bdt matches 2 run scoreboard players operation @s tds_fire += $Return tds_dmg
    execute if score $temp ui_bdt matches 6 run scoreboard players operation @s tds_cold += $Return tds_dmg
