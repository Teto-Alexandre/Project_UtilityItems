#汎用飛び道具コモン

#ダメージ本体
    data merge storage tds: {Damage:1.00,DamageType:1,DeathMessage:14,WeaponName:'{"text":"トルネード","color":"gold"}',EPF:-1,BypassArmor:false,BypassResistance:false}
    execute store result storage tds: Damage float 0.1 run scoreboard players get #temp tds_dmg
    execute at @s run function tds:attack
