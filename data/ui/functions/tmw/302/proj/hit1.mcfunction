#エーテリウムガン、エーテリウム

#ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1 1

#ダメージ本体
    data merge storage tds: {Damage:1.00,DamageType:8,DeathMessage:8,WeaponName:"",EPF:-1,BypassArmor:0,BypassResistance:false}
    scoreboard players operation #temp tds_dmg *= #5 ui_num
    execute store result storage tds: Damage float 0.1 run scoreboard players get #temp tds_dmg
    data modify storage tds: WeaponName set from storage ui:temp Name
    execute at @s run function tds:attack
