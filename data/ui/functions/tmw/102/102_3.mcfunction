#凍て付いた博愛、氷棘

#ヒット音
    playsound minecraft:item.totem.use player @a ~ ~ ~ 2 1.8 0

#ダメージ本体
    data merge storage tds: {Damage:1.00,DamageType:6,DeathMessage:4,WeaponName:"",EPF:-1,BypassArmor:0,BypassResistance:false}
    scoreboard players set $mod ui_calc1 6
    function ui:common/rand
    scoreboard players operation #temp tds_dmg = #10 ui_num
    scoreboard players operation #temp tds_dmg += $rand ui_calc1
    execute store result storage tds: Damage float 1 run scoreboard players get #temp tds_dmg
    execute at @s run function tds:attack
    scoreboard players operation $Return tds_dmg /= #2000 ui_num
    scoreboard players operation @s tds_cold += $Return tds_dmg

#エフェクト
    particle block ice ~ ~1 ~ 0.7 0.7 0.7 1 30 force
    particle dust 0.5 1 1 1 ~ ~1 ~ 0.7 0.7 0.7 1 30 force
