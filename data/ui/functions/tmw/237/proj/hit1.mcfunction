# Lib
    #scoreboard players operation $Knockback tds_dmg = @s ui_kb

# ダメージ本体
    data merge storage tds: {Damage:1.00,DamageType:8,DeathMessage:8,WeaponName:"",EPF:-1,BypassArmor:false,BypassResistance:false}
    execute store result storage tds: Damage float 0.1 run scoreboard players get #temp tds_dmg
    data modify storage tds: WeaponName set from storage ui:temp Name
    execute at @s run function tds:attack
