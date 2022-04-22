#攻撃の種類を判別
    tag @s add tds_e_cold

#ダメージ本体
    data merge storage tds: {Damage:1.00,EPF:-1,BypassArmor:false,BypassResistance:false}
    scoreboard players set $mod ui_calc1 7
    function ui:rand
    scoreboard players operation #temp tds_dmg = #12 ui_num
    scoreboard players operation #temp tds_dmg += $rand ui_calc1
    execute store result storage tds: Damage float 1 run scoreboard players get #temp tds_dmg
    execute at @s run function tds:attack

#エフェクト
    particle block ice ~ ~1 ~ 0.7 0.7 0.7 1 30 force
    particle dust 0.5 1 1 1 ~ ~1 ~ 0.7 0.7 0.7 1 30 force
